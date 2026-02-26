
import 'package:invit/features/event/domain/model/event_model/event_model.dart';
import 'package:invit/features/event_details/data/datasources/event_details_datasource.dart';
import 'package:invit/features/featured_events/data/datasources/featured_events_datasource.dart';
import 'package:invit/features/featured_events/domain/model/all_events_model.dart';
import 'package:invit/src/infrastructure/api/response/api_response.dart';
import 'package:invit/src/infrastructure/network/exception/dio_exceptions.dart';
import 'package:invit/src/infrastructure/network/services/dio_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'event_details_repository.g.dart';

@Riverpod(keepAlive: true)
EventDetailsRepository eventDetailsRepository(Ref ref) {
  final networkService = ref.watch(networkServiceProvider());
  return EventDetailsRepository(EventDetailsDatasource(networkService));
}

class EventDetailsRepository {
  final EventDetailsDatasource _remoteDataSource;

  EventDetailsRepository(this._remoteDataSource);

  Future<ApiResponse<EventModel>> getEventDetails(
       String occasionId) async {
    try {
      final result = await _remoteDataSource.getEventDetails(occasionId:occasionId);
      if (result.hasFailed) {
        throw AppException(
          result.message ?? 'Failed to fetch getEventDetails',
        );
      }
      // if (result.status == 200) {
      return result;
      // }
    } catch (e) {
      throw AppException('Failed to Get getEventDetails: $e');
    }
  }

  // }
}
