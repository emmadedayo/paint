import 'package:flutter/material.dart';
import 'package:paint/router.dart';
import 'package:paint/screen/custom_text_form_field.dart';

class PhoneRegistration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor: _theme.scaffoldBackgroundColor,
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pushNamed(UnAuthenticatedPageRoute);
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: Text(
                      "Dear John Doe,",
                      style: _theme.textTheme.title.merge(
                        TextStyle(fontSize: 30.0),
                      ),
                    ),
                  ),
                  Text(
                    "Your vehicle is still under processing,\n\n kindly exercise patient .",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      margin: EdgeInsets.only(left: 23,right: 23),
                      child: Center(
                        child: Text(
                          "Thank you",
                          style: TextStyle(fontSize: 25.0,color: Colors.black),
                        ),
                      )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
