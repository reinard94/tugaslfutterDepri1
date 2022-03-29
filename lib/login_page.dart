import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/handlers/test_handler.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:flutter_application_1/static/database.dart';

class Loginpage extends StatefulWidget {
  static String tag = "login";
  const Loginpage({Key? key}) : super(key: key);

  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  TextEditingController _txtUsername = TextEditingController();
  TextEditingController _txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                controller: _txtUsername,
                decoration: const InputDecoration(
                  // contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                controller: _txtPassword,
                obscureText: true,
                decoration: const InputDecoration(
                  // contentPadding: EdgeInsets.all(10),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                print(_txtUsername.text);
                print(_txtPassword.text);
                // Navigator.of(context).pushNamed(HomePage.tag);
              },
              child: const Text("Login",
                style: TextStyle(
                  color: Colors.white
                ),
              ),
              style: ButtonStyle(
                minimumSize: MaterialStateProperty.all(const Size(double.infinity, 50)),
                backgroundColor: MaterialStateProperty.all(Colors.blue),
              ),
            )
          ],
        ),
      ),
    );
  }
}
