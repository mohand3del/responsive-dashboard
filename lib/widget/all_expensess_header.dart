import 'package:flutter/material.dart';
import 'package:responsive_dashbord/utils/app_styles.dart';
import 'package:responsive_dashbord/widget/range_opetions.dart';

class AllExpensessHeader extends StatelessWidget {
  const AllExpensessHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "All Expenses",
          style: AppStyles.styleSemiBold20,
        ),
        Spacer(),
        RangeOpetions()
      ],
    );
  }
}
