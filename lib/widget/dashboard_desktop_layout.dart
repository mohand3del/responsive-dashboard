import 'package:flutter/material.dart';
import 'package:responsive_dashbord/widget/all_expensess.dart';
import 'package:responsive_dashbord/widget/custom_drawer.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: AllExpensess(),
        ),
      ],
    );
  }
}
