import 'package:coffee_shop/widgets/read_more/text_length_calculating.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import '../../constants/app_color.dart';
import 'get_end_index_of_data.dart';

class ReadMoreContainer extends StatelessWidget {
  final bool isExpanded;
  final VoidCallback onTap;
  final String text;

  const ReadMoreContainer({
    Key? key,
    required this.isExpanded,
    required this.onTap,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        TextPainter textPainter = textLengthCalculating(
          isExpanded: isExpanded,
          text: text,
          constraints: constraints,
        );

        int? endIndex = getEndIndexOfData(textPainter);

        var textSpan;

        if (textPainter.didExceedMaxLines) {
          textSpan = TextSpan(
            text: isExpanded ? text : text.substring(0, endIndex),
            style: const TextStyle(
              color: AppColors.white,
            ),
            children: <TextSpan>[
              TextSpan(
                  text: isExpanded ? ' Read less' : '... Read more',
                  style: const TextStyle(
                    color: AppColors.mainOrange,
                  ),
                  recognizer: TapGestureRecognizer()..onTap = onTap)
            ],
          );
        } else {
          textSpan = TextSpan(
            text: text,
          );
        }
        return RichText(
          softWrap: true,
          overflow: TextOverflow.clip,
          text: textSpan,
        );
      },
    );
  }
}
