import 'dart:async';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:navbar_router/navbar_router.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  late String _username;
  late String _password;

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      if (_username == 'user' && _password == 'password') {
        Navigator.pushReplacementNamed(context, '/homepage');
      } else {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Invalid Login'),
                content: Text('Hatalı Giriş.'),
                actions: <Widget>[
                  TextButton(
                    child: Text('OK'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              );
            });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://firebasestorage.googleapis.com/v0/b/kent-92b93.appspot.com/o/giris.jpg?alt=media&token=607825d6-61fc-4360-aa48-3e3103f0d492"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.white.withAlpha(230), BlendMode.dstATop),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        'ZONGULDAK KENT REHBERİ',
                        style: TextStyle(
                            color: Color.fromARGB(255, 3, 7, 34),
                            fontWeight: FontWeight.w500,
                            fontSize: 30),
                      ),
                    ),
                    Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(10),
                        child: const Text(
                          'Giriş Yap',
                          style: TextStyle(fontSize: 35),
                        )),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          filled: true,
                          fillColor: Color.fromARGB(152, 167, 162, 180),
                          labelText: 'Email',
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your username';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _username = value!;
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          filled: true,
                          fillColor: Color.fromARGB(152, 167, 162, 180),
                          labelText: 'Şifre',
                        ),
                        obscureText: true,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _password = value!;
                        },
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Şifremi Unuttum',
                        style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                    ),
                    SizedBox(height: 30),
                    ElevatedButton(
                      child: Text('Giriş'),
                      onPressed: _submitForm,
                    ),
                    Row(
                      // ignore: sort_child_properties_last
                      children: <Widget>[
                        const Text('Hesabın yok mu?'),
                        TextButton(
                          child: const Text(
                            'Üye Ol',
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, "/uyelik");
                          },
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
