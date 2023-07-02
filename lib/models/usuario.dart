class Usuario {
  int id;
  String name;
  String username;
  String email;
  String phone;

  Usuario(
      this.id,
      this.name,
      this.username,
      this.email,
      this.phone
  );

  Usuario.fromJson(Map<String, dynamic> json):
    id = json['id'],
    name = json['name'],
    username = json['username'],
    email = json['email'],
    phone = json['phone'];

    Map<String, dynamic> toJson() => {
      'id': id,
      'name': name,
      'username': username,
      'email': email,
      'phone' : phone
    };

  static List<Usuario> listFromJson(List<dynamic> json) {
    List<Usuario> userList = [];
    int index = 0;
    for (var element in json) {
      if (index >= 8) {
        break;
      }
      userList.add(Usuario.fromJson(element));
      index++;
    }
    return userList;
  }
}