import 'package:flutter/cupertino.dart';
import '../../../util/ui_helper.dart';
import '../../../widgets/read_more/read_more_container.dart';

class CoffeeTypeDescriptionSection extends StatelessWidget {
  final bool isExpanded;
  final VoidCallback onTap;
  final String description;

  const CoffeeTypeDescriptionSection({
    Key? key,
    required this.isExpanded,
    required this.onTap,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Description'),
          verticalSpace(30),
          ReadMoreContainer(
            isExpanded: isExpanded,
            onTap: onTap,
            text: description,
          ),
        ],
      ),
    );
  }
}
