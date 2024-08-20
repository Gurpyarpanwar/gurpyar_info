import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gurpyar_info/ui/dashboard/dashboard.dart';

import '../blocs/toggle_blocs/auth_toggle_blocs.dart';
import '../uitls/assets.dart';
import '../uitls/helpers.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    context.read<AnimatedContainerToggleBloc>().add(true);
    super.initState();
    Timer(const Duration(milliseconds: 800), () async {
      context.read<AnimatedContainerToggleBloc>().add(true);
    });
    Timer(const Duration(seconds: 3), () async {
      // if ((Getters.getLoginUser?.token == null) ||
      //     (Getters.getLoginUser?.token?.isEmpty ?? false)) {
      //   pushRemoveUtil(context, const LoginScreen());
      // } else {
      //   final message = await NotificationService.getInitialMessage();
      //   if (message != null) {
      //     context.read<NotificationBloc>().add(GetNotificationEvent());
      //
      pushTo(
        context,
        const Dashboard(),
      );
      //   } else {
      //     pushRemoveUtil(
      //       context,
      //       const DashBoard(),
      //     );
      //   }
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteFFFFFF,
      body: Center(
        child: BlocBuilder<AnimatedContainerToggleBloc, bool>(
          builder: (context, state) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 800),
              curve: Curves.linearToEaseOut,
              height: state ? screenHeight(context) * 0.15 : 0,
              child: Image.asset(
                Assets.welcome,
                fit: BoxFit.cover,
              ),
            );
          },
        ),
      ),
    );
  }
}
