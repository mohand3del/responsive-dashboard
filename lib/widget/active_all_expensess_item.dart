import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashbord/model/all_expensess_item_model.dart';
import 'package:responsive_dashbord/utils/app_styles.dart';
import 'package:responsive_dashbord/widget/all_expensess_item_header.dart';

class ActiveAllExpensessItem extends StatelessWidget {
  const ActiveAllExpensessItem({
    super.key,
    required this.allExpensessItemModel,
  });

  final AllExpensessItemModel allExpensessItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
          color: Color(0xff4EB7F2),
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
            imageColor: Colors.white,
            backgroundImage: Colors.white.withOpacity(0.100005),
          ),
          SizedBox(
            height: 34,
          ),
          Text(
            allExpensessItemModel.title,
            style: AppStyles.styleSemiBold16.copyWith(
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            allExpensessItemModel.date,
            style: AppStyles.styleRegular14.copyWith(
              color: Color(0xffFAFAFA),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            allExpensessItemModel.price,
            style: AppStyles.styleSemiBold24.copyWith(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
