import 'package:flutter/material.dart';
import 'package:invit/features/home/event/presentation/widgets/create_event_screen/create_event_steps_number.dart';
import 'package:invit/src/core/utils/extenssions/int_extenssion.dart';
import 'package:invit/src/resourses/color_manager/app_colors.dart';

class CreateEventSteps extends StatelessWidget {
  final int current;
  const CreateEventSteps({
    super.key,
    required this.current,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        17.horizontalSpace,
        CreateEventStepsNumber(
          title: '1',
          isPassed: true,
        ),
        Expanded(
          child: Container(
            height: 6,
            color: current == 2 || current == 3 ? AppColors.primary : AppColors.grey,
          ),
        ),
        CreateEventStepsNumber(
          title: '2',
          isPassed: current == 2 || current == 3,
        ),
        Expanded(
          child: Container(
            height: 6,
            color: current == 3 ? AppColors.primary : AppColors.grey,
          ),
        ),
        CreateEventStepsNumber(
          title: '3',
          isPassed: current == 3,
        ),
        17.horizontalSpace,
      ],
    );
  }
}
