import 'package:invit/features/event/domain/model/event_model/event_model.dart';
import 'package:invit/features/guest/data/repository/guest_repository.dart';
import 'package:invit/features/guest/domain/model/add_guest_response/add_guest_response.dart';
import 'package:invit/features/guest/domain/model/delete_guest_response/delete_guest_response.dart';
import 'package:invit/features/guest/domain/model/update_guest_list_response/update_guest_list_response.dart';
import 'package:invit/features/guest/presentation/controller/guest_ui_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'guest_ui_controller.g.dart';

@riverpod
class GuestUiController extends _$GuestUiController {
  @override
  FutureOr<GuestUiState> build() {
    return GuestUiState.init();
  }

  void changIndex(int index) {
    state = AsyncData(state.value!.copyWith(index: index));
  }

  Future<AddGuestResponse?> getTemplates(String occasionId) async {
    try {
      state =
          AsyncData(state.value!.copyWith(addGuestResponse: AsyncLoading()));
      final repo = ref.read(guestRepositoryProvider);
      final response = await repo.addGuest(occasionId, []);

      if (response.hasFailed) {
        state = AsyncData(state.value!.copyWith(
            addGuestResponse: AsyncError(
          response.message ?? '',
          StackTrace.fromString(response.message ?? ''),
        )));
        return null;
      }

      state = AsyncData(
        state.value!.copyWith(
          addGuestResponse: AsyncData(response.data!),
        ),
      );
      return response.data;
    } catch (e, st) {
      state =
          AsyncData(state.value!.copyWith(addGuestResponse: AsyncError(e, st)));
      return null;
    }
  }

  Future<DeleteGuestsResponse?> deleteGuests(String inviteeId) async {
    try {
      state = AsyncData(
          state.value!.copyWith(deleteGuestsResponse: AsyncLoading()));
      final repo = ref.read(guestRepositoryProvider);
      final response = await repo.deleteGuest([inviteeId]);

      if (response.hasFailed) {
        state = AsyncData(state.value!.copyWith(
            deleteGuestsResponse: AsyncError(
          response.message ?? '',
          StackTrace.fromString(response.message ?? ''),
        )));
        return null;
      }

      state = AsyncData(
        state.value!.copyWith(
          deleteGuestsResponse: AsyncData(response.data!),
        ),
      );
      return response.data;
    } catch (e, st) {
      state = AsyncData(
          state.value!.copyWith(deleteGuestsResponse: AsyncError(e, st)));
      return null;
    }
  }

  Future<UpdateGuestListResponse?> updateGuestList({
    required String occasionId,
    required List<GuestModel> guests,
  }) async {
    try {
      state = AsyncData(
          state.value!.copyWith(updateGuestListResponse: AsyncLoading()));
      final repo = ref.read(guestRepositoryProvider);
      final response =
          await repo.updateGuestList(occasionId: occasionId, guests: guests);

      if (response.hasFailed) {
        state = AsyncData(state.value!.copyWith(
            updateGuestListResponse: AsyncError(
          response.message ?? '',
          StackTrace.fromString(response.message ?? ''),
        )));
        return null;
      }

      state = AsyncData(
        state.value!.copyWith(
          updateGuestListResponse: AsyncData(response.data!),
        ),
      );
      return response.data;
    } catch (e, st) {
      state = AsyncData(
          state.value!.copyWith(updateGuestListResponse: AsyncError(e, st)));
      return null;
    }
  }
}
