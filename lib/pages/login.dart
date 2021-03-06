import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage();
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome again!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 50),
            TextField(
              decoration: InputDecoration(
                hintText: 'Email',
                prefixIcon: Icon(Icons.email)
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Password',
                  prefixIcon: Icon(Icons.lock)
              ),
            ),
            SizedBox(height: 20),
            RaisedButton(
              child: Text('Login'),
              color: Theme.of(context).primaryColor,
              onPressed: () {},
            ),
            SizedBox(height: 60),
            Text('Don\'t have account yet?'),
            FlatButton(
              child: Text(
                'Register',
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold
                ),
              ),
              highlightColor: Colors.amber[100],
              splashColor:Colors.amber[50] ,
              onPressed: () {
                Navigator.of(context).pushNamed('/register');
              },
            )
          ],
        ),
      ),
    );
  }
}
