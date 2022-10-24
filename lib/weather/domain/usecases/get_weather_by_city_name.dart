import 'package:weather/core/usecases/usecase.dart';
import 'package:weather/weather/domain/repositories/weather_repository.dart';

import '../entities/weather.dart';

class GetWeatherByCityName
    implements UseCase<Weather, GetWeatherByCityNameParams> {
  final WeatherRepository weatherRepository;

  GetWeatherByCityName({required this.weatherRepository});
  @override
  Future<Weather> call(GetWeatherByCityNameParams params) =>
      weatherRepository.getWeatherByCityName(cityName: params.cityName);
}

class GetWeatherByCityNameParams {
  final String cityName;

  const GetWeatherByCityNameParams({required this.cityName});
}
