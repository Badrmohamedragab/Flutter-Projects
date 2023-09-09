import 'package:basketball_points_counter_app/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterIncrementState> {
  CounterCubit() : super(CounterAIncrementState());

  int teamApoints = 0;

  int teamBpoints = 0;
  void counterIncrement({required String team, required int buttonNumber}) {
    if (team == 'A') {
      teamApoints += buttonNumber;
      emit(CounterAIncrementState());
    } else {
      teamBpoints += buttonNumber;
      emit(CounterBIncrementState());
    }
  }

  void reset() {
    teamApoints = 0;
    emit(CounterAIncrementState());
    teamBpoints = 0;
    emit(CounterBIncrementState());
  }
}
