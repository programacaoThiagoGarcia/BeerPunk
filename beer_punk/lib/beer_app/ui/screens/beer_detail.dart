import 'package:beer_punk/beer_app/ui/components/cardComponent.dart';
import 'package:beer_punk/model/beer.dart';
import 'package:flutter/material.dart';

class BeerDetail extends StatelessWidget {
  Beer beer;
  BeerDetail(this.beer);

  @override
  Widget build(BuildContext context) {
    Text _buildText() => Text(beer.name);
    return Scaffold(
      body: new Container(
        constraints: new BoxConstraints.expand(),
        color: new Color(0xFF78909C),
        child: new Stack(
          children: <Widget>[
            _getBackground(),
            _getGradient(),
            _getContent(),
            _getToolbar(context)
          ],
        ),
      ),
    );
  }

  Widget _getToolbar(BuildContext context) {
    return new Container(
        margin: new EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: new BackButton(color: Colors.white));
  }

  Widget _getContent() {
    final baseTextStyle = const TextStyle(fontFamily: 'Poppins');
    final regularTextStyle = baseTextStyle.copyWith(
        color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.w600);
    final descriptionStyle = baseTextStyle.copyWith(
        color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.w400);
    return new ListView(
      padding: new EdgeInsets.fromLTRB(0, 72, 0, 32),
      children: <Widget>[
        CardComponent.vertical(beer),
        new Container(
          padding: new EdgeInsets.symmetric(horizontal: 32),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text(
                'DESCRIPTION',
                style: regularTextStyle,
              ),
              new Separator(),
              new Text(
                beer.description,
                style: descriptionStyle,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Container _getBackground() {
    return new Container(
        child: Image.asset(
      'assets/images/background.jpg',
      fit: BoxFit.cover,
      height: 300.0,
    ));
  }

  Container _getGradient() {
    return new Container(
      margin: new EdgeInsets.only(top: 190.0),
      height: 110.0,
      decoration: BoxDecoration(
          gradient: new LinearGradient(
              colors: <Color>[new Color(0x0078909C), new Color(0xFF78909C)],
              stops: [0.0, 0.9],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(0.0, 1.0))),
    );
  }
}

class Separator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      height: 2.0,
      width: 18.0,
      color: new Color(0xff00c6ff),
    );
  }
}
