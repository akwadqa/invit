import 'package:freezed_annotation/freezed_annotation.dart';

part 'invite_template_model.freezed.dart';
part 'invite_template_model.g.dart';

@freezed
abstract class InviteTemplateModel with _$InviteTemplateModel {
  const factory InviteTemplateModel({
    required String name,
    @JsonKey(name: 'template_name') required String templateName,
    @JsonKey(name: 'app_template_image') String? appTemplateImage,
  }) = _InviteTemplateModel;

  factory InviteTemplateModel.fromJson(Map<String, dynamic> json) =>
      _$InviteTemplateModelFromJson(json);
}
