// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:weather/weather/data/datasource/remote_datasource.dart';
import 'package:weather/weather/domain/entities/weather.dart';
import 'package:weather/weather/domain/repository/base_weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository {
  final BaseRemoteDataSource baseRemoteDatasource;
  WeatherRepository({
    required this.baseRemoteDatasource,
  });
  @override
  Future<Weather> getWeatherByCityName(String cityName) async {
    return (await baseRemoteDatasource.getWeatherByCountryName(cityName))!;
  }
}
