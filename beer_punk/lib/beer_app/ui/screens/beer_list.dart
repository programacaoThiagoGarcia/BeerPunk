import 'package:beer_punk/model/Beer.dart';
import 'package:flutter/material.dart';
import 'package:beer_punk/api/Repository.dart';

class BeerList extends StatefulWidget{
  @override
  _BeerListState createState() => _BeerListState();
}

class _BeerListState extends State<BeerList>{
  List beers;
  var color = Color.fromRGBO(58, 66, 86, 1.0);
@override
void initState() {
    super.initState();
    getProducts();
  }

  @override
  Widget build(BuildContext context) {
    Container buildTextStyle(int index){
      var beer = beers[index] as Beer;
      return Container(
        child: Column(
          children: <Widget>[
            Text( beer.name, style: TextStyle(color: Colors.white, fontStyle: FontStyle.normal, fontSize: 17)),
            Text( beer.firstBrewed, style: TextStyle(color: Colors.white, fontStyle: FontStyle.normal, fontSize: 14)),
          ],
        ),
      );
    }
    Image buildImage(String url) => Image.network(url ,scale: 10);

    Container buildListRow(int index){
      var beer = beers[index] as Beer;
      return Container(
        child: Row(
          children: <Widget>[
            buildImage(beer.imageUrl),
            SizedBox(width: 10.0),
            buildTextStyle(index)
          ],
        ),
      );
    }


    Card _buildCard(int index){
      return Card(
      elevation: 8.0,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: color,
        ),
        child: buildListRow(index)
      ),
    );
    }

    return Scaffold(
      backgroundColor: color,
      body: ListView.builder(
        itemCount: beers == null ? 0 : beers.length,
        itemBuilder:(BuildContext context, int index){
          return GestureDetector(
            child: _buildCard(index),
            onTap: (){
              Navigator.pushNamed(context, '/detail');
            },
          );
        },
      ),
      appBar: AppBar(
        elevation: 1,
        title: Text(
        'Beer List',
      ),
        backgroundColor: color,
      ),
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