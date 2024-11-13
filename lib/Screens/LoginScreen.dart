import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled2/Screens/ProductsScreen.dart';
import 'package:untitled2/Screens/SihnupScreen.dart';

import '../CustomWidgets/TextFormFeild.dart';
import '../Providers/LoginProvider.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Consumer<LoginProvider>(
        builder: (context, provider, child) {
          return Padding(
            padding: EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  CustomTextField(
                    label: "Email",
                    controller: emailController,
                    validator: (value) => value?.isEmpty == true ? 'Please enter email' : null,
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
                        await provider.model!;
                        if (provider.model?.status == true) {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ProductsScreen()));
                        }
                      }
                    },
                    child: Text("Login"),
                  ),
                  TextButton(
                    onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen())),
                    child: Text("Don't have an account? Sign Up"),
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
