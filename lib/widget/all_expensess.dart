import 'package:flutter/material.dart';
import 'package:responsive_dashbord/model/all_expensess_item_model.dart';
import 'package:responsive_dashbord/utils/app_images.dart';
import 'package:responsive_dashbord/widget/all_expensess_header.dart';
import 'package:responsive_dashbord/widget/all_expensess_item.dart';
import 'package:responsive_dashbord/widget/all_expensess_item_list_view.dart';

class AllExpensess extends StatelessWidget {
  const AllExpensess({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Column(
        children: [
          AllExpensessHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensessItemListView(
            
            
          )
        ],
      ),
    );
  }
}
