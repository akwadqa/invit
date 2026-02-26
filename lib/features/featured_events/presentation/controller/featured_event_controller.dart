import 'package:invit/features/event/domain/model/event_model/event_model.dart';
import 'package:invit/features/featured_events/data/repositories/featured_events_repository.dart';
import 'package:invit/features/featured_events/domain/model/all_events_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'featured_event_controller.g.dart';

@riverpod
class FeaturedEventController extends _$FeaturedEventController {
  List<EventModel> _events = [];
  int _currentPage = 1;
  int _totalPages = 1;

  @override
  FutureOr<AllEventsModel> build({String? eventType}) async {
    return await fetchAllEvents(page: 1, eventType: eventType);
  }

  Future<AllEventsModel> fetchAllEvents(
      {required int page, bool showLoading = true, String? eventType}) async {
    try {
      if (showLoading) state = const AsyncLoading();

      final repo = ref.read(featuredEventsRepositoryProvider);
      final response =
          await repo.getAllEvents(page: page, eventType: eventType);

      // افترض أن الدالة ترجع كائن يحتوي على:
      // data: List<AllEventsModel>
      // pagination: {...}
      _currentPage = response.pagination!.currentPage;
      _totalPages = response.pagination!.totalPages;

      if (page == 1) {
        _events = List.from(response.data!.events);
      } else {
        _events.addAll(response.data!.events);
      }
      final responseModel = AllEventsModel(
          events: _events, guestReport: response.data!.guestReport);

      state = AsyncData(responseModel);
      return responseModel;
    } catch (e, st) {
      state = AsyncError(e, st);
      throw Null;
    }
  }

  Future<bool> loadNextPage() async {
    if (_currentPage >= _totalPages) return false;
    final nextPage = _currentPage + 1;
    final result = await fetchAllEvents(page: nextPage, showLoading: false);
    return result.events.isNotEmpty;
  }

  Future<bool> refreshOrders() async {
    _events.clear();
    _currentPage = 1;
    _totalPages = 1;
    await fetchAllEvents(page: 1);
    return true;
  }
}
