import 'package:beer_punk/model/Beer.dart';
import 'package:flutter/material.dart';
import 'package:beer_punk/api/Repository.dart';
import 'package:beer_punk/beer_app/ui/components/gradient_appbar.dart';
import 'package:beer_punk/beer_app/ui/components/listPageBody.dart';

class BeerList extends StatefulWidget{
  @override
  _BeerListState createState() => _BeerListState();
}

class _BeerListState extends State<BeerList>{
  List beers;
  var color = Color.fromRGBO(58, 66, 86, 1.0);
  Image buildImage(String url) => Image.network(url ,scale: 10);
@override
void initState() {
    super.initState();
    getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return new  Scaffold(
      body: Center(
        child: new Column(
          children: <Widget>[
            new GradientAppBar('Beer'),
            new ListPageBody(),
            new ListPageBody()
          ],
        ),
      )
    );
  }

Future getProducts() async{
 var repository = Repository();
 var _beer  =  await repository.getBeerList(Beer()) as List;
 setState(() {
   beers = _beer;
 });
}

}