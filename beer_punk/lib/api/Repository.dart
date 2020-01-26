
import 'package:beer_punk/api/Connect.dart';
import 'package:beer_punk/api/JsonDecoder.dart';
import 'dart:core';
import 'dart:async';

 class Repository  {
  
  Future getBeerList<T extends JsonDecoderObject>(T t) async {
    var users =  await ConnectManager().getData(URLSERVICE.LIST);
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