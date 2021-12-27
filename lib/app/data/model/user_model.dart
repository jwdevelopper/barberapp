class User {
  User({
    required this.id,
    required this.fullname,
    required this.username,
    required this.image,
    required this.activated,
  });
  late final int id;
  late final String fullname;
  late final String username;
  late final bool image;
  late final bool activated;
  
  User.fromJson(Map<String, dynamic> json){
    id = json['id'];
    fullname = json['fullname'];
    username = json['username'];
    image = json['image'];
    activated = json['activated'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['fullname'] = fullname;
    _data['username'] = username;
    _data['image'] = image;
    _data['activated'] = activated;
    return _data;
  }
}