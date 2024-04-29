
class Customer {
  late String iId;
  String? name;
  String? email;
  String? password;


  Customer({this.name, this.email, this.password});

  Customer.fromJson(Map<String, dynamic> json) {
    iId = json['_id'].toString();
    name = json['name'];
    email = json['email'];
    password = json['password'];
  }
}
