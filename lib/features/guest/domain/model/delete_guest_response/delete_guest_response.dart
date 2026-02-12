import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_guest_response.freezed.dart';
part 'delete_guest_response.g.dart';

@freezed
abstract class DeleteGuestsResponse with _$DeleteGuestsResponse {
  const factory DeleteGuestsResponse({
    required List<String> deleted,
    @JsonKey(name: 'not_found') required List<String> notFound,
  }) = _DeleteGuestsResponse;

  factory DeleteGuestsResponse.fromJson(Map<String, dynamic> json) =>
      _$DeleteGuestsResponseFromJson(json);
}
