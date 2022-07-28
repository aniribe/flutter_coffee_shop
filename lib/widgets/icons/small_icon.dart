import 'package:flutter/cupertino.dart';
import '../../constants/app_color.dart';
import '../../util/ui_helper.dart';

class SmallIcon extends StatelessWidget {
  final String image;
  final String text;

  const SmallIcon({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 9),
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: AppColors.black,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            height: 16,
            child: Image.asset(
              image,
              color: AppColors.mainOrange,
            ),
          ),
          verticalSpace(3),
          Text(
            text,
            style: TextStyle(
              fontSize: 9,
              color: AppColors.white.withOpacity(0.6),
            ),
          )
        ],
      ),
    );
  }
}
