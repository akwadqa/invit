import 'package:invit/features/auth/signIn/data/repositories/sign_in_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_in_controller.g.dart';
@riverpod
class SignInController extends _$SignInController {
  @override
  FutureOr<void> build() => null;

  Future<void> signIn(String phone) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final repo = ref.read(signInRepositoryProvider);
  await  repo.signIn(phone);
    });
  }

}