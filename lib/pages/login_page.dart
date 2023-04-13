import 'package:flutter/material.dart';
import 'package:earnage/components/my_button.dart';
import 'package:earnage/components/my_textfield.dart';
import 'package:earnage/components/square_tile.dart';
import 'package:earnage/homescreen.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 25),

              // logo
              Image.asset(
                'Assets/images/logo.png',
                height: 72,
              ),

              const SizedBox(height: 25),

              // welcome back, you've been missed!
              Text(
                'EarnAge',
                style: TextStyle(
                  color: Color.fromARGB(255, 22, 22, 22),
                  fontSize: 50,
                ),
              ),

              const SizedBox(height: 25),

              // username textfield
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              // password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              // forgot password?

              const SizedBox(height: 25),

              // sign in button
              MyButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
              ),

              const SizedBox(height: 50),

              // or continue with

              const SizedBox(height: 50),

              // google + apple sign in buttons

              // not a member? register now
            ],
          ),
        ),
      ),
    );
  }
}
