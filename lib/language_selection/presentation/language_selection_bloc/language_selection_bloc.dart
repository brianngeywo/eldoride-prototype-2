import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'language_selection_event.dart';
part 'language_selection_state.dart';

class LanguageSelectionBloc
    extends Bloc<LanguageSelectionEvent, LanguageSelectionState> {
  LanguageSelectionBloc() : super(LanguageSelectionInitial()) {
    on<LanguageSelectionEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
