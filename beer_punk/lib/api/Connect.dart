import 'package:beer_punk/api/JsonDecoder.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';



class Connect{
  Future getData(URLSERVICE type) async => null;
  Future postData<T extends JsonDecoderObject>(T t,URLSERVICE type) async => null;
}

class ConnectManager implements Connect{
  final String _baseUrl = 'https://api.punkapi.com/v2/beers';

  @override
  Future getData(URLSERVICE type) async {
    var url = _baseUrl + EndPointService.getUrl(type);
    print(url);
    var uri = Uri.parse(url);
    var response = await http.get(uri);
    var json = jsonDecode(response.body);
      return json;
  }

  @override
  Future postData<T extends JsonDecoderObject>(T t,URLSERVICE type) async{
    var url = _baseUrl + EndPointService.getUrl(type);
    var uri = Uri.parse(url);
    var response = await http.post(uri, body: t.objectToJson());
    var json = jsonDecode(response.body);
    return json;
  }
}


class EndPointService {
static String getUrl(URLSERVICE type){
  switch(type){
    case URLSERVICE.LIST:
      return '?page=1';
      break;
    case URLSERVICE.DETAIL:
      return '/{id}';
      break;
  }
  return null;
}
}

enum URLSERVICE
{
  LIST,
  DETAIL
  }

