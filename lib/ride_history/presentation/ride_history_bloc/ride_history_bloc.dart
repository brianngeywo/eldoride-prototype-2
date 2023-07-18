import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'ride_history_event.dart';
part 'ride_history_state.dart';

class RideHistoryBloc extends Bloc<RideHistoryEvent, RideHistoryState> {
  RideHistoryBloc() : super(RideHistoryInitial()) {
    on<RideHistoryEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
