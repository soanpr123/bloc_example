// To parse this JSON data, do
//
//     final eaSport = eaSportFromJson(jsonString);

import 'dart:convert';

EaSport eaSportFromJson(String str) => EaSport.fromJson(json.decode(str));

String eaSportToJson(EaSport data) => json.encode(data.toJson());

class EaSport {
  EaSport({
    required this.page,
    required this.totalPages,
    required this.totalResults,
    required this.type,
    required this.count,
    required this.items,
  });

  final int? page;
  final int? totalPages;
  final int? totalResults;
  final String? type;
  final int? count;
  final List<Item>? items;

  factory EaSport.fromJson(Map<String, dynamic> json) => EaSport(
    page: json["page"] == null ? null : json["page"],
    totalPages: json["totalPages"] == null ? null : json["totalPages"],
    totalResults: json["totalResults"] == null ? null : json["totalResults"],
    type: json["type"] == null ? null : json["type"],
    count: json["count"] == null ? null : json["count"],
    items: json["items"] == null ? null : List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "page": page == null ? null : page,
    "totalPages": totalPages == null ? null : totalPages,
    "totalResults": totalResults == null ? null : totalResults,
    "type": type == null ? null : type,
    "count": count == null ? null : count,
    "items": items == null ? null : List<dynamic>.from(items!.map((x) => x.toJson())),
  };
}

class Item {
  Item({
    required this.commonName,
    required this.firstName,
    required this.lastName,
    required this.league,
    required this.nation,
    required this.club,
    required this.headshot,
    required this.position,
    required this.composure,
    required this.playStyle,
    required this.playStyleId,
    required this.height,
    required this.weight,
    required this.birthdate,
    required this.age,
    required this.acceleration,
    required this.aggression,
    required this.agility,
    required this.balance,
    required this.ballcontrol,
    required this.foot,
    required this.skillMoves,
    required this.crossing,
    required this.curve,
    required this.dribbling,
    required this.finishing,
    required this.freekickaccuracy,
    required this.gkdiving,
    required this.gkhandling,
    required this.gkkicking,
    required this.gkpositioning,
    required this.gkreflexes,
    required this.headingaccuracy,
    required this.interceptions,
    required this.jumping,
    required this.longpassing,
    required this.longshots,
    required this.marking,
    required this.penalties,
    required this.positioning,
    required this.potential,
    required this.reactions,
    required this.shortpassing,
    required this.shotpower,
    required this.slidingtackle,
    required this.sprintspeed,
    required this.standingtackle,
    required this.stamina,
    required this.strength,
    required this.vision,
    required this.volleys,
    required this.weakFoot,
    required this.traits,
    required this.specialities,
    required this.atkWorkRate,
    required this.defWorkRate,
    required this.playerType,
    required this.attributes,
    required this.name,
    required this.rarityId,
    required this.isIcon,
    required this.quality,
    required this.isGk,
    required this.positionFull,
    required this.isSpecialType,
    required this.contracts,
    required this.fitness,
    required this.rawAttributeChemistryBonus,
    required this.isLoan,
    required this.squadPosition,
    required this.iconAttributes,
    required this.itemType,
    required this.discardValue,
    required this.id,
    required this.modelName,
    required this.baseId,
    required this.rating,
  });

