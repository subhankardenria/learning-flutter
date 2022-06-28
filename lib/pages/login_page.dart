import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login.png",
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 16,
                ),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Username",
                        hintText: "Enter username",
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: "Password",
                        hintText: "Enter password",
                      ),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    ElevatedButton(
                      onPressed: (() {
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      }),
                      child: const Text("Login"),
                      style: TextButton.styleFrom(
                        minimumSize: const Size(150, 40),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
