import 'dart:async';

import 'package:flutter/material.dart';
import 'package:paint/providers/walkthrough_provider.dart';
import 'package:paint/router.dart';
import 'package:paint/screen/unauth.dart';
import 'package:paint/widgets/walkthrough_stepper.dart';
import 'package:paint/widgets/walkthrough_template.dart';
import 'package:provider/provider.dart';

class WalkThrough extends StatefulWidget {
  @override
  _WalkThroughState createState() => _WalkThroughState();
  }

  class _WalkThroughState extends State<WalkThrough>
  with SingleTickerProviderStateMixin {

    @override
    void initState() {
      super.initState();
      //  dbDetails();
      //  load();
      new Timer(new Duration(seconds: 10), () {
        Navigator.of(context).push(PageRouteBuilder(
            pageBuilder: (_, __, ___) => new UnAuth()));
      });
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Container(
                child: Center(
                  child: Image.asset('assets/images/logo.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
