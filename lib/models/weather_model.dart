class WeatherModel {
  String location;
  late String current;

  WeatherModel({
    required this.location,
    required this.current,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) => WeatherModel(
        location: json['location'],
        current: json['current'],
      );
}
