import 'package:weather/weather/domain/usecases/get_weather_by_city_name.dart';

class WeatherController {
  final GetWeatherByCityName getWeatherByCityName;

  WeatherController({required this.getWeatherByCityName});

  void getWeather() async {
    final weather = await getWeatherByCityName(
        const GetWeatherByCityNameParams(cityName: 'egypt'));
    print(weather);
  }
}
