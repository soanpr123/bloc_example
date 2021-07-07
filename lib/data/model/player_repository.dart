import 'package:bloc_example/data/model/ea_sport.dart';
import 'package:bloc_example/data/player_api_provider.dart';

class PlayerRepository{
  PlayerApiProvider _playerApiProvider = PlayerApiProvider();

  Future<List<Item>> fetchPlayersByCountry(String countryId) =>
      _playerApiProvider.fetchPlayersByCountry(countryId);
  Future<List<Item>> fetchPlayersByName(String name) =>
      _playerApiProvider.fetchPlayersByName(name);
}