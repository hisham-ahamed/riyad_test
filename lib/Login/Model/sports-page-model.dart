class GetSports {
  final int responseCode;
  final bool status;
  final String message;
  final List<Sports> sportsList;

  GetSports(
      {required this.responseCode,
      required this.status,
      required this.message,
      required this.sportsList});

  factory GetSports.fromJson(Map<String, dynamic> json) {
    print('inside getsports');
    // print(json['sports']);
    List<Sports> getSportsFromJson(List<Map<String, dynamic>> jsonList) {
      print(jsonList);
      List<Sports> sports = [];
      for (var element in jsonList) {
        print(element);
        sports.add(Sports.fromJson(element));
      }
      return sports;
    }

    print('finished getSportsfromjson');
    List<Sports> sports = getSportsFromJson(json['sports']);
    print(sports[0].sportsName);

    return GetSports(
        responseCode: json['response_code'],
        status: json['status'],
        message: json['message'],
        sportsList: getSportsFromJson(json['sports']));
  }
}

class Sports {
  final int id;
  final String sportsName;
  final String sportsImage;
  final List<SportsList> sportsLists;

  Sports(
      {required this.id,
      required this.sportsName,
      required this.sportsImage,
      required this.sportsLists});

  factory Sports.fromJson(Map<String, dynamic> json) {
    print('inside sports');
    List<SportsList> getSportListFromJson(List<Map<String, dynamic>> jsonList) {
      List<SportsList> sportList = [];
      for (var element in jsonList) {
        sportList.add(SportsList.fromJson(element));
      }
      return sportList;
    }

    print('finished sports function');
    return Sports(
        id: json['id'],
        sportsName: json['sportsname'],
        sportsImage: json['sportsimage'],
        sportsLists: json['sportslists'] == []
            ? []
            : getSportListFromJson(json['sports']));
  }
}

class SportsList {
  final int id;
  final String venueName;
  final String venueImage;
  final List<String> venueAminities;
  final String venueDescription;
  final String venueLocation;
  final String venuePriceRange;
  final String pitchName;
  final String timeFrom;
  final String timeTo;
  final String min30Price;
  final String min60Price;
  final String min90Price;
  final String min120Price;
  final String indoor;
  final String outdoor;
  final List<String> workingDays;

  SportsList(
      {required this.id,
      required this.venueName,
      required this.venueImage,
      required this.venueAminities,
      required this.venueDescription,
      required this.venueLocation,
      required this.venuePriceRange,
      required this.pitchName,
      required this.timeFrom,
      required this.timeTo,
      required this.min30Price,
      required this.min60Price,
      required this.min90Price,
      required this.min120Price,
      required this.indoor,
      required this.outdoor,
      required this.workingDays});

  factory SportsList.fromJson(Map<String, dynamic> json) {
    return SportsList(
        id: json['id'],
        venueName: json['venuename'],
        venueImage: json['venueimage'],
        venueAminities: json['venueaminities'],
        venueDescription: json['venuedescrption'],
        venueLocation: json['venuelocation'],
        venuePriceRange: json['venuepricerange'],
        pitchName: json['pitchname'],
        timeFrom: json['timefrom'],
        timeTo: json['timeto'],
        min30Price: json['min_30_price'],
        min60Price: json['min_60_price'],
        min90Price: json['min_90_price'],
        min120Price: json['min_120_price'],
        indoor: json['indoor'],
        outdoor: json['outdoor'],
        workingDays: json['workingdays']);
  }
}
