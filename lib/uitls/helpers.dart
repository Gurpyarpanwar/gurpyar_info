
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gurpyar_info/uitls/all_getter.dart';
import 'package:gurpyar_info/uitls/device_type.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

part 'widgets/app_colors.dart';
part 'widgets/app_text.dart';
part 'widgets/custom_button.dart';
part 'app_strings.dart';
part 'widgets/custom_toast.dart';


void exit() {
  SystemNavigator.pop();
}


extension AlignExtension on Widget {
  Widget align({AlignmentGeometry alignment = Alignment.center}) {
    return Align(
      alignment: alignment,
      child:
          this, // 'this' refers to the widget you're calling the extension on
    );
  }
}
extension NumberFormatting on num {
  String toFormattedString() {
    if (this is double && this % 1 == 0) {
      // If the number is a whole double (no decimal part)
      return toInt().toString();
    } else if (this is double) {
      // If the number is a double with a decimal part
      return toStringAsFixed(2);
    } else {
      // For integers, return as is
      return toString();
    }
  }
}

extension StringCasingExtension on String {
  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';

  String toTitleCase() => replaceAll(RegExp(' +'), ' ')
      .split(' ')
      .map((str) => str.toCapitalized())
      .join(' ');

  String capitalizeEachWord() {
    String value = replaceAllMapped(RegExp('[A-Z][a-z]*'), (Match m) {
      return ' ${m.group(0)!}';
    }).trim();
    return value.split(' ').map((word) {
      if (word.isNotEmpty) {
        return word[0].toUpperCase() + word.substring(1);
      }
      return '';
    }).join(' ');
  }
}

double screenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double screenHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

SizedBox  yHeight(double height) {
  return SizedBox(
    height: height,
  );
}

SizedBox xWidth(double width) {
  return SizedBox(
    width: width,
  );
}

/// Navigator functions
void pushTo(BuildContext context, Widget widget) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
}

void pushReplacement(BuildContext context, Widget widget) {
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => widget));
}

void back(
  BuildContext context,
) {
  Navigator.pop(context);
}

void printLog(dynamic msg) {
  _printLog('👉👉👉\x1B[32m::=> ${msg.toString()}\x1B[0m');
}

void functionLog({required dynamic msg, required dynamic fun}) {
  _printLog("😡😡👉\x1B[31m${fun.toString()} ::==> ${msg.toString()}\x1B[0m");
}

void _printLog(dynamic msg) {
  if (kDebugMode) {
    debugPrint(msg.toString());
  }
}

void blocLog({required String msg, required String bloc}) {
  _printLog("\x1B[31m${bloc.toString()} ::==> ${msg.toString()}\x1B[0m");
}

Widget customLoader({
  double? height = 30,
  double? width = 30,
  Color color = Colors.black,
  double,
  value,
}) {
  return SizedBox(
    height: height,
    width: width,
    child: CircularProgressIndicator(
      color: color,
      value: value,
    ),
  );
}

Future<DateTime?> commonDatePicker(BuildContext context) async {
  try {
    return await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1947),
      lastDate: DateTime.now(),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.light(
              primary: AppColor.primary,
              onPrimary: AppColor.whiteFFFFFF,
              onSurface: AppColor.black000000, // body text color
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: AppColor.primary, // button text color
              ),
            ),
          ),
          child: child!,
        );
      },
    );
  } catch (e) {
    functionLog(fun: "commonDatePicker", msg: e.toString());
    return null;
  }
}

// // Launch url on web browser
// Future openUrl({required String url}) async {
//   if (await canLaunchUrl(Uri.parse(url))) {
//     return await launchUrl(Uri.parse(url),
//         mode: LaunchMode.externalApplication);
//   } else {
//     throw "Could not launch $url";
//   }
// }







