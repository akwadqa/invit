import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:invit/features/event/domain/model/event_model/event_model.dart';
import 'package:invit/features/home/domain/model/banners/banner_model.dart';

import '../ocation type/ocation_type_model.dart';

part 'home_model.freezed.dart';
part 'home_model.g.dart';

@freezed
abstract class HomeModel with _$HomeModel {
  factory HomeModel({
    @JsonKey(name: 'remaining_balance') num? remainingBalance,
    @JsonKey(name: 'consuming_balance') num? consumingBalance,

    required List<BundleModel> bundles,
    required List<EventModel> events,
    @JsonKey(name: 'featured_events') required List<EventModel> featuredEvents,
    @JsonKey(name: 'occasion_types')
    required List<OcationTypeModel> occasionTypes,
  }) = _HomeModel;

  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);
}

@freezed
abstract class BundleModel with _$BundleModel {
  factory BundleModel({
    @JsonKey(name: 'bundle_name') String? bundleName,
    @JsonKey(name: 'price') num? price,
    @JsonKey(name: 'amount') num? amount,
    @JsonKey(name: 'description') String? description,
  }) = _BundleModel;

  factory BundleModel.fromJson(Map<String, dynamic> json) =>
      _$BundleModelFromJson(json);
}
