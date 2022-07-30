import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paint/router.dart';
import 'package:paint/styles/colors.dart';

class UnAuth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: Center(
                  child: Text(
                    "Hello,How can I help",
                    style:TextStyle(fontSize: 25.0,color: Colors.grey),
                  ),
                )
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              height: 250.0,
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: Text(
                      "Welcome to COLORRIOT ",
                      style: TextStyle(fontSize: 20.0,letterSpacing: 3),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: FlatButton(
                          color: _theme.primaryColor,
                          child: Text(
                            "Track",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushNamed(LoginRoute);
                          },
                        ),
                      ),
                      SizedBox(width: 40.0),
                      Expanded(
                        child: FlatButton(
                          color: dprimaryColor,
                          child: Text(
                            "Register vehicle",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushNamed(RegisterRoute);
                          },
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
