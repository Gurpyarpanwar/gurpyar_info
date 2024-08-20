import 'dart:io';

import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gurpyar_info/app_bloc_provider.dart';
import 'package:gurpyar_info/ui/dashboard/dashboard.dart';
import 'package:gurpyar_info/ui/splash_screen.dart';
import 'package:gurpyar_info/uitls/all_getter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

part 'zboard_app_contact.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  HttpOverrides.global = MyHttpOverrides();
  runApp(OnBoardAppContact());
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
