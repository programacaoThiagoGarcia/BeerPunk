import 'package:beer_punk/beer_app/ui/screens/beer_detail.dart';
import 'package:beer_punk/model/beer.dart';
import 'package:flutter/material.dart';

class CardComponent extends StatelessWidget {
  CardComponent(this.beer, {this.horizontal});
  CardComponent.vertical(this.beer) : horizontal = false;
  final Beer beer;
  final bool horizontal;

  @override
  Widget build(BuildContext context) {
    final imagePlaceHolder = new Container(
      margin: new EdgeInsets.symmetric(vertical: 16.0),
      alignment:
          horizontal ? FractionalOffset.centerLeft : FractionalOffset.topCenter,
      child: new Image(
        image: NetworkImage(beer.imageUrl),
        height: 92.0,
        width: 92.0,
      ),
    );

    final baseTextStyle = const TextStyle(fontFamily: 'Poppins');

    final headerBaseTextStyle = baseTextStyle.copyWith(
        color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w600);

    final regularTextStyle = baseTextStyle.copyWith(
        color: Colors.white, fontSize: 9.0, fontWeight: FontWeight.w600);

    final subHeaderTextStyle = regularTextStyle.copyWith(fontSize: 12.0);

    final beerCardContent = new Container(
        margin: new EdgeInsets.fromLTRB(
            horizontal ? 76.0 : 16, horizontal ? 16.0 : 50, 16.0, 16),
        constraints: new BoxConstraints.expand(),
        child: new Column(
          crossAxisAlignment:
              horizontal ? CrossAxisAlignment.start : CrossAxisAlignment.center,
          children: <Widget>[
            new Container(height: 4.0),
            new Text(
              beer.name,
              style: headerBaseTextStyle,
            ),
            new Text(beer.firstBrewed, style: subHeaderTextStyle),
            new Container(height: 4.0)
          ],
        ));
    final decorateCard = new Container(
      height: horizontal ? 124.0 : 154,
      margin: horizontal
          ? new EdgeInsets.only(left: 46.0)
          : new EdgeInsets.only(left: 0.0),
      decoration: new BoxDecoration(
          color: new Color(0xFF78909C),
          shape: BoxShape.rectangle,
          borderRadius: new BorderRadius.circular(8.0),
          boxShadow: <BoxShadow>[
            new BoxShadow(
                color: Colors.black12,
                blurRadius: 10.0,
                offset: new Offset(0.0, 1.0))
          ]),
    );

    return new GestureDetector(
      onTap: () => horizontal ? Navigator.of(context).push(new PageRouteBuilder(
          pageBuilder: (_, __, ___) => new BeerDetail(this.beer))) : null,
      child: new Container(
        height: 120.0,
        margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        child: Stack(
          children: <Widget>[decorateCard, imagePlaceHolder,beerCardContent],
        ),
      ),
    );
  }

  
}
