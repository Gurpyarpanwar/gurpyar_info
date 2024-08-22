import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gurpyar_info/uitls/assets.dart';
import 'package:gurpyar_info/uitls/device_type.dart';
import 'package:gurpyar_info/uitls/helpers.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../blocs/toggle_blocs/auth_toggle_blocs.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

part 'app_bar.dart';

part '../home_screen.dart';

part '../about_me.dart';
part '../custom_skill_box.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectedTab, ScreenParts>(
      builder: (context, state) {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(10.h), // Set this height
            child: AppBarWidget(
              selectedScreenPart: state,
            ),
          ),
          body: const SingleChildScrollView(
            child: Column(
              children: [
                HomeScreen(),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      AboutMe(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
