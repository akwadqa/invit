import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:invit/features/event/presentation/controller/create_event/create_event_controller.dart';
import 'package:invit/features/event/presentation/controller/map_controller/map_controller.dart';
import 'package:invit/features/event/presentation/widgets/select_location_screen/home_page_search_field.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';


class LocationSearchBox extends ConsumerWidget {
  final Function(String placeId, String description) onSelect;

  const LocationSearchBox({super.key, required this.onSelect});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(
      mapControllerProvider.select((val) => val.value?.predictions),
    );

    return Column(
      children: [
        HomePageSearchField(
          isLocation: true,
          hint: context.tr('search'),
          onChange: (value) {
            ref
                .read(mapControllerProvider.notifier)
                .searchLocation(value);
          },
        ),

        const SizedBox(height: 6),

        if (state?.value?.isNotEmpty ?? false)
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6)],
            ),
            child: ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemCount: state!.value!.length,
              itemBuilder: (context, index) {
                final p = state.value![index];
                return ListTile(
                  leading: Icon(Icons.location_on, color: AppColors.primary),
                  title: Text(
                    p.description??"",
                    style: AppTextStyle.rubikRegular14.copyWith(
                      color: AppColors.primary,
                    ),
                  ),
                  onTap: () {
                    onSelect(p.placeId??"", p.description??"");

                    ref
                        .read(mapControllerProvider.notifier)
                        .clearSearchSuggestions();
                  },
                );
              },
            ),
          ),
      ],
    );
  }
}
