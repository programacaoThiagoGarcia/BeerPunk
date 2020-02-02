import 'package:flutter/material.dart';
class BeerListRow extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 120.0,
      margin: EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 24.0
      ),
      child: buildContent(),
    );
  }

final imagePlaceHolder = new Container(
  margin: new EdgeInsets.symmetric(
    vertical: 16.0
  ),
  alignment: FractionalOffset.centerLeft,
  child: new Image(
    image: new AssetImage('assets/images/batman.png'),
    height: 92.0,
    width: 92.0,
  ),
);


final decorateCard = new Container(
height: 124.0,
margin: EdgeInsets.only(left: 46.0),
decoration: new BoxDecoration(
  color: new Color(0xFF263238),
  shape: BoxShape.rectangle,
  borderRadius: new BorderRadius.circular(8.0),
  boxShadow: <BoxShadow>[
    new BoxShadow(
      color: Colors.black12,
      blurRadius: 10.0,
      offset: new Offset(0.0, 1.0)
    )
  ]
),
);

  Stack buildContent(){
    return Stack(
      children: <Widget>[
        decorateCard,
        imagePlaceHolder,
      ],
      );
  }
}