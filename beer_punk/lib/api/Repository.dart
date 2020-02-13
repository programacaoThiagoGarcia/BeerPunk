
import 'package:beer_punk/api/Connect.dart';
import 'package:beer_punk/api/JsonDecoder.dart';
import 'dart:core';
import 'dart:async';

import 'package:beer_punk/api/beers.dart';

 class Repository  {

  final CONNECT_TYPE type = CONNECT_TYPE.PROD;

  Future getBeerList<T extends JsonDecoderObject>(T t) async {
    var users = type == CONNECT_TYPE.PROD ? await ConnectManager().getData(URLSERVICE.LIST) : BeerListJson.getBeerList();
    var listUsers = [];
      for(Map item in users){
        var user =  t.objectFromJson(item);
        listUsers.add(user);
      }
    return listUsers;
  }

  Future getBeerDetail<T extends JsonDecoderObject>(T t) async{
    var posts = await ConnectManager().getData(URLSERVICE.DETAIL);
    var listPost = [];
      for (Map item in posts){
        var post = t.objectFromJson(item);
        listPost.add(post);
      }
    return listPost;
  }
}

enum CONNECT_TYPE{
  DESENV,
  PROD
}

 