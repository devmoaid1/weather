import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:weather/core/api/api_provider.dart';
import 'package:weather/core/api/dio_consumer.dart';
import 'package:weather/weather/data/datasources/weather_remote_datasource.dart';
import 'package:weather/weather/data/repositories/weather_repository_impl.dart';
import 'package:weather/weather/domain/repositories/weather_repository.dart';
import 'package:weather/weather/domain/usecases/get_weather_by_city_name.dart';
import 'package:weather/weather/presentation/controllers/weather_controller.dart';

void setupLocator() {
  Get.lazyPut(() => Dio());
  Get.lazyPut<ApiProvider>(() => DioConsumer(dio: Get.find()));
  Get.lazyPut<WeatherRemoteDataSource>(
      () => WeatherRemoteDataSourceImpl(apiProvider: Get.find()));
  Get.lazyPut<WeatherRepository>(
      () => WeatherRepositoryImpl(weatherRemoteDataSource: Get.find()));

  Get.lazyPut(() => GetWeatherByCityName(weatherRepository: Get.find()));
  Get.lazyPut(() => WeatherController(getWeatherByCityName: Get.find()));
}
