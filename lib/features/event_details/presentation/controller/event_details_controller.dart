import 'package:invit/features/event/domain/model/event_model/event_model.dart';
import 'package:invit/features/event_details/data/repositories/event_details_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'event_details_controller.g.dart';

@riverpod
class EventDetailsController extends _$EventDetailsController {


  @override
  FutureOr<EventModel> build({required String ocassionId}) async {
    return await getEventDetails( ocassionId: ocassionId);
  }

Future<EventModel> getEventDetails({required String ocassionId}) async {
  state = const AsyncLoading();
  try {
    final repo = ref.read(eventDetailsRepositoryProvider);
    final data = await repo.getEventDetails(ocassionId);
    state = AsyncData(data.data!);
    return data.data!;
  } catch (e, st) {
    state = AsyncError(e, st);
    rethrow;
  }
}
}
