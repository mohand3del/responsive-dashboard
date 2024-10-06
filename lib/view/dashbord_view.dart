

import 'package:flutter/material.dart';
import 'package:responsive_dashbord/widget/adaptive_layout_widget.dart';
import 'package:responsive_dashbord/widget/dashboard_desktop_layout.dart';

class DashbordView extends StatelessWidget {
  const DashbordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:AdaptiveLayoutWidget(mobileLayout: (context)=>const SizedBox(), tabletLayout:  (context)=>const SizedBox(), desktopLayout:(context)=> const DashboardDesktopLayout()),
    );
  }
}