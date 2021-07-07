import 'package:bloc_example/bloc/player_listing_bloc.dart';
import 'package:bloc_example/data/model/ea_sport.dart';
import 'package:bloc_example/pages/player_profile.dart';
import 'package:bloc_example/widgets/message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class PlayerListing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: BlocProvider.of<PlayerListingBloc>(context),
      builder: (context, state) {
        if (state is PlayerUninitializedState) {
          return Message(
              message: "Unintialised State");
        } else if (state is PlayerEmptyState) {
          return Message(message: "No Players found");
        } else if (state is PlayerErrorState) {
          return Message(message: "Something went wrong");
        } else if (state is PlayerFetchingState) {
          return Expanded(child: Center(child: CircularProgressIndicator()));
        } else {
          final stateAsPlayerFetchedState = state as PlayerFetchedState;
          final players = stateAsPlayerFetchedState.players;
          return buildPlayersList(players!);
        }
      },
    );
  }

  Widget buildPlayersList(List<Item> players) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (BuildContext context, index) {
          Item? player = players[index];
          return Container(
            color: Colors.white30,
            child: ListTile(
              leading: CircleAvatar(
                child: Image.network(
                  player.headshot!.imgUrl!,
                ),
                radius: 30.0,
                backgroundColor: Colors.blue[50],
              ),
              title: Text(
                player.name!,
                style: TextStyle(fontSize: 22.0, color: Colors.black),
              ),
              subtitle: Text(
                "Age: " + player.age.toString(),
                style: TextStyle(fontSize: 16.0, color: Colors.black87),
              ),
              trailing: IconButton(
                icon: Icon(Icons.chevron_right),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PlayerProfile(players: player,)));
                },
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, index) {
          return Divider(
            height: 8.0,
            color: Colors.transparent,
          );
        },
        itemCount: players.length,
      ),
    );
  }
}