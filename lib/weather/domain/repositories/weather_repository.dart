import '../entities/weather.dart';

abstract class WeatherRepository {
  Future<Weather> getWeatherByCityName({required String cityName});
}
