import 'package:beer_punk/beer_app/ui/components/beerListRow.dart';
import 'package:flutter/material.dart';

class ListPageBody extends StatelessWidget{
  List beers;
  
  ListPageBody(this.beers);
  @override
  Widget build(BuildContext context) {
    return new Expanded(child: new ListView.builder(itemBuilder: (context, index) => new BeerListRow(beers[index]),itemCount: beers.length));
  }
}