import 'package:beer_punk/api/JsonDecoder.dart';

class Beer<T extends JsonDecoderObject> implements JsonDecoderObject {
  int _id;
  String _name;
  String _tagline;
  String _firstBrewed;
  String _description;
  String _imageUrl;
  double _abv;
  int _ibu;
  int _targetFg;
  int _targetOg;
  int _ebc;
  int _srm;
  double _ph;
  int _attenuationLevel;
  Volume _volume;
  Volume _boilVolume;
  Method _method;
  Ingredients _ingredients;
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
      double abv,
      int ibu,
      int targetFg,
      int targetOg,
      int ebc,
      int srm,
      double ph,
      int attenuationLevel,
      Volume volume,
      Volume boilVolume,
      Method method,
      Ingredients ingredients,
      List<String> foodPairing,
      String brewersTips,
      String contributedBy}) {
    this._id = id;
    this._name = name;
    this._tagline = tagline;
    this._firstBrewed = firstBrewed;
    this._description = description;
    this._imageUrl = imageUrl;
    this._abv = abv;
    this._ibu = ibu;
    this._targetFg = targetFg;
    this._targetOg = targetOg;
    this._ebc = ebc;
    this._srm = srm;
    this._ph = ph;
    this._attenuationLevel = attenuationLevel;
    this._volume = volume;
    this._boilVolume = boilVolume;
    this._method = method;
    this._ingredients = ingredients;
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
  double get abv => _abv;
  set abv(double abv) => _abv = abv;
  int get ibu => _ibu;
  set ibu(int ibu) => _ibu = ibu;
  int get targetFg => _targetFg;
  set targetFg(int targetFg) => _targetFg = targetFg;
  int get targetOg => _targetOg;
  set targetOg(int targetOg) => _targetOg = targetOg;
  int get ebc => _ebc;
  set ebc(int ebc) => _ebc = ebc;
  int get srm => _srm;
  set srm(int srm) => _srm = srm;
  double get ph => _ph;
  set ph(double ph) => _ph = ph;
  int get attenuationLevel => _attenuationLevel;
  set attenuationLevel(int attenuationLevel) =>
      _attenuationLevel = attenuationLevel;
  Volume get volume => _volume;
  set volume(Volume volume) => _volume = volume;
  Volume get boilVolume => _boilVolume;
  set boilVolume(Volume boilVolume) => _boilVolume = boilVolume;
  Method get method => _method;
  set method(Method method) => _method = method;
  Ingredients get ingredients => _ingredients;
  set ingredients(Ingredients ingredients) => _ingredients = ingredients;
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
    _abv = json['abv'];
    _ibu = json['ibu'];
    _targetFg = json['target_fg'];
    _targetOg = json['target_og'];
    _ebc = json['ebc'];
    _srm = json['srm'];
    _ph = json['ph'];
    _attenuationLevel = json['attenuation_level'];
    _volume =
        json['volume'] != null ? new Volume.fromJson(json['volume']) : null;
    _boilVolume = json['boil_volume'] != null
        ? new Volume.fromJson(json['boil_volume'])
        : null;
    _method =
        json['method'] != null ? new Method.fromJson(json['method']) : null;
    _ingredients = json['ingredients'] != null
        ? new Ingredients.fromJson(json['ingredients'])
        : null;
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
    data['abv'] = this._abv;
    data['ibu'] = this._ibu;
    data['target_fg'] = this._targetFg;
    data['target_og'] = this._targetOg;
    data['ebc'] = this._ebc;
    data['srm'] = this._srm;
    data['ph'] = this._ph;
    data['attenuation_level'] = this._attenuationLevel;
    if (this._volume != null) {
      data['volume'] = this._volume.toJson();
    }
    if (this._boilVolume != null) {
      data['boil_volume'] = this._boilVolume.toJson();
    }
    if (this._method != null) {
      data['method'] = this._method.toJson();
    }
    if (this._ingredients != null) {
      data['ingredients'] = this._ingredients.toJson();
    }
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

class Volume {
  int _value;
  String _unit;

  Volume({int value, String unit}) {
    this._value = value;
    this._unit = unit;
  }

  int get value => _value;
  set value(int value) => _value = value;
  String get unit => _unit;
  set unit(String unit) => _unit = unit;

  Volume.fromJson(Map<String, dynamic> json) {
    _value = json['value'];
    _unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['value'] = this._value;
    data['unit'] = this._unit;
    return data;
  }
}

class Method {
  List<MashTemp> _mashTemp;
  Fermentation _fermentation;
  Null _twist;

  Method({List<MashTemp> mashTemp, Fermentation fermentation, Null twist}) {
    this._mashTemp = mashTemp;
    this._fermentation = fermentation;
    this._twist = twist;
  }

  List<MashTemp> get mashTemp => _mashTemp;
  set mashTemp(List<MashTemp> mashTemp) => _mashTemp = mashTemp;
  Fermentation get fermentation => _fermentation;
  set fermentation(Fermentation fermentation) => _fermentation = fermentation;
  Null get twist => _twist;
  set twist(Null twist) => _twist = twist;

  Method.fromJson(Map<String, dynamic> json) {
    if (json['mash_temp'] != null) {
      _mashTemp = new List<MashTemp>();
      json['mash_temp'].forEach((v) {
        _mashTemp.add(new MashTemp.fromJson(v));
      });
    }
    _fermentation = json['fermentation'] != null
        ? new Fermentation.fromJson(json['fermentation'])
        : null;
    _twist = json['twist'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._mashTemp != null) {
      data['mash_temp'] = this._mashTemp.map((v) => v.toJson()).toList();
    }
    if (this._fermentation != null) {
      data['fermentation'] = this._fermentation.toJson();
    }
    data['twist'] = this._twist;
    return data;
  }
}

class MashTemp {
  Volume _temp;
  int _duration;

  MashTemp({Volume temp, int duration}) {
    this._temp = temp;
    this._duration = duration;
  }

  Volume get temp => _temp;
  set temp(Volume temp) => _temp = temp;
  int get duration => _duration;
  set duration(int duration) => _duration = duration;

  MashTemp.fromJson(Map<String, dynamic> json) {
    _temp = json['temp'] != null ? new Volume.fromJson(json['temp']) : null;
    _duration = json['duration'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._temp != null) {
      data['temp'] = this._temp.toJson();
    }
    data['duration'] = this._duration;
    return data;
  }
}

class Fermentation {
  Volume _temp;

  Fermentation({Volume temp}) {
    this._temp = temp;
  }

  Volume get temp => _temp;
  set temp(Volume temp) => _temp = temp;

  Fermentation.fromJson(Map<String, dynamic> json) {
    _temp = json['temp'] != null ? new Volume.fromJson(json['temp']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._temp != null) {
      data['temp'] = this._temp.toJson();
    }
    return data;
  }
}

class Ingredients {
  List<Malt> _malt;
  List<Hops> _hops;
  String _yeast;

  Ingredients({List<Malt> malt, List<Hops> hops, String yeast}) {
    this._malt = malt;
    this._hops = hops;
    this._yeast = yeast;
  }

  List<Malt> get malt => _malt;
  set malt(List<Malt> malt) => _malt = malt;
  List<Hops> get hops => _hops;
  set hops(List<Hops> hops) => _hops = hops;
  String get yeast => _yeast;
  set yeast(String yeast) => _yeast = yeast;

  Ingredients.fromJson(Map<String, dynamic> json) {
    if (json['malt'] != null) {
      _malt = new List<Malt>();
      json['malt'].forEach((v) {
        _malt.add(new Malt.fromJson(v));
      });
    }
    if (json['hops'] != null) {
      _hops = new List<Hops>();
      json['hops'].forEach((v) {
        _hops.add(new Hops.fromJson(v));
      });
    }
    _yeast = json['yeast'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._malt != null) {
      data['malt'] = this._malt.map((v) => v.toJson()).toList();
    }
    if (this._hops != null) {
      data['hops'] = this._hops.map((v) => v.toJson()).toList();
    }
    data['yeast'] = this._yeast;
    return data;
  }
}

class Malt {
  String _name;
  Amount _amount;

  Malt({String name, Amount amount}) {
    this._name = name;
    this._amount = amount;
  }

  String get name => _name;
  set name(String name) => _name = name;
  Amount get amount => _amount;
  set amount(Amount amount) => _amount = amount;

  Malt.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    _amount =
        json['amount'] != null ? new Amount.fromJson(json['amount']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this._name;
    if (this._amount != null) {
      data['amount'] = this._amount.toJson();
    }
    return data;
  }
}

class Amount {
  double _value;
  String _unit;

  Amount({double value, String unit}) {
    this._value = value;
    this._unit = unit;
  }

  double get value => _value;
  set value(double value) => _value = value;
  String get unit => _unit;
  set unit(String unit) => _unit = unit;

  Amount.fromJson(Map<String, dynamic> json) {
    _value = json['value'];
    _unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['value'] = this._value;
    data['unit'] = this._unit;
    return data;
  }
}

class Hops {
  String _name;
  Amount _amount;
  String _add;
  String _attribute;

  Hops({String name, Amount amount, String add, String attribute}) {
    this._name = name;
    this._amount = amount;
    this._add = add;
    this._attribute = attribute;
  }

  String get name => _name;
  set name(String name) => _name = name;
  Amount get amount => _amount;
  set amount(Amount amount) => _amount = amount;
  String get add => _add;
  set add(String add) => _add = add;
  String get attribute => _attribute;
  set attribute(String attribute) => _attribute = attribute;

  Hops.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    _amount =
        json['amount'] != null ? new Amount.fromJson(json['amount']) : null;
    _add = json['add'];
    _attribute = json['attribute'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this._name;
    if (this._amount != null) {
      data['amount'] = this._amount.toJson();
    }
    data['add'] = this._add;
    data['attribute'] = this._attribute;
    return data;
  }
}

