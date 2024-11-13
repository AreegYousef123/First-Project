class LoginpModel
{

  int password;
  String emails;
  bool status;
  LoginpModel({required this.password ,required this.emails  ,required this.status});

  factory LoginpModel.FromJson(Map<String,dynamic>Json)
  {
    return LoginpModel( password: Json["password"], emails: Json["email"], status: Json["status"]);
  }
}

//https://outviocmsassets.s3.eu-central-1.amazonaws.com/ckyycvha3000c7b9gfipieqcb.jpg