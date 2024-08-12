import 'package:flutter_bloc/flutter_bloc.dart';


class AnimatedContainerToggleBloc extends Bloc<bool, bool> {
  AnimatedContainerToggleBloc() : super(false) {
    on<bool>((event, emit) {
      emit(event);
    });
  }
}
