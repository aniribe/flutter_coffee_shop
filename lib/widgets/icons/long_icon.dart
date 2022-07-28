import 'package:flutter/cupertino.dart';
import '../../constants/app_color.dart';

class LongIcon extends StatelessWidget {
  final String roastType;

  const LongIcon({
    Key? key,
    required this.roastType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 120,
      decoration: BoxDecoration(
        color: AppColors.black,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          roastType,
          style: TextStyle(
            fontSize: 12,
            color: AppColors.white.withOpacity(0.6),
          ),
        ),
      ),
    );
  }
}
