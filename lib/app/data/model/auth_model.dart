import 'package:barberapp/app/data/model/user_model.dart';

class Auth {
  Auth({
    required this.user,
    required this.accessToken,
    required this.tokenType,
    required this.expiresIn,
  });
  late final User user;
  late final String accessToken;
  late final String tokenType;
  late final int expiresIn;
  
  Auth.fromJson(Map<String, dynamic> json){
    user = User.fromJson(json['user']);
    accessToken = json['access_token'];
    tokenType = json['token_type'];
    expiresIn = json['expires_in'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['user'] = user.toJson();
    _data['access_token'] = accessToken;
    _data['token_type'] = tokenType;
    _data['expires_in'] = expiresIn;
    return _data;
  }
}