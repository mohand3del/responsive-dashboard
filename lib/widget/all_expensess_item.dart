import 'package:flutter/material.dart';
import 'package:responsive_dashbord/model/all_expensess_item_model.dart';
import 'package:responsive_dashbord/widget/active_all_expensess_item.dart';
import 'package:responsive_dashbord/widget/inactive_all_expensess_item.dart';

class AllExpensessItem extends StatelessWidget {
  const AllExpensessItem({
    super.key,
    required this.allExpensessItemModel,
    required this.isActive,
  });

  final AllExpensessItemModel allExpensessItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      duration: const Duration(milliseconds: 350), // Duration of the animation
      firstChild:
          ActiveAllExpensessItem(allExpensessItemModel: allExpensessItemModel),
      secondChild: InActiveAllExpensessItem(
          allExpensessItemModel: allExpensessItemModel),
      crossFadeState:
          isActive ? CrossFadeState.showFirst : CrossFadeState.showSecond,
    );
  }
}
