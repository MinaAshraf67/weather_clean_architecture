import 'dart:convert';

import 'package:weather/core/utils/constants.dart';
import 'package:weather/weather/data/models/weather_model.dart';
import 'package:dio/dio.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel?> getWeatherByCountryName(String cityName);
}

class RemoteDatasource implements BaseRemoteDataSource {
  final dio = Dio();

  @override
  Future<WeatherModel?> getWeatherByCountryName(String cityName) async {
    try {
      Response response = await dio.get(
        '${AppConstants.baseUrl}/weather',
        queryParameters: {'appid': AppConstants.apiKey, 'q': 'egypt'},
      );
      print(response.data.toString());
      return WeatherModel.fromJson(response.data);
    } catch (e) {
      print(e.toString());
    }
    return null;
  }
}
