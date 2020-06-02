import 'package:cardmathchinggamme/model/score.dart';
import 'package:cardmathchinggamme/routes/route.dart';
import 'package:cardmathchinggamme/screen/home.dart';
import 'package:cardmathchinggamme/screen/scoredetails.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      ChangeNotifierProvider(create: (context) => Score(), child: MyApp()),
    );
Routes routes = Routes();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: routes.homeScreen,
      routes: {
        routes.homeScreen: (context) => Home(),
        routes.scoredetails: (context) => ScoreDetails(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
