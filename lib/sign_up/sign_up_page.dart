import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smartpool/values/preferences_keys.dart';
import '../models/user_model.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 70),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 50, 11, 55),
                Color.fromARGB(255, 76, 35, 112)
              ],
            ),
          ),
          child: SingleChildScrollView(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset("images/logo.png", height: 150),
              Text(
                "SmartPool",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromARGB(255, 198, 192, 192),
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
              ),
              Text(
                "faça seu cadastro e mergulhe na tecnologia!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 198, 192, 192),
                  fontSize: 17,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20),
              ),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      controller: _usernameController,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        labelText: "Usuário",
                        labelStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(
                          Icons.person_outline,
                          color: Color.fromARGB(255, 99, 52, 139),
                          size: 30,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 99, 52, 139),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 99, 52, 139),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                    ),
                    TextFormField(
                      controller: _emailController,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        labelText: "E-mail",
                        labelStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Color.fromARGB(255, 99, 52, 139),
                          size: 30,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 99, 52, 139),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 99, 52, 139),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                    ),
                    TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Senha",
                        labelStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          color: Color.fromARGB(255, 99, 52, 139),
                          size: 30,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 99, 52, 139),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 99, 52, 139),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                    ),
                    TextFormField(
                      controller: _confirmPasswordController,
                      obscureText: true,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Confirmar Senha",
                        labelStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          color: Color.fromARGB(255, 99, 52, 139),
                          size: 30,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 99, 52, 139),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 99, 52, 139),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 10),
                    ),
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          _doSignUp();
                          Navigator.pop(context);
                        },
                        child: Text("CADASTRAR"),
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 44, 23, 63),
                          minimumSize: const Size(200, 100),
                          side: BorderSide(width: 1),
                          padding: EdgeInsets.symmetric(vertical: 15),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          textStyle: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ))),
    );
  }

  void _doSignUp() {
    User newUser = User(
      username: _usernameController.text,
      email: _emailController.text,
      password: _passwordController.text,
    );

    print(newUser);
    _saveUser(newUser);
  }

  void _saveUser(User user) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(
      PreferenceKeys.activeUser,
      json.encode(
        user.toJson(),
      ),
    );
  }
}
