import 'package:weather/weather/data/datasources/weather_remote_datasource.dart';
import 'package:weather/weather/domain/entities/weather.dart';
import 'package:weather/weather/domain/repositories/weather_repository.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherRemoteDataSource weatherRemoteDataSource;

  WeatherRepositoryImpl({required this.weatherRemoteDataSource});
  @override
  Future<Weather> getWeatherByCityName({required String cityName}) async {
    final response =
        await weatherRemoteDataSource.getWeatherByCityName(cityName: cityName);

    return response!;
  }
}
