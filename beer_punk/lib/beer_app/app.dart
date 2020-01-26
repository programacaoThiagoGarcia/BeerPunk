import 'package:beer_punk/beer_app/ui/screens/beer_detail.dart';
import 'package:beer_punk/beer_app/ui/screens/beer_list.dart';
import 'package:flutter/material.dart';

class BeerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      title: 'Beer',
      initialRoute: '/',
      routes: {
        '/'     : (context) => BeerList(),
        '/detail' : (context) => BeerDetail()
      },
    );
  }

}