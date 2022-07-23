import 'package:flutter/cupertino.dart';
import '../../../constants/app_color.dart';
import '../../../constants/string_constants.dart';
import '../../../util/ui_helper.dart';

class SpecialSection extends StatelessWidget {
  const SpecialSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Special for you',
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
        ),
        verticalSpace(15),
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: const LinearGradient(
                colors: [AppColors.grey700, AppColors.darkBlackForGradient]),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: 130,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    StringConstants.coffeeImage13,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Container(
                width: 150,
                child: const Text(
                  '5 Coffee Beans You Must Try!',
                  style: TextStyle(fontSize: 16),
                  softWrap: true,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
