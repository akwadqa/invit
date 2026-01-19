
import 'package:flutter/material.dart';
import 'package:invit/features/home/event/presentation/widgets/create_event_screen/create_event_steps.dart';
import 'package:invit/features/home/event/presentation/widgets/create_event_screen/create_event_steps_titles.dart';

class CreateEventStepsSection extends StatelessWidget {
  const CreateEventStepsSection({
    super.key,
    required this.current,
  });
  final int current;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      spacing: 12,
      children: [
        CreateEventSteps(
          current: current,
        ),
        CreateEventsStepsTitles(
          current: current,
        )
      ],
    );
  }
}