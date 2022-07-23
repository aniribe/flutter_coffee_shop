import 'package:flutter/cupertino.dart';
import '../../../constants/string_constants.dart';

class SloganSection extends StatelessWidget {
  const SloganSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      StringConstants.slogan,
      style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700),
    );
  }
}
