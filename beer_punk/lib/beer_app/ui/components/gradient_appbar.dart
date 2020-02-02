import 'package:beer_punk/beer_app/ui/components/gradients.dart';
import 'package:flutter/material.dart';
class GradientAppBar extends StatelessWidget{
  final String title;
  final double barHeight = 66.0;
  GradientAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return new Container(
    height: this.barHeight + statusBarHeight,
    padding: new EdgeInsets.only(top: statusBarHeight),
    decoration: new BoxDecoration(
      gradient: Gradients.gradientsAppBar()
    ),
    child: new Center(
      child: new Text(this.title, style: const TextStyle(
        color: Colors.white,
        fontFamily: 'Popping',
        fontWeight: FontWeight.w600,
        fontSize: 36.0
      ),),
    ),
  );
  }

}