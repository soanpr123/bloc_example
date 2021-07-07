import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_example/data/model/NationModel.dart';
import 'package:bloc_example/data/model/ea_sport.dart';
import 'package:bloc_example/data/model/player_repository.dart';
import 'package:meta/meta.dart';

part 'player_listing_event.dart';
part 'player_listing_state.dart';

class PlayerListingBloc extends Bloc<PlayerListingEvent, PlayerListingState> {
  final PlayerRepository? playerRepository;

  PlayerListingBloc({this.playerRepository})
      : assert(playerRepository != null),
        super(PlayerUninitializedState());

  @override
  void onTransition(
      Transition<PlayerListingEvent, PlayerListingState> transition) {
    // TODO: implement onTransition
    super.onTransition(transition);
    print(transition);
  }

  PlayerListingState get initialState => PlayerUninitializedState();

  @override
  Stream<PlayerListingState> mapEventToState(
    PlayerListingEvent event,
  ) async* {
    yield PlayerFetchingState();
    List<Item>? players;
    try {
      if (event is CountrySelectedEvent) {
        players = await playerRepository!
            .fetchPlayersByCountry(event.nationModel!.countryId!);
      } else if (event is SearchTextChangedEvent) {
        players = await playerRepository!.fetchPlayersByName(event.searchTerm!);
      }
      if (players!.length == 0) {
        yield PlayerEmptyState();
      } else {
        yield PlayerFetchedState(players: players);
      }
    } catch (_) {
      yield PlayerErrorState();
    }
  }
}
