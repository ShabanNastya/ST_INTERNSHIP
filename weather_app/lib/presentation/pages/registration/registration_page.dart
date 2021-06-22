import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Register',
              style: TextStyle(
                color: Colors.indigo,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                icon: Icon(
                  Icons.person,
                  color: Colors.blue,
                ),
                hintText: 'Enter name...',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                icon: Icon(
                  Icons.email,
                  color: Colors.blue,
                ),
                hintText: 'Enter e-mail...',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                icon: Icon(
                  Icons.lock,
                  color: Colors.blue,
                ),
                suffixIcon: Icon(Icons.visibility),
                hintText: 'Enter password...',
              ),
            ),
            ElevatedButton(onPressed: (){}, child: Text('Save'))
          ],
        ),
      ),
    );
  }
}
