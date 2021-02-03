import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:provider/provider.dart';
import 'package:tutorials/screen/game_screen.dart';
import 'package:tutorials/screen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class GlobalModel extends ChangeNotifier {
  var faker = new Faker();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<GlobalModel>(
        create: (context) => GlobalModel(),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: MyHomePage(),
          routes: {"/games": (context) => GameScreen()},
        ));
  }
}
