import 'package:easy_localization/easy_localization.dart';
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
          .map(
            (bundle) => PackageCard(
              title: bundle.bundleName ?? '',
              price: '${bundle.price ?? ''} ${'qar'.tr()}',
              description: '${bundle.description ?? ''}',
            ),
          )
          .toList(),
     
    );
  }
}
