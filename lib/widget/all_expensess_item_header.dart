import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensessItemHeader extends StatelessWidget {
  const AllExpensessItemHeader(
      {super.key, required this.iamge, this.backgroundImage, this.imageColor});
  final String iamge;
  final Color? backgroundImage, imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        width: 60,
        height: 60,
        decoration: ShapeDecoration(
          color: backgroundImage ?? const Color(0xFFFAFAFA),
          shape: const OvalBorder(),
        ),
        child: Center(
            child: SvgPicture.asset(
          iamge,
          colorFilter: ColorFilter.mode(
              imageColor ?? const Color(0xff4EB7F2), BlendMode.srcIn),
        )),
      ),
      const Expanded(child: SizedBox()),
      Transform.rotate(
        angle: -1.57079633 * 2,
        child: Icon(
          Icons.arrow_back_ios_new_outlined,
          color: imageColor == null ? Colors.white : const Color(0xff064061),
        ),
      ),
    ]);
  }
}
