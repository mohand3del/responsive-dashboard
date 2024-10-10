import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashbord/model/all_expensess_item_model.dart';
import 'package:responsive_dashbord/utils/app_styles.dart';
import 'package:responsive_dashbord/widget/all_expensess_item_header.dart';

class InActiveAllExpensessItem extends StatelessWidget {
  const InActiveAllExpensessItem({
    super.key,
    required this.allExpensessItemModel,
  });

  final AllExpensessItemModel allExpensessItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: const BorderSide(
                width: 1,
                color: Color(0xffF1F1F1),
              ))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensessItemHeader(
            iamge: allExpensessItemModel.image,
           
          ),
          SizedBox(
            height: 34,
          ),
          Text(
            allExpensessItemModel.title,
            style: AppStyles.styleSemiBold16,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            allExpensessItemModel.date,
            style: AppStyles.styleRegular14,
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            allExpensessItemModel.price,
            style: AppStyles.styleSemiBold24,
          )
        ],
      ),
    );
  }
}
