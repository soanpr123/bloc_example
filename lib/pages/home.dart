import 'package:bloc_example/bloc/player_listing_bloc.dart';
import 'package:bloc_example/data/model/player_repository.dart';
import 'package:bloc_example/pages/player_listing.dart';
import 'package:bloc_example/widgets/horizontalBar.dart';
import 'package:bloc_example/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  final PlayerRepository? playerRepository;

  HomePage({@required this.playerRepository});

  @override
  Widget build(BuildContext context) {
      var _playerListingBloc = PlayerListingBloc(playerRepository: playerRepository);
    return BlocProvider(
      create: (_)=>_playerListingBloc,
    child: Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        elevation: 0.0,
        title: Text('Football Players',style: TextStyle(color: Colors.white,fontSize: 30.0,),),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: <Widget>[
          HorizontalBar(),
          SizedBox(height: 20.0,),
          SearchBar(),
          SizedBox(height: 20.0,),
          PlayerListing(),
        ],
      ),
    ),
    );
  }
}
