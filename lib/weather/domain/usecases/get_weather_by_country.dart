import 'package:weather/weather/domain/entities/weather.dart';
import 'package:weather/weather/domain/repository/weather_repository.dart';

class GetWeatherByCountryName {
  final WeatherRepository _weatherRepository;

  GetWeatherByCountryName(this._weatherRepository);

  Future<Weather> execute(String cityName) async {
    return await _weatherRepository.getWeatherByCityName(cityName);
  }
}
