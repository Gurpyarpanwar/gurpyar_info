import 'package:flutter_bloc/flutter_bloc.dart';

import '../../ui/dashboard/dashboard.dart';

class AnimatedContainerToggleBloc extends Bloc<bool, bool> {
  AnimatedContainerToggleBloc() : super(false) {
    on<bool>((event, emit) {
      emit(event);
    });
  }
}

    class SelectedTab extends Bloc<ScreenParts, ScreenParts> {
  SelectedTab() : super(ScreenParts.home) {
    on<ScreenParts>((event, emit) {
      emit(event);
    });
  }
}
