import 'package:flutter/cupertino.dart';
import '../../../constants/string_constants.dart';
import '../../../util/ui_helper.dart';
import '../../../widgets/icons/long_icon.dart';
import '../../../widgets/icons/small_icon.dart';

class IconsSection extends StatelessWidget {
  final String roastType;

  const IconsSection({
    Key? key,
    required this.roastType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SmallIcon(
              image: StringConstants.coffeeBeanImage,
              text: StringConstants.coffee,
            ),
            horizontalSpace(20),
            const SmallIcon(
              image: StringConstants.dropImage,
              text: StringConstants.milk,
            ),
          ],
        ),
        LongIcon(roastType: roastType),
      ],
    );
  }
}
