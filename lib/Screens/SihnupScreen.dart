import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled2/CustomWidgets/TextFormFeild.dart';
import 'package:untitled2/Providers/SignupProvider.dart';
import 'package:untitled2/Screens/LoginScreen.dart';


class SignupScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign Up")),
      body: Consumer<SignupProvider>(
        builder: (context, provider, child) {
          return Padding(
            padding: EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  CustomTextField(
                    label: "Name",
                    controller: nameController,
                    validator: (value) => value?.isEmpty == true ? 'Please enter name' : null,
                  ),
                  SizedBox(height: 20),
                  CustomTextField(
                    label: "Email",
                    controller: emailController,
                    validator: (value) => value?.isEmpty == true ? 'Please enter email' : null,
                  ),
                  SizedBox(height: 20),
                  CustomTextField(
                    label: "Phone",
                    controller: phoneController,
                    validator: (value) => value?.isEmpty == true ? 'Please enter phone number' : null,
                  ),
                  SizedBox(height: 20),
                  CustomTextField(
                    label: "Password",
                    controller: passwordController,
                    obscureText: true,
                    validator: (value) => value?.isEmpty == true ? 'Please enter password' : null,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                          nameController.text;
                          emailController.text;
                          int.parse(passwordController.text);
                          int.parse(phoneController.text);
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                      }
                    },
                    child: Text("Sign Up"),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
