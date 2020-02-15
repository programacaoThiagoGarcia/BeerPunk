import 'package:beer_punk/beer_app/ui/components/cardComponent.dart';
import 'package:beer_punk/model/beer.dart';
import 'package:flutter/material.dart';

class BeerListRow extends StatelessWidget {
  BeerListRow(this.beer);
  final Beer beer;

  @override
  Widget build(BuildContext context) {
    return CardComponent(beer, horizontal: true);
  }
}
