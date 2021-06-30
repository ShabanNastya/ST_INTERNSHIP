import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _formkey = GlobalKey<FormState>();
  TextEditingController _usernameController;
  TextEditingController _emailController;
  TextEditingController _passwordController;

  @override
  Widget build(BuildContext context) {
    final usernameField = TextFormField(
      controller: _usernameController,
      style: TextStyle(
        color: Colors.indigo,
      ),
      decoration: InputDecoration(
        icon: Icon(
          Icons.person,
          color: Colors.indigo,
        ),
        labelText: "Username",
        hintText: "Enter name..",
      ),
      validator: (String value) {
        if (value.isEmpty || value.length > 25) {
          return 'Please enter a valid name';
        }
        return null;
      },
    );

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
        RegExp regExp = new RegExp(
          r"^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}$",
          caseSensitive: false,
          multiLine: false,
        );
        if (!regExp.hasMatch(value)) {
          print(
              "allMatches : " + regExp.hasMatch("dsf_dj-f@@jldfkl").toString());
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
      validator: (String value) {
        Pattern pattern =
            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
        RegExp regex = new RegExp(pattern);
        print(value);
        if (value.isEmpty) {
          return 'Please enter password';
        } else {
          if (!regex.hasMatch(value))
            return 'Please enter a valid password';
          else
            return null;
        }
      },
    );

    final fields = Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            usernameField,
            emailField,
            passwordField,
          ],
        ));

    final registerButton = Material(
      borderRadius: BorderRadius.circular(25.0),
      color: Colors.indigo,
      child: MaterialButton(
        padding: EdgeInsets.all(15.0),
        child: Text(
          "Register",
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
        title: const Text('Registration Page'),
      ),
      body: Form(
        key: _formkey,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Register",
                style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold),
              ),
              fields,
              registerButton,
            ],
          ),
        ),
      ),
    );
  }
}