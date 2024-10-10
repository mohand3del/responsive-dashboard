import 'package:flutter/material.dart';
import 'package:responsive_dashbord/utils/app_styles.dart';

class RangeOpetions extends StatelessWidget {
  const RangeOpetions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: Color(
              0xffF1F1F1,
            ),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        children: [
          Text("Monthly",style: AppStyles.styleMedium16,),
          SizedBox(width: 18,),
          Transform.rotate(
            angle: - 1.57079633,
            child: Icon(Icons.arrow_back_ios_new_outlined,color: Color(0xff064061),))
        ],
      ),
    );
  }
}