  final String? commonName;
  final String? firstName;
  final String? lastName;
  final League? league;
  final Nation? nation;
  final Club? club;
  final Headshot? headshot;
  final String? position;
  final int? composure;
  final PlayStyle? playStyle;
  final dynamic playStyleId;
  final int? height;
  final int? weight;
  final String? birthdate;
  final int? age;
  final int? acceleration;
  final int? aggression;
  final int? agility;
  final int? balance;
  final int? ballcontrol;
  final Foot? foot;
  final int? skillMoves;
  final int? crossing;
  final int? curve;
  final int? dribbling;
  final int? finishing;
  final int? freekickaccuracy;
  final int? gkdiving;
  final int? gkhandling;
  final int? gkkicking;
  final int? gkpositioning;
  final int? gkreflexes;
  final int? headingaccuracy;
  final int? interceptions;
  final int? jumping;
  final int? longpassing;
  final int? longshots;
  final int? marking;
  final int? penalties;
  final int? positioning;
  final int? potential;
  final int? reactions;
  final int? shortpassing;
  final int? shotpower;
  final int? slidingtackle;
  final int? sprintspeed;
  final int? standingtackle;
  final int? stamina;
  final int? strength;
  final int? vision;
  final int? volleys;
  final int? weakFoot;
  final List<String>? traits;
  final List<Speciality>? specialities;
  final AtkWorkRate? atkWorkRate;
  final DefWorkRate? defWorkRate;
  final dynamic playerType;
  final List<Attribute>? attributes;
  final String? name;
  final int? rarityId;
  final bool? isIcon;
  final Quality? quality;
  final bool? isGk;
  final String? positionFull;
  final bool? isSpecialType;
  final dynamic contracts;
  final dynamic fitness;
  final dynamic rawAttributeChemistryBonus;
  final dynamic isLoan;
  final dynamic squadPosition;
  final dynamic iconAttributes;
  final ItemType? itemType;
  final dynamic discardValue;
  final String? id;
  final ModelName? modelName;
  final int? baseId;
  final int? rating;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    commonName: json["commonName"] == null ? null : json["commonName"],
    firstName: json["firstName"] == null ? null : json["firstName"],
    lastName: json["lastName"] == null ? null : json["lastName"],
    league: json["league"] == null ? null : League.fromJson(json["league"]),
    nation: json["nation"] == null ? null : Nation.fromJson(json["nation"]),
    club: json["club"] == null ? null : Club.fromJson(json["club"]),
    headshot: json["headshot"] == null ? null : Headshot.fromJson(json["headshot"]),
    position: json["position"] == null ? null : json["position"],
    composure: json["composure"] == null ? null : json["composure"],
    playStyle: json["playStyle"] == null ? null : playStyleValues.map[json["playStyle"]],
    playStyleId: json["playStyleId"],
    height: json["height"] == null ? null : json["height"],
    weight: json["weight"] == null ? null : json["weight"],
    birthdate: json["birthdate"] == null ? null : json["birthdate"],
    age: json["age"] == null ? null : json["age"],
    acceleration: json["acceleration"] == null ? null : json["acceleration"],
    aggression: json["aggression"] == null ? null : json["aggression"],
    agility: json["agility"] == null ? null : json["agility"],
    balance: json["balance"] == null ? null : json["balance"],
    ballcontrol: json["ballcontrol"] == null ? null : json["ballcontrol"],
    foot: json["foot"] == null ? null : footValues.map[json["foot"]],
    skillMoves: json["skillMoves"] == null ? null : json["skillMoves"],
    crossing: json["crossing"] == null ? null : json["crossing"],
    curve: json["curve"] == null ? null : json["curve"],
    dribbling: json["dribbling"] == null ? null : json["dribbling"],
    finishing: json["finishing"] == null ? null : json["finishing"],
    freekickaccuracy: json["freekickaccuracy"] == null ? null : json["freekickaccuracy"],
    gkdiving: json["gkdiving"] == null ? null : json["gkdiving"],
    gkhandling: json["gkhandling"] == null ? null : json["gkhandling"],
    gkkicking: json["gkkicking"] == null ? null : json["gkkicking"],
    gkpositioning: json["gkpositioning"] == null ? null : json["gkpositioning"],
    gkreflexes: json["gkreflexes"] == null ? null : json["gkreflexes"],
    headingaccuracy: json["headingaccuracy"] == null ? null : json["headingaccuracy"],
    interceptions: json["interceptions"] == null ? null : json["interceptions"],
    jumping: json["jumping"] == null ? null : json["jumping"],
    longpassing: json["longpassing"] == null ? null : json["longpassing"],
    longshots: json["longshots"] == null ? null : json["longshots"],
    marking: json["marking"] == null ? null : json["marking"],
    penalties: json["penalties"] == null ? null : json["penalties"],
    positioning: json["positioning"] == null ? null : json["positioning"],
    potential: json["potential"] == null ? null : json["potential"],
    reactions: json["reactions"] == null ? null : json["reactions"],
    shortpassing: json["shortpassing"] == null ? null : json["shortpassing"],
    shotpower: json["shotpower"] == null ? null : json["shotpower"],
    slidingtackle: json["slidingtackle"] == null ? null : json["slidingtackle"],
    sprintspeed: json["sprintspeed"] == null ? null : json["sprintspeed"],
    standingtackle: json["standingtackle"] == null ? null : json["standingtackle"],
    stamina: json["stamina"] == null ? null : json["stamina"],
    strength: json["strength"] == null ? null : json["strength"],
    vision: json["vision"] == null ? null : json["vision"],
    volleys: json["volleys"] == null ? null : json["volleys"],
    weakFoot: json["weakFoot"] == null ? null : json["weakFoot"],
    traits: json["traits"] == null ? null : List<String>.from(json["traits"].map((x) => x)),
    specialities: json["specialities"] == null ? null : List<Speciality>.from(json["specialities"].map((x) => specialityValues.map[x])),
    atkWorkRate: json["atkWorkRate"] == null ? null : atkWorkRateValues.map[json["atkWorkRate"]],
    defWorkRate: json["defWorkRate"] == null ? null : defWorkRateValues.map[json["defWorkRate"]],
    playerType: json["playerType"],
    attributes: json["attributes"] == null ? null : List<Attribute>.from(json["attributes"].map((x) => Attribute.fromJson(x))),
    name: json["name"] == null ? null : json["name"],
    rarityId: json["rarityId"] == null ? null : json["rarityId"],
    isIcon: json["isIcon"] == null ? null : json["isIcon"],
    quality: json["quality"] == null ? null : qualityValues.map[json["quality"]],
    isGk: json["isGK"] == null ? null : json["isGK"],
    positionFull: json["positionFull"] == null ? null : json["positionFull"],
    isSpecialType: json["isSpecialType"] == null ? null : json["isSpecialType"],
    contracts: json["contracts"],
    fitness: json["fitness"],
    rawAttributeChemistryBonus: json["rawAttributeChemistryBonus"],
    isLoan: json["isLoan"],
    squadPosition: json["squadPosition"],
    iconAttributes: json["iconAttributes"],
    itemType: json["itemType"] == null ? null : itemTypeValues.map[json["itemType"]],
    discardValue: json["discardValue"],
    id: json["id"] == null ? null : json["id"],
    modelName: json["modelName"] == null ? null : modelNameValues.map[json["modelName"]],
    baseId: json["baseId"] == null ? null : json["baseId"],
    rating: json["rating"] == null ? null : json["rating"],
  );

  Map<String, dynamic> toJson() => {
    "commonName": commonName == null ? null : commonName,
    "firstName": firstName == null ? null : firstName,
    "lastName": lastName == null ? null : lastName,
    "league": league == null ? null : league!.toJson(),
    "nation": nation == null ? null : nation!.toJson(),
    "club": club == null ? null : club!.toJson(),
    "headshot": headshot == null ? null : headshot!.toJson(),
    "position": position == null ? null : position,
    "composure": composure == null ? null : composure,
    "playStyle": playStyle == null ? null : playStyleValues.reverse[playStyle],
    "playStyleId": playStyleId,
    "height": height == null ? null : height,
    "weight": weight == null ? null : weight,
    "birthdate": birthdate == null ? null : birthdate,
    "age": age == null ? null : age,
    "acceleration": acceleration == null ? null : acceleration,
    "aggression": aggression == null ? null : aggression,
    "agility": agility == null ? null : agility,
    "balance": balance == null ? null : balance,
    "ballcontrol": ballcontrol == null ? null : ballcontrol,
    "foot": foot == null ? null : footValues.reverse[foot],
    "skillMoves": skillMoves == null ? null : skillMoves,
    "crossing": crossing == null ? null : crossing,
    "curve": curve == null ? null : curve,
    "dribbling": dribbling == null ? null : dribbling,
    "finishing": finishing == null ? null : finishing,
    "freekickaccuracy": freekickaccuracy == null ? null : freekickaccuracy,
    "gkdiving": gkdiving == null ? null : gkdiving,
    "gkhandling": gkhandling == null ? null : gkhandling,
    "gkkicking": gkkicking == null ? null : gkkicking,
    "gkpositioning": gkpositioning == null ? null : gkpositioning,
    "gkreflexes": gkreflexes == null ? null : gkreflexes,
    "headingaccuracy": headingaccuracy == null ? null : headingaccuracy,
    "interceptions": interceptions == null ? null : interceptions,
    "jumping": jumping == null ? null : jumping,
    "longpassing": longpassing == null ? null : longpassing,
    "longshots": longshots == null ? null : longshots,
    "marking": marking == null ? null : marking,
    "penalties": penalties == null ? null : penalties,
    "positioning": positioning == null ? null : positioning,
    "potential": potential == null ? null : potential,
    "reactions": reactions == null ? null : reactions,
    "shortpassing": shortpassing == null ? null : shortpassing,
    "shotpower": shotpower == null ? null : shotpower,
    "slidingtackle": slidingtackle == null ? null : slidingtackle,
    "sprintspeed": sprintspeed == null ? null : sprintspeed,
    "standingtackle": standingtackle == null ? null : standingtackle,
    "stamina": stamina == null ? null : stamina,
    "strength": strength == null ? null : strength,
    "vision": vision == null ? null : vision,
    "volleys": volleys == null ? null : volleys,
    "weakFoot": weakFoot == null ? null : weakFoot,
    "traits": traits == null ? null : List<dynamic>.from(traits!.map((x) => x)),
    "specialities": specialities == null ? null : List<dynamic>.from(specialities!.map((x) => specialityValues.reverse[x])),
    "atkWorkRate": atkWorkRate == null ? null : atkWorkRateValues.reverse[atkWorkRate],
    "defWorkRate": defWorkRate == null ? null : defWorkRateValues.reverse[defWorkRate],
    "playerType": playerType,
    "attributes": attributes == null ? null : List<dynamic>.from(attributes!.map((x) => x.toJson())),
    "name": name == null ? null : name,
    "rarityId": rarityId == null ? null : rarityId,
    "isIcon": isIcon == null ? null : isIcon,
    "quality": quality == null ? null : qualityValues.reverse[quality],
    "isGK": isGk == null ? null : isGk,
    "positionFull": positionFull == null ? null : positionFull,
    "isSpecialType": isSpecialType == null ? null : isSpecialType,
    "contracts": contracts,
    "fitness": fitness,
    "rawAttributeChemistryBonus": rawAttributeChemistryBonus,
    "isLoan": isLoan,
    "squadPosition": squadPosition,
    "iconAttributes": iconAttributes,
    "itemType": itemType == null ? null : itemTypeValues.reverse[itemType],
    "discardValue": discardValue,
    "id": id == null ? null : id,
    "modelName": modelName == null ? null : modelNameValues.reverse[modelName],
    "baseId": baseId == null ? null : baseId,
    "rating": rating == null ? null : rating,
  };
}

