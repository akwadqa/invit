import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:invit/features/home/domain/model/ocation%20type/ocation_type_model.dart';
import 'package:invit/features/invitation_type/presentation/widgets/invitation_colors.dart';
import 'package:invit/src/core/utils/extenssions/widget_extensions.dart';
import 'package:invit/src/infrastructure/api/endpoint/services_urls.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

class InvitationTypeCard extends StatelessWidget {
  final OcationTypeModel ocationTypeModel;
  final int index;

  const InvitationTypeCard({
    super.key,
    required this.ocationTypeModel,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final color = InvitationColors.getColor(index);

    return Container(
      height: 90,
      margin: EdgeInsets.symmetric(horizontal: 22, vertical: 8),
      decoration: BoxDecoration(
          color: color.background,
          borderRadius: BorderRadius.circular(10),
          border: BoxBorder.fromLTRB(
              top: BorderSide(color: color.topBar, width: 10))),
      child: ListTile(
        
      leading: CircleAvatar(
  radius: 25,
  backgroundColor: color.iconBg,
  child:(ocationTypeModel.image == null || ocationTypeModel.image!.isEmpty)
      ? const Icon(Icons.image, size: 22)
      : ClipOval(
          child: CachedNetworkImage(
            imageUrl:
                ServicesUrls.imageUrl + ocationTypeModel!.image!,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
            placeholder: (_, __) =>
                const CircularProgressIndicator(strokeWidth: 2),
            errorWidget: (_, __, ___) =>
                const Icon(Icons.broken_image),
          ),
        ),
),

        title: Text(ocationTypeModel.title, style: AppTextStyle.rubikSemiBold16),
      ).centered(),
    );
  }
}
