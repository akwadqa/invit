import 'package:invit/features/auth/signUp/data/repositories/signUp_repository.dart';
import 'package:invit/features/auth/signUp/domain/model/signUp_params.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'signUp_controller.g.dart';

@riverpod
class SignUpController extends _$SignUpController {
  @override
  FutureOr<void> build() => null;

  Future<void> signUp(SignupParams params) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final repo = ref.read(signupRepositoryProvider);
      await repo.signUp(params);
    });
  }
}
