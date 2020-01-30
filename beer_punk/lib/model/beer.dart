import 'package:beer_punk/api/JsonDecoder.dart';

class Beer<T extends JsonDecoderObject> implements JsonDecoderObject {
  int _id;
  String _name;
  String _tagline;
  String _firstBrewed;
  String _description;
  String _imageUrl;
  List<String> _foodPairing;
  String _brewersTips;
  String _contributedBy;

  Beer(
      {int id,
      String name,
      String tagline,
      String firstBrewed,
      String description,
      String imageUrl,
      List<String> foodPairing,
      String brewersTips,
      String contributedBy}) {
    this._id = id;
    this._name = name;
    this._tagline = tagline;
    this._firstBrewed = firstBrewed;
    this._description = description;
    this._imageUrl = imageUrl;
    this._foodPairing = foodPairing;
    this._brewersTips = brewersTips;
    this._contributedBy = contributedBy;
  }

  int get id => _id;
  set id(int id) => _id = id;
  String get name => _name;
  set name(String name) => _name = name;
  String get tagline => _tagline;
  set tagline(String tagline) => _tagline = tagline;
  String get firstBrewed => _firstBrewed;
  set firstBrewed(String firstBrewed) => _firstBrewed = firstBrewed;
  String get description => _description;
  set description(String description) => _description = description;
  String get imageUrl => _imageUrl;
  set imageUrl(String imageUrl) => _imageUrl = imageUrl;
  List<String> get foodPairing => _foodPairing;
  set foodPairing(List<String> foodPairing) => _foodPairing = foodPairing;
  String get brewersTips => _brewersTips;
  set brewersTips(String brewersTips) => _brewersTips = brewersTips;
  String get contributedBy => _contributedBy;
  set contributedBy(String contributedBy) => _contributedBy = contributedBy;

  Beer.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _tagline = json['tagline'];
    _firstBrewed = json['first_brewed'];
    _description = json['description'];
    _imageUrl = json['image_url'];
    _foodPairing = json['food_pairing'].cast<String>();
    _brewersTips = json['brewers_tips'];
    _contributedBy = json['contributed_by'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    data['tagline'] = this._tagline;
    data['first_brewed'] = this._firstBrewed;
    data['description'] = this._description;
    data['image_url'] = this._imageUrl;
    data['food_pairing'] = this._foodPairing;
    data['brewers_tips'] = this._brewersTips;
    data['contributed_by'] = this._contributedBy;
    return data;
  }

  @override
  Beer objectFromJson(Map<String, dynamic> json) => Beer.fromJson(json);

  @override
  Map<String, dynamic> objectToJson() => toJson();
}

