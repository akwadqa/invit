import 'dart:ffi';

import 'package:invit/features/home/domain/model/home/home_model.dart';
import 'package:invit/features/settings/data/repositories/settings_repository.dart';
import 'package:invit/features/settings/presentation/controller/settings_state.dart';
import 'package:invit/src/infrastructure/storage/local_storage_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'settings_controller.g.dart';

@riverpod
class SettingsController extends _$SettingsController {
  @override
  FutureOr<SettingsState> build() async {
    return const SettingsState(notificationState: true);
  }
  // Future<HomeModel> getSettingsData() async {
  //   state = const AsyncLoading();

  //   final result = await AsyncValue.guard(() async {
  //     final repo = ref.read(settingsRepositoryProvider);
  //     return await repo.getSettingsData(page: 1);
  //   });
  //   // (error) => AsyncError(error, StackTrace.current);

  //   // state = result;

  //   return result.value!;
  // }

  void onNotificationChange(bool value) {
    final current = state.value;
    if (current == null) return;

    state = AsyncData(
      current.copyWith(notificationState: value),
    );
  }

  // 🔴 Delete Account
  Future<void> deleteAccount() async {
    final current = state.value;
    if (current == null) return;

    state = AsyncData(
      current.copyWith(deleteAccountState: const AsyncLoading()),
    );

    final result = await AsyncValue.guard(() async {
      final repo = ref.read(settingsRepositoryProvider);
      await repo.deleteAccount();
    });

    state = AsyncData(
      current.copyWith(deleteAccountState: result),
    );
  }

  // 🔵 Logout
  Future<void> logout() async {
    final current = state.value;
    if (current == null) return;
    final storage = ref.read(localStorageServiceProvider);
    await storage.logout();
    state = AsyncData(
      current.copyWith(logoutState: const AsyncLoading()),
    );

    await Future.delayed(Duration(seconds: 2));
    // final result = await AsyncValue.guard(() async {
    //   final repo = ref.read(settingsRepositoryProvider);
    //   await repo.logout();
    // });

    state = AsyncData(
      current.copyWith(logoutState: AsyncData(Null)),
    );
  }
}
