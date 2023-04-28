import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF222431),
      appBar: AppBar(
        title: Text('Üye Ol'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'Ad ',
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Color.fromARGB(151, 215, 206, 236),
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'Soyad',
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Color.fromARGB(151, 215, 206, 236),
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'E-posta',
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Color.fromARGB(151, 215, 206, 236),
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Şifre',
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Color.fromARGB(151, 215, 206, 236),
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Üyelik işlemleri burada yapılır
                },
                child: Text('Kaydol'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
