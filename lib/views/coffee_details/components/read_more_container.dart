import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import '../../../constants/app_color.dart';

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
        TextPainter textPainter = TextPainter(
          text: TextSpan(
            text: isExpanded ? ' Read less' : '... Read more',
            style: const TextStyle(
              color: AppColors.mainOrange,
            ),
            recognizer: TapGestureRecognizer()..onTap = onTap,
          ),
          textDirection: TextDirection.rtl,
          maxLines: 2,
          ellipsis: '...',
        );

        // textPainter.layout(
        //     minWidth: constraints.minWidth, maxWidth: constraints.maxWidth);

        textPainter.text = TextSpan(
          text: text,
        );

        textPainter.layout(
            minWidth: constraints.minWidth, maxWidth: constraints.maxWidth);

        final textSize = textPainter.size;

        // Get the endIndex of data
        int? endIndex;
        final pos = textPainter.getPositionForOffset(Offset(
          textSize.width - textPainter.size.width / 3,
          textSize.height,
        ));
        endIndex = textPainter.getOffsetBefore(pos.offset);

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
