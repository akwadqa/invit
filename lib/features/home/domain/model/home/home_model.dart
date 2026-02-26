import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:invit/features/event/domain/model/event_model/event_model.dart';
import 'package:invit/features/home/domain/model/banners/banner_model.dart';

import '../ocation type/ocation_type_model.dart';

part 'home_model.freezed.dart';
part 'home_model.g.dart';

@freezed
abstract class HomeModel with _$HomeModel {
  factory HomeModel({
    required List<BannerModel> banners,
    required List<EventModel> events,
    @JsonKey(name: 'featured_events')
    required List<EventModel> featuredEvents,
    @JsonKey(name: 'occasion_types') required List<OcationTypeModel> occasionTypes,
  }) = _HomeModel;

  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);
}
