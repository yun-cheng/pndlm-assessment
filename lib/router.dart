import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pndlm_assessment/constants/route.dart';
import 'package:pndlm_assessment/providers/user_provider.dart';
import 'package:pndlm_assessment/ui/screens/clocks/clocks_screen.dart';
import 'package:pndlm_assessment/ui/screens/login/login_screen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

@Riverpod(keepAlive: true)
GoRouter router(Ref ref) {
  final user = ref.watch(userNotifierProvider);

  return GoRouter(
    initialLocation: RouteConstants.login,
    routes: [
      GoRoute(
        path: RouteConstants.login,
        builder: (context, state) => LoginScreen(),
      ),
      GoRoute(
        path: RouteConstants.clocks,
        builder: (context, state) => ClocksScreen(),
      ),
    ],
    redirect: (context, state) {
      final isLoggedIn = user != null;
      final isLoginPath = state.uri.path == RouteConstants.login;
      final isClocksPath = state.uri.path == RouteConstants.clocks;

      if (!isLoggedIn) return isLoginPath ? null : RouteConstants.login;

      return isClocksPath ? null : RouteConstants.clocks;
    },
  );
}
