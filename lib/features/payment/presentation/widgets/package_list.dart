
import 'package:flutter/material.dart';
import 'package:invit/features/payment/presentation/widgets/package_card.dart';

class PackageList extends StatelessWidget {
  const PackageList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        PackageCard(
          title: "Starter",
          price: "50 QAR",
          features: [
            "75 Card Pack",
            "Full team usage",
            "Economical price",
            "Advanced security settings"
          ],
        ),
        PackageCard(
          title: "Pro",
          price: "150 QAR",
          features: [
            "100 Card Pack",
            "Ability to share with up to 3 users",
            "Lower price per card (discount)",
            "Longer card validity"
          ],
          isSelected: true,
          isBestValue: true,
        ),
        PackageCard(
          title: "Basic",
          price: "100 QAR",
          features: [
            "50 Card Pack",
            "Limited usage",
            "Economical price",
            "Suitable for first-time users"
          ],
        ),
      ],
    );
  }
}
