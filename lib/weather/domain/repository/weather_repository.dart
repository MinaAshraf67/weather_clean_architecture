import 'package:weather/weather/domain/entities/weather.dart';

abstract class WeatherRepository {
  //Weather is enttity response from getWeather api
  //cityname is needed to make the reqeust
  Future<Weather> getWeatherByCityName(String cityName);
}
