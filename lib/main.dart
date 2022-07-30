import 'package:flutter/material.dart';
import 'package:paint/providers/walkthrough_provider.dart';
import 'package:paint/router.dart';
import 'package:paint/styles/theme_data.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (BuildContext context) => WalkthroughProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: onGenerateRoute,
        theme: ThemeScheme.light(),
        initialRoute: WalkthroughRoute,
      ),
    ),
  );
}
