import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:invit/features/event/domain/model/event_model/event_model.dart';
import 'package:invit/features/event/presentation/controller/create_event/create_event_controller.dart';
import 'package:invit/features/home/domain/model/ocation%20type/ocation_type_model.dart';
import 'package:invit/features/invitation_type/presentation/widgets/invitation_colors.dart';
import 'package:invit/src/application/router/app_routes.dart';
import 'package:invit/src/core/shared_widgets/clickable_effect_widget.dart';
import 'package:invit/src/core/utils/extenssions/widget_extensions.dart';
import 'package:invit/src/infrastructure/api/endpoint/services_urls.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

class InvitationTypeCard extends ConsumerWidget {
  final OcationTypeModel ocationTypeModel;
  final int index;

  const InvitationTypeCard({
    super.key,
    required this.ocationTypeModel,
    required this.index,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final color = InvitationColors.getColor(index);

    final itemColor = ocationTypeModel.color.replaceAll('#', '0xff');

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22, vertical: 8),
      child: ClickableEffectWidget(
        borderRadius: 10,
        onTap: () {
          ref
              .read(createEventControllerProvider.notifier)
              .updateEvent(EventModel(type: ocationTypeModel.title));
          context.pushNamed(AppRoutes.templatesScreen , extra: ocationTypeModel.title);
        },
        child: Container(
          height: 90,
          decoration: BoxDecoration(
            // color: color.background,
            color: Color(int.parse(itemColor)).withValues(alpha: .6),
            borderRadius: BorderRadius.circular(10),
            border: BoxBorder.fromLTRB(
              top: BorderSide(color: Color(int.parse(itemColor)), width: 10),
            ),
          ),
          child: ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundColor: Color(
                int.parse(itemColor),
              ).withValues(alpha: .4),
              // backgroundColor: color.iconBg,
              child:
                  (ocationTypeModel.image == null ||
                      ocationTypeModel.image!.isEmpty)
                  ? const Icon(Icons.image, size: 22)
                  : ClipOval(
                      child: CachedNetworkImage(
                        imageUrl:
                            ServicesUrls.imageUrl + ocationTypeModel!.image!,
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                        placeholder: (_, __) => CircularProgressIndicator(
                          strokeWidth: 2,
                          color: Color(int.parse(itemColor)),
                        ),
                        errorWidget: (_, __, ___) =>
                            const Icon(Icons.broken_image),
                      ),
                    ),
            ),

            title: Text(
              ocationTypeModel.title,
              style: AppTextStyle.rubikSemiBold16,
            ),
          ).centered(),
        ),
      ),
    );
  }
}
