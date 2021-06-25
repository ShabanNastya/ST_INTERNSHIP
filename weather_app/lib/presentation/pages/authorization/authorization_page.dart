import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController _emailController;
  TextEditingController _passwordController;

  @override
  Widget build(BuildContext context) {
    final emailField = TextFormField(
      controller: _emailController,
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(
        color: Colors.indigo,
      ),
      decoration: InputDecoration(
        icon: Icon(
          Icons.email,
          color: Colors.indigo,
        ),
        labelText: "E-Mail",
        hintText: "Enter e-mail..",
      ),
      validator: (String value) {
        if (!value.contains('@')) {
          return 'Please enter a valid e-mail';
        }
        return null;
      },
    );

    final passwordField = TextFormField(
      controller: _passwordController,
      style: TextStyle(
        color: Colors.indigo,
      ),
      decoration: InputDecoration(
        icon: Icon(
          Icons.lock,
          color: Colors.indigo,
        ),
        labelText: "Password",
        hintText: "Enter password..",
      ),
      validator: (String value){
        if (value.length < 8){
          return 'Password must be at least 8 characters';
        }
        return null;
      },
    );

    final fields = Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            emailField,
            passwordField,
          ],
        ));

    final loginButton = Material(
      borderRadius: BorderRadius.circular(25.0),
      color: Colors.indigo,
      child: MaterialButton(
        padding: EdgeInsets.all(10.0),
        child: Text(
          "Login",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () {
          print(_formkey.currentState.validate());
        },
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Authorization Page'),
      ),
      body: Form(
        key: _formkey,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Authorization",
                style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold),
              ),
              fields,
              loginButton,
            ],
          ),
        ),
      ),
    );
  }
}
