import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:invit/features/auth/signUp/presentation/widgets/create_account_field.dart';
import 'package:invit/features/home/event/domain/model/event_model/event_model.dart';
import 'package:invit/features/home/event/presentation/controller/create_event_controller.dart';
import 'package:invit/gen/assets.gen.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';
import 'package:invit/src/resourses/font_manager/app_text_style.dart';

class CreateEventScreenForm extends ConsumerWidget {
  const CreateEventScreenForm({
    super.key,
    required this.formKey,
    required this.title,
  });
  final GlobalKey<FormState> formKey;
  final TextEditingController title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final date = ref.watch(createEventControllerProvider
        .select((val) => val.value!.eventModel.date));

    final deviceLocale = Localizations.localeOf(context).toString();

    final dataFormatter = date != null
        ? DateFormat(
            'EEE, dd MMM yyyy',
            deviceLocale,
          ).format(DateTime.parse(date))
        : '';
    final formattedTime = date != null
        ? DateFormat.jm(deviceLocale).format(DateTime.parse(date))
        : '';

    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 20),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: AppColors.black.withValues(alpha: .25), blurRadius: 4),
          ],
        ),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 16,
            children: [
              AppTextFormField(
                  controller: title,
                  icon: Assets.icons.titleIc,
                  hint: 'event_title'.tr(),
                  label: 'title'.tr(),
                  isRequired: true),
              AppTextFormField(
                  isReadOnly: true,
                  controller: TextEditingController(text: dataFormatter),
                  icon: Assets.icons.eventDateIc,
                  onTap: () async {
                    final date = await showDatePicker(
                      builder: (context, child) => Theme(
                        data: Theme.of(context).copyWith(
                          datePickerTheme: DatePickerThemeData(
                            dayBackgroundColor:
                                MaterialStateProperty.resolveWith((states) {
                              if (states.contains(MaterialState.selected)) {
                                return AppColors.primary;
                              }
                              return null;
                            }),
                          ),
                        ),
                        child: child!,
                      ),
                      context: context,
                      firstDate: DateTime.now(),
                      lastDate: DateTime(2100),
                    );
                    if (date != null) {
                      ref
                          .read(createEventControllerProvider.notifier)
                          .updateEventDate(date);
                    }
                  },
                  hint: 'event_date'.tr(),
                  label: 'date'.tr(),
                  isRequired: true),
              AppTextFormField(
                  isReadOnly: true,
                  controller: TextEditingController(text: formattedTime),
                  onTap: () async {
                    final dateTime = DateTime.now();
                    final initialTime = dateTime != null
                        ? TimeOfDay.fromDateTime(dateTime!)
                        : TimeOfDay.now();

                    final time = await showTimePicker(
                      context: context,
                      initialTime: initialTime,
                      builder: (context, child) {
                        return Theme(
                          data: Theme.of(context).copyWith(
                            timePickerTheme: TimePickerThemeData(
                              hourMinuteShape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              hourMinuteColor:
                                  AppColors.primary.withOpacity(0.1),
                              hourMinuteTextColor: AppColors.primary,
                              dialHandColor: AppColors.primary,
                              dialBackgroundColor:
                                  AppColors.primary.withOpacity(0.08),
                              entryModeIconColor: AppColors.primary,
                            ),
                          ),
                          child: child!,
                        );
                      },
                    );
                    if (time != null) {
                      ref
                          .read(createEventControllerProvider.notifier)
                          .updateEventTime(time);
                    }
                  },
                  icon: Assets.icons.eventTimeIc,
                  hint: 'event_time'.tr(),
                  label: 'time'.tr(),
                  isRequired: true),
              Text('location'.tr(), style: AppTextStyle.rubikMedium16),
              Container(
                width: double.infinity,
                height: 203,
                color: AppColors.gray,
              )
            ],
          ),
        ),
      ),
    );
  }
}
