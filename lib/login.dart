import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:retailerusinggetx/Home/home.dart';
import 'package:retailerusinggetx/controller.dart';
import 'homescreen.dart';
import 'homepage.dart';

class LoginController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  RxBool showError = RxBool(false);

  bool onSubmit() {
    String email = emailController.text;
    String password = passwordController.text;

    if (email == "user@example.com" && password == "password") {
      // Valid login
      emailController.clear();
      passwordController.clear();
      showError.value = false;
      Get.to(() => home());
      return true;
    } else {
      // Invalid login
      showError.value = true;
      Get.snackbar(
        'Login Failed',
        'Please enter a  email and password.',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
        duration: Duration(seconds: 3),
      );
      return false;
    }
  }

  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "Provide valid Email";
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.length < 6) {
      return "Password must be at least 6 characters";
    }
    return null;
  }
}

class Login extends StatelessWidget {
  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log In'),
        backgroundColor: Colors.orangeAccent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.only(top: 20.0), // Adjust the top value as needed
        child: _buildForm(),
      ),
    );
  }

  Widget _buildForm() {
    return SingleChildScrollView(
      physics: AlwaysScrollableScrollPhysics(),
      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: loginController.emailController,
              onChanged: (value) {
                loginController.showError.value = false;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: "Email",
                prefixIcon: Icon(Icons.email),
                errorText: loginController.showError.value
                    ? loginController.validateEmail(loginController.emailController.text)
                    : null,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: loginController.passwordController,
              onChanged: (value) {
                loginController.showError.value = false;
              },
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: "Password",
                prefixIcon: Icon(Icons.lock),
                errorText: loginController.showError.value
                    ? loginController.validatePassword(loginController.passwordController.text)
                    : null,
              ),
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              backgroundColor:
              MaterialStateProperty.all(Colors.orangeAccent),
              padding: MaterialStateProperty.all(EdgeInsets.all(14)),
            ),
            child: Text(
              "Login",
              style: TextStyle(fontSize: 14, color: Colors.white),
            ),
            onPressed: () {
              if(loginController.onSubmit().isNull) {
                Get.to(() => home());
              }
            },
          ),
          SizedBox(height: 16),
          TextButton(
            onPressed: () {
              Get.toNamed("/signup");
            },
            child: RichText(
              text: TextSpan(
                text: "Don't have an account? ",
                style: TextStyle(fontSize: 14, color: Colors.black),
                children: [
                  TextSpan(
                    text: "Sign Up",
                    style: TextStyle(fontSize: 14, color: Colors.orangeAccent),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}