import 'package:flutter/material.dart';

class AuthorizationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Authorization Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Authorization',
              style: TextStyle(
                color: Colors.indigo,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
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
            OutlinedButton(onPressed: (){}, child: Text('Submit'))
          ],
        ),
      ),
    );
  }
}
