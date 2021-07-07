import 'package:bloc_example/data/model/player_repository.dart';
import 'package:bloc_example/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  PlayerRepository _response=PlayerRepository();
  runApp(MyApp(_response));
}

class MyApp extends StatelessWidget {
final PlayerRepository playerRepository;
MyApp(this.playerRepository);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: HomePage(playerRepository:playerRepository),
    );
  }
}
