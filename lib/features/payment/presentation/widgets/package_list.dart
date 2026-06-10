import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:invit/features/home/presentation/controller/home_controller.dart';
import 'package:invit/features/payment/presentation/widgets/package_card.dart';

class PackageList extends ConsumerWidget {
  const PackageList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bundles = ref.read(homeControllerProvider).value?.bundles ?? [];

    return Column(
      children: bundles
          .map((bundle) => PackageCard(
                title: bundle.bundleName ?? '',
                price: '${bundle.price ?? ''} QAR',
                description: '${bundle.description ?? ''}',
              ))
          .toList(),
      // children: const [
      //   PackageCard(
      //     title: "Starter",
      //     price: "50 QAR",
      //     description: "75 Card Pack",
      //   ),
      //   PackageCard(
      //     title: "Basic",
      //     price: "100 QAR",
      //     description: "50 Card Pack",
      //   ),
      //   PackageCard(
      //     title: "Pro",
      //     price: "150 QAR",
      //     description: "100 Card Pack",
      //     isSelected: true,
      //     isBestValue: true,
      //   ),
      // ],
    );
  }
}