enum AtkWorkRate { MEDIUM, HIGH }

final atkWorkRateValues = EnumValues({
  "High": AtkWorkRate.HIGH,
  "Medium": AtkWorkRate.MEDIUM
});

class Attribute {
  Attribute({
    required this.name,
    required this.value,
    required this.chemistryBonus,
  });

  final String? name;
  final int? value;
  final List<int>? chemistryBonus;

  factory Attribute.fromJson(Map<String, dynamic> json) => Attribute(
    name: json["name"] == null ? null : json["name"],
    value: json["value"] == null ? null : json["value"],
    chemistryBonus: json["chemistryBonus"] == null ? null : List<int>.from(json["chemistryBonus"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "name": name == null ? null : name,
    "value": value == null ? null : value,
    "chemistryBonus": chemistryBonus == null ? null : List<dynamic>.from(chemistryBonus!.map((x) => x)),
  };
}

class Club {
  Club({
    required this.imageUrls,
    required this.abbrName,
    required this.id,
    required this.imgUrl,
    required this.name,
  });

  final ClubImageUrls? imageUrls;
  final String? abbrName;
  final int? id;
  final dynamic imgUrl;
  final String? name;

  factory Club.fromJson(Map<String, dynamic> json) => Club(
    imageUrls: json["imageUrls"] == null ? null : ClubImageUrls.fromJson(json["imageUrls"]),
    abbrName: json["abbrName"] == null ? null : json["abbrName"],
    id: json["id"] == null ? null : json["id"],
    imgUrl: json["imgUrl"],
    name: json["name"] == null ? null : json["name"],
  );

  Map<String, dynamic> toJson() => {
    "imageUrls": imageUrls == null ? null : imageUrls!.toJson(),
    "abbrName": abbrName == null ? null : abbrName,
    "id": id == null ? null : id,
    "imgUrl": imgUrl,
    "name": name == null ? null : name,
  };
}

class ClubImageUrls {
  ClubImageUrls({
    required this.dark,
    required this.light,
  });

  final ImageUrls? dark;
  final ImageUrls? light;

  factory ClubImageUrls.fromJson(Map<String, dynamic> json) => ClubImageUrls(
    dark: json["dark"] == null ? null : ImageUrls.fromJson(json["dark"]),
    light: json["light"] == null ? null : ImageUrls.fromJson(json["light"]),
  );

  Map<String, dynamic>? toJson() => {
    "dark": dark == null ? null : dark!.toJson(),
    "light": light == null ? null : light!.toJson(),
  };
}

class ImageUrls {
  ImageUrls({
    required this.small,
    required this.medium,
    required this.large,
  });

  final String? small;
  final String? medium;
  final String? large;

  factory ImageUrls.fromJson(Map<String, dynamic> json) => ImageUrls(
    small: json["small"] == null ? null : json["small"],
    medium: json["medium"] == null ? null : json["medium"],
    large: json["large"] == null ? null : json["large"],
  );

  Map<String, dynamic>? toJson() => {
    "small": small == null ? null : small,
    "medium": medium == null ? null : medium,
    "large": large == null ? null : large,
  };
}

enum DefWorkRate { MEDIUM, LOW }

final defWorkRateValues = EnumValues({
  "Low": DefWorkRate.LOW,
  "Medium": DefWorkRate.MEDIUM
});

enum Foot { LEFT, RIGHT }

final footValues = EnumValues({
  "Left": Foot.LEFT,
  "Right": Foot.RIGHT
});

class Headshot {
  Headshot({
    required this.imgUrl,
    required this.isDynamicPortrait,
  });

  final String? imgUrl;
  final bool? isDynamicPortrait;

  factory Headshot.fromJson(Map<String, dynamic> json) => Headshot(
    imgUrl: json["imgUrl"] == null ? null : json["imgUrl"],
    isDynamicPortrait: json["isDynamicPortrait"] == null ? null : json["isDynamicPortrait"],
  );

  Map<String, dynamic> toJson() => {
    "imgUrl": imgUrl == null ? null : imgUrl,
    "isDynamicPortrait": isDynamicPortrait == null ? null : isDynamicPortrait,
  };
}

enum ItemType { PLAYER }

final itemTypeValues = EnumValues({
  "player": ItemType.PLAYER
});

class League {
  League({
    required this.imageUrls,
    required this.abbrName,
    required this.id,
    required this.imgUrl,
    required this.name,
  });

  final LeagueImageUrls? imageUrls;
  final String? abbrName;
  final int? id;
  final dynamic imgUrl;
  final String? name;

  factory League.fromJson(Map<String, dynamic> json) => League(
    imageUrls: json["imageUrls"] == null ? null : LeagueImageUrls.fromJson(json["imageUrls"]),
    abbrName: json["abbrName"] == null ? null : json["abbrName"],
    id: json["id"] == null ? null : json["id"],
    imgUrl: json["imgUrl"],
    name: json["name"] == null ? null : json["name"],
  );

  Map<String, dynamic> toJson() => {
    "imageUrls": imageUrls == null ? null : imageUrls!.toJson(),
    "abbrName": abbrName == null ? null : abbrName,
    "id": id == null ? null : id,
    "imgUrl": imgUrl,
    "name": name == null ? null : name,
  };
}

class LeagueImageUrls {
  LeagueImageUrls({
    required this.dark,
    required this.light,
  });

  final String? dark;
  final String? light;

  factory LeagueImageUrls.fromJson(Map<String, dynamic> json) => LeagueImageUrls(
    dark: json["dark"] == null ? null : json["dark"],
    light: json["light"] == null ? null : json["light"],
  );

  Map<String, dynamic> toJson() => {
    "dark": dark == null ? null : dark,
    "light": light == null ? null : light,
  };
}

enum ModelName { FUT_PLAYER_ITEM }

final modelNameValues = EnumValues({
  "FUTPlayerItem": ModelName.FUT_PLAYER_ITEM
});

class Nation {
  Nation({
    required this.imageUrls,
    required this.abbrName,
    required this.id,
    required this.imgUrl,
    required this.name,
  });

  final ImageUrls? imageUrls;
  final Name? abbrName;
  final int? id;
  final dynamic imgUrl;
  final Name? name;

  factory Nation.fromJson(Map<String, dynamic> json) => Nation(
    imageUrls: json["imageUrls"] == null ? null : ImageUrls.fromJson(json["imageUrls"]),
    abbrName: json["abbrName"] == null ? null : nameValues.map[json["abbrName"]],
    id: json["id"] == null ? null : json["id"],
    imgUrl: json["imgUrl"],
    name: json["name"] == null ? null : nameValues.map[json["name"]],
  );

  Map<String, dynamic> toJson() => {
    "imageUrls": imageUrls == null ? null : imageUrls!.toJson(),
    "abbrName": abbrName == null ? null : nameValues.reverse[abbrName],
    "id": id == null ? null : id,
    "imgUrl": imgUrl,
    "name": name == null ? null : nameValues.reverse[name],
  };
}

enum Name { ARGENTINA }

final nameValues = EnumValues({
  "Argentina": Name.ARGENTINA
});

enum PlayStyle { BASIC }

final playStyleValues = EnumValues({
  "Basic": PlayStyle.BASIC
});

enum Quality { GOLD }

final qualityValues = EnumValues({
  "gold": Quality.GOLD
});

enum Speciality { SPEEDSTER, AERIAL_THREAT, DRIBBLER, DISTANCE_SHOOTER, FK_SPECIALIST, ACROBAT, CLINICAL_FINISHER, COMPLETE_FORWARD, POACHER, PLAY_MAKER, CROSSER, MIDFIELDER, STRENGTH }

final specialityValues = EnumValues({
  "Acrobat": Speciality.ACROBAT,
  "Aerial Threat": Speciality.AERIAL_THREAT,
  "Clinical Finisher": Speciality.CLINICAL_FINISHER,
  "Complete Forward": Speciality.COMPLETE_FORWARD,
  "Crosser": Speciality.CROSSER,
  "Distance Shooter": Speciality.DISTANCE_SHOOTER,
  "Dribbler": Speciality.DRIBBLER,
  "FK Specialist": Speciality.FK_SPECIALIST,
  "Midfielder": Speciality.MIDFIELDER,
  "Play Maker": Speciality.PLAY_MAKER,
  "Poacher": Speciality.POACHER,
  "Speedster": Speciality.SPEEDSTER,
  "Strength": Speciality.STRENGTH
});

class EnumValues<T> {
  late Map<String, T> map;
  late Map<T, String>? reverseMap;

  EnumValues( this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap!;
  }
}
