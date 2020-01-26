import 'package:flutter/material.dart';

class BeerList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Text _buildText(){
      return Text(
        'Beer List',
      );
    }
    List<String> _buildListView() =>['A','B','C','D','E','F','G','H','I','J'];
    void printConsole(int index ){
      print(index.toString());
    }

    Container _buildContainer(int index){
      return Container(
        decoration: BoxDecoration(
          color: Colors.yellow,
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue, Colors.purple]),
          border: Border.all(
          color: Colors.lightBlue,
          width: 1,
    ),
    borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: <Widget>[
              SizedBox(height: 50.0),
              Text( _buildListView()[index]),
              SizedBox(height: 50.0)
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.blue,
      body: ListView.builder(
        itemCount: _buildListView().length,
        itemBuilder:(BuildContext context, int index){
          return GestureDetector(
            child: _buildContainer(index),
            onTap: (){
              Navigator.pushNamed(context, '/detail');
              printConsole(index);
            },
          );
        },
      ),
      appBar: AppBar(
        title: _buildText(),
        backgroundColor: Colors.blue,
      ),
    );
  }
}