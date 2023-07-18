import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'airbnb_management_event.dart';
part 'airbnb_management_state.dart';

class AirbnbManagementBloc
    extends Bloc<AirbnbManagementEvent, AirbnbManagementState> {
  AirbnbManagementBloc() : super(AirbnbManagementInitial()) {
    on<AirbnbManagementEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
