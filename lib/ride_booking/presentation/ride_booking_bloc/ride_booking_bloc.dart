import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'ride_booking_event.dart';
part 'ride_booking_state.dart';

class RideBookingBloc extends Bloc<RideBookingEvent, RideBookingState> {
  RideBookingBloc() : super(RideBookingInitial()) {
    on<RideBookingEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
