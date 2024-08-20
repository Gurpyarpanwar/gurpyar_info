import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gurpyar_info/uitls/device_type.dart';
import 'package:gurpyar_info/uitls/helpers.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../blocs/toggle_blocs/auth_toggle_blocs.dart';

part 'app_bar.dart';

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
          body: AppText(
            text: "ffffffff",
            context: context,
            fontSize: CustomDeviceType.getLargeText(context),
          ),
        );
      },
    );
  }
}
