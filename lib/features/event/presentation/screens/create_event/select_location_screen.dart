import 'dart:async';
import 'dart:ui' as ui;

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:invit/features/event/presentation/controller/create_event/create_event_controller.dart';
import 'package:invit/features/event/presentation/controller/map_controller/map_controller.dart';
import 'package:invit/features/event/presentation/controller/update_event/update_event_controller.dart';
import 'package:invit/features/event/presentation/widgets/select_location_screen/location_search_box.dart';
import 'package:invit/features/event/presentation/widgets/select_location_screen/select_location_google_map.dart';
import 'package:invit/src/core/shared_widgets/app_alert.dart';
import 'package:invit/src/core/shared_widgets/app_dialogs.dart';
import 'package:invit/src/core/shared_widgets/custom_button_widget.dart';
import 'package:invit/src/core/utils/extenssions/int_extenssion.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

import '../../../../../gen/assets.gen.dart';

class SelectLocationPage extends ConsumerStatefulWidget {
  final String? id;
  const SelectLocationPage({super.key, this.id});

  @override
  ConsumerState<SelectLocationPage> createState() => _SelectLocationPageState();
}

class _SelectLocationPageState extends ConsumerState<SelectLocationPage> {
  late Completer<GoogleMapController> _controller;

  @override
  void initState() {
    super.initState();
    _controller = Completer<GoogleMapController>();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(
      mapControllerProvider.select((val) => val.value?.selectedPlace),
      (prev, next) {
        if (next is AsyncLoading) {
          AppAlert.showLoadingDialog(context);
        }

        if (next is AsyncData) {
          context.pop();
          context.pop();
        }
        if (next is AsyncError) {
          context.pop();
          showErrorDialog(context, next!.error.toString());
        }
      },
    );

    return Scaffold(body: _buildMap(context));
  }

  SizedBox _buildConfirmButton(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButtonWidget(
            text: context.tr('confirm'),
            onTap: () async {
              await ref
                  .read(mapControllerProvider.notifier)
                  .getPlaceInfoFromLatLng(widget.id);
            },
            isFiled: true,
            style: AppTextStyle.nunitoBold16.copyWith(color: AppColors.white),
            height: 44,
            width: 260,
            backgroundColor: AppColors.primary,
          ),
          // 12.horizontalSpace,
          Spacer(),
          IconButton(
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(AppColors.white),
            ),
            onPressed: () {
              final location =
                  ref.watch(mapControllerProvider).value!.initialLatLng;

              ref
                  .read(mapControllerProvider.notifier)
                  .changeLatlng(location!.latitude, location.longitude);

              setState(() {});
            },
            icon: Icon(Icons.my_location_outlined),
          ),
        ],
      ),
    );
  }

  Stack _buildMap(BuildContext context) {
    final local = context.locale.languageCode;
    return Stack(
      children: [
        SelectLocationGoogleMap(_controller, widget.id),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 22, vertical: 64),
          child: Column(
            children: [
              Directionality(
                textDirection: ui.TextDirection.ltr,
                child: Row(
                  spacing: 12,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: GestureDetector(
                          onTap: () {
                            context.pop();
                          },
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.cardWhite,
                            ),
                            child: Icon(
                              Icons.arrow_back_rounded,
                              color: AppColors.black,
                            ),
                          ),
                        )),
                    Expanded(
                      child: LocationSearchBox(
                        onSelect: (id, des) async {
                          final notifier = ref.read(
                            mapControllerProvider.notifier,
                          );

                          final latLng = await notifier.getPlaceLocation(id);

                          if (latLng != null) {
                            final GoogleMapController mapController =
                                await _controller.future;

                            mapController.animateCamera(
                              CameraUpdate.newLatLng(
                                LatLng(latLng.latitude, latLng.longitude),
                              ),
                            );
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              _buildConfirmButton(context),
            ],
          ),
        ),
      ],
    );
  }
}
