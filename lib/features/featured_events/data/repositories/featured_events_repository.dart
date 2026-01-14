
import 'package:invit/features/featured_events/data/datasources/featured_events_datasource.dart';
import 'package:invit/features/featured_events/domain/model/all_events_model.dart';
import 'package:invit/features/messages/domain/model/app_messages_model.dart';
import 'package:invit/src/infrastructure/api/response/api_response.dart';
import 'package:invit/src/infrastructure/network/exception/dio_exceptions.dart';
import 'package:invit/src/infrastructure/network/services/dio_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'featured_events_repository.g.dart';

@Riverpod(keepAlive: true)
FeaturedEventsRepository featuredEventsRepository(Ref ref) {
  final networkService = ref.watch(networkServiceProvider());
  return FeaturedEventsRepository(FeaturedEventsDatasource(networkService));
}

class FeaturedEventsRepository {
  final FeaturedEventsDatasource _remoteDataSource;

  FeaturedEventsRepository(this._remoteDataSource);

  Future<ApiResponse<List<AllEventsModel>>> getAllEvents(
      {required int page,String? search,}) async {
    try {
      final result = await _remoteDataSource.getAllEvents(page,search);
      if (result.hasFailed) {
        throw AppException(
          result.message ?? 'Failed to fetch getAllEvents',
        );
      }
      // if (result.status == 200) {
      return result;
      // }
    } catch (e) {
      throw AppException('Failed to Get getAllEvents: $e');
    }
  }

  // }
}
