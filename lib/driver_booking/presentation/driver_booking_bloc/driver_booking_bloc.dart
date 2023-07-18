import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'driver_booking_event.dart';
part 'driver_booking_state.dart';

class DriverBookingBloc extends Bloc<DriverBookingEvent, DriverBookingState> {
  DriverBookingBloc() : super(DriverBookingInitial()) {
    on<DriverBookingEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
