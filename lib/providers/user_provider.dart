import 'package:pndlm_assessment/models/user.dart';
import 'package:pndlm_assessment/services/local_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_provider.g.dart';

@Riverpod(keepAlive: true)
class UserNotifier extends _$UserNotifier {
  @override
  User? build() {
    loadUser();
    return null;
  }

  Future<void> updateUser(User user) async {
    state = user;
    final prefs = await ref.read(sharedPreferencesProvider.future);
    await prefs.setString('user', user.toJsonString());
  }

  Future<void> loadUser() async {
    final prefs = await ref.read(sharedPreferencesProvider.future);
    final jsonString = prefs.getString('user');
    if (jsonString != null) {
      state = User.fromJsonString(jsonString);
    }
  }

  Future<void> clearUser() async {
    state = null;
    final prefs = await ref.read(sharedPreferencesProvider.future);
    await prefs.remove('user');
  }
}
