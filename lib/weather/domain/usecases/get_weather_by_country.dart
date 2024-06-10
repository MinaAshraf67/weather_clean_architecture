import 'package:weather/weather/domain/entities/weather.dart';
import 'package:weather/weather/domain/repository/base_weather_repository.dart';

class GetWeatherByCountryName {
  final BaseWeatherRepository _baseWeatherRepository;

  GetWeatherByCountryName(this._baseWeatherRepository);

  Future<Weather> execute(String cityName) async {
    return await _baseWeatherRepository.getWeatherByCityName(cityName);
  }
}
