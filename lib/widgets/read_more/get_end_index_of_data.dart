import 'package:flutter/cupertino.dart';

int? getEndIndexOfData(TextPainter textPainter) {
  final position = textPainter.getPositionForOffset(Offset(
    textPainter.size.width - textPainter.size.width / 3,
    textPainter.size.height,
  ));
  return textPainter.getOffsetBefore(position.offset);
}
