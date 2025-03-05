import 'package:pndlm_assessment/models/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_provider.g.dart';

@Riverpod(keepAlive: true)
class UserNotifier extends _$UserNotifier {
  @override
  User? build() {
    return null;
  }

  void updateUser(User user) {
    state = user;
  }
}
