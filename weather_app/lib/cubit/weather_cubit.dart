import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit(this.weatherService) : super(WeatherInitial());
  WeatherService weatherService = WeatherService();

  WeatherModel? weatherModel;
  String? cityName;
  void getWeather({required cityName}) async {
    try {
      emit(WeatherLoading());
      weatherModel = await weatherService.getWeather(cityName: cityName);
      emit(WeatherSuccess());
    } catch (_) {
      emit(WeatherFailure());
    }
  }
}
