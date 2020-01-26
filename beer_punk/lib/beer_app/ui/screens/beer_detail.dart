import 'package:flutter/material.dart';

class BeerDetail extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Text _buildText() => Text('Second');
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: _buildText(),
      ),
      body: Center(
        child: Column(
          children: <Widget>[_buildText()],
        ),
      ),
    );
  }

}