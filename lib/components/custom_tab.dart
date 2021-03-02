import 'package:flutter/material.dart';
import 'package:picpay_clone/utils/constants.dart';

class CustomTabBar extends Decoration{

  @override
  BoxPainter createBoxPainter([VoidCallback onChanged]) => _CustomTabBar(this, onChanged);

}
//i'll be the best one doing thisssssssssss!!!!!!
class _CustomTabBar extends BoxPainter{

  final CustomTabBar decoration;

  _CustomTabBar(this.decoration, VoidCallback onChanged)
      : assert(decoration != null),
        super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    assert(configuration != null);
    assert(configuration.size != null);


    final Rect rect = Offset(offset.dx, (configuration.size.height/2) +18/2) & Size(configuration.size.width, 3);
    final Paint paint = Paint();
    paint.color = kPrimaryColor;
    paint.style = PaintingStyle.fill;

    canvas.drawRRect(RRect.fromRectAndRadius(rect, Radius.circular(10.0)), paint);
  }

}