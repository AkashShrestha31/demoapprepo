class LoginModel {
  String? _token;
  Theme? _theme;

  LoginModel({String? token, Theme? theme}) {
    if (token != null) {
      this._token = token;
    }
    if (theme != null) {
      this._theme = theme;
    }
  }

  String? get token => _token;
  set token(String? token) => _token = token;
  Theme? get theme => _theme;
  set theme(Theme? theme) => _theme = theme;

  LoginModel.fromJson(Map<String, dynamic> json) {
    _token = json['token'];
    _theme = json['theme'] != null ? new Theme.fromJson(json['theme']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this._token;
    if (this._theme != null) {
      data['theme'] = this._theme!.toJson();
    }
    return data;
  }
}

class Theme {
  String? _name;
  List<Palettes>? _palettes;
  String? _primaryTextColor;
  String? _textColor;

  Theme({String? name, List<Palettes>? palettes, String? primaryTextColor, String? textColor}) {
    if (name != null) {
      this._name = name;
    }
    if (palettes != null) {
      this._palettes = palettes;
    }
    if (primaryTextColor != null) {
      this._primaryTextColor = primaryTextColor;
    }
    if (textColor != null) {
      this._textColor = textColor;
    }
  }

  String? get name => _name;
  set name(String? name) => _name = name;
  List<Palettes>? get palettes => _palettes;
  set palettes(List<Palettes>? palettes) => _palettes = palettes;
  String? get primaryTextColor => _primaryTextColor;
  set primaryTextColor(String? primaryTextColor) => _primaryTextColor = primaryTextColor;
  String? get textColor => _textColor;
  set textColor(String? textColor) => _textColor = textColor;

  Theme.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    if (json['palettes'] != null) {
      _palettes = <Palettes>[];
      json['palettes'].forEach((v) {
        _palettes!.add(new Palettes.fromJson(v));
      });
    }
    _primaryTextColor = json['primaryTextColor'];
    _textColor = json['textColor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this._name;
    if (this._palettes != null) {
      data['palettes'] = this._palettes!.map((v) => v.toJson()).toList();
    }
    data['primaryTextColor'] = this._primaryTextColor;
    data['textColor'] = this._textColor;
    return data;
  }
}

class Palettes {
  String? _label;
  String? _value;

  Palettes({String? label, String? value}) {
    if (label != null) {
      this._label = label;
    }
    if (value != null) {
      this._value = value;
    }
  }

  String? get label => _label;
  set label(String? label) => _label = label;
  String? get value => _value;
  set value(String? value) => _value = value;

  Palettes.fromJson(Map<String, dynamic> json) {
    _label = json['label'];
    _value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['label'] = this._label;
    data['value'] = this._value;
    return data;
  }
}
