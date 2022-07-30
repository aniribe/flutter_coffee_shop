import 'package:flutter/cupertino.dart';

TextPainter textLengthCalculating(
    {required bool isExpanded,
    required String text,
    required BoxConstraints constraints}) {
  TextPainter textPainter = TextPainter(
    text: TextSpan(
      text: isExpanded ? ' Read less' : '... Read more',
    ),
    textDirection: TextDirection.rtl,
    maxLines: 2,
    ellipsis: '...',
  );

  textPainter.text = TextSpan(
    text: text,
  );

  textPainter.layout(
      minWidth: constraints.minWidth, maxWidth: constraints.maxWidth);

  return textPainter;
}
