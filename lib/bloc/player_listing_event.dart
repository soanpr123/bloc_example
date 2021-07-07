part of 'player_listing_bloc.dart';

@immutable
abstract class PlayerListingEvent {}

class CountrySelectedEvent extends PlayerListingEvent{
  final NationModel? nationModel;
  CountrySelectedEvent({required this.nationModel}) : assert(nationModel!=null);
}
class SearchTextChangedEvent extends PlayerListingEvent {
  final String? searchTerm;
  SearchTextChangedEvent({@required this.searchTerm}) : assert(searchTerm != null);
}