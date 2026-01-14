
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_messages_model.freezed.dart';
part 'app_messages_model.g.dart';
@freezed
abstract class AppMessagesModel with _$AppMessagesModel {
  const factory AppMessagesModel({
    // @JsonKey(name: 'for_user') required String forUser,
    @JsonKey(name: 'content') required String emailContent,
    required String subject,

    @JsonKey(name: "creation") required DateTime creation,
  }) = _AppMessagesModel;

  factory AppMessagesModel.fromJson(Map<String, dynamic> json) =>
      _$AppMessagesModelFromJson(json);
}
