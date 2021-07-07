part of 'player_listing_bloc.dart';

@immutable
abstract class PlayerListingState {}

class PlayerUninitializedState extends PlayerListingState {}
class PlayerFetchingState extends PlayerListingState {}

class PlayerFetchedState extends PlayerListingState {
  final List<Item>? players;
  PlayerFetchedState({@required this.players});
}
class PlayerErrorState extends PlayerListingState {}
class PlayerEmptyState extends PlayerListingState {}
