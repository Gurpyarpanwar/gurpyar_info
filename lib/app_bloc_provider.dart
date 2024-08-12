import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gurpyar_info/blocs/toggle_blocs/auth_toggle_blocs.dart';

class AppBlocProvider extends StatelessWidget {
  final Widget child;

  const AppBlocProvider({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        /// toggle blocs
        BlocProvider(create: (context) => AnimatedContainerToggleBloc()),

      ],
      child: child,
    );
  }
}
