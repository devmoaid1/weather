import 'package:weather/core/api/api_provider.dart';
import 'package:weather/core/constants/app_constants.dart';
import 'package:weather/weather/data/models/weather_model.dart';

abstract class WeatherRemoteDataSource {
  Future<WeatherModel?> getWeatherByCityName({required String cityName});
}

class WeatherRemoteDataSourceImpl implements WeatherRemoteDataSource {
  final ApiProvider apiProvider;

  WeatherRemoteDataSourceImpl({required this.apiProvider});

  @override
  Future<WeatherModel?> getWeatherByCityName({required String cityName}) async {
    WeatherModel? weather;
    try {
      final response = await apiProvider.getData(
          path: "${AppConstants.baseUrl}/weather",
          queryParams: {"q": cityName, "appid": AppConstants.apiKey});

      weather = WeatherModel.fromJson(response);

      return weather;
    } catch (err) {
      return weather;
    }
  }
}
