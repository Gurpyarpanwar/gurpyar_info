part of '../helpers.dart';

enum AppTextStyle { title, medium, regular, small }

class AppText extends StatelessWidget {
  final dynamic text;
  final dynamic color;
  final dynamic underlineColor;
  final AppTextStyle? style;
  final bool? underline;
  final bool? strikeThrough;
  final double? fontSize;
  final BuildContext context;
  final bool? capitalise;
  final int? maxlines;
  final TextAlign? textAlign;
  final String? fontFamily;
  final FontWeight? fontWeight;
  final double? lineHeight;
  final FontStyle? fontStyle;
  final double? letterSpacing;
  final TextOverflow? overflow;

  const AppText(
      {super.key,
      required this.text,
      this.color,
      this.style,
      this.maxlines,
      this.textAlign,
      this.underline,
      this.fontSize,
      this.fontFamily,
      this.fontWeight,
      this.lineHeight,
      this.fontStyle,
      this.underlineColor,
      this.strikeThrough,
      this.capitalise,
      this.letterSpacing,
      this.overflow, required this.context});

  @override
  Widget build(BuildContext context) {
    return Text(
      (capitalise != null && capitalise!
          ? text.toString().toUpperCase()
          : text.toString()),
      maxLines: maxlines,
      overflow: maxlines != null ? TextOverflow.ellipsis : null,
      textAlign: textAlign,
      style: getStyle(color ?? AppColor.black000000, fontSize,context),
    );
  }

  TextStyle getStyle(
    Color color,
    double? textSize,
    BuildContext context,
  ) {
    return TextStyle(
        overflow: overflow,
        color: color,
        letterSpacing: letterSpacing,
        fontWeight: fontWeight ?? FontWeight.w500,
        fontSize: textSize??CustomDeviceType.getMediumText(context),
        fontStyle: fontStyle ?? FontStyle.normal,
        height: lineHeight ?? 1.0,
        fontFamily: fontFamily ?? AppString.fontFamily,
        decorationColor: underlineColor ?? AppColor.black000000,
        decorationThickness: 1,
        decoration: strikeThrough != null && strikeThrough!
            ? TextDecoration.lineThrough
            : underline != null
                ? TextDecoration.underline
                : null);
  }

  FontWeight getWeight() {
    switch (style) {
      case AppTextStyle.title:
        return FontWeight.w600;
      case AppTextStyle.medium:
        return FontWeight.w500;
      case AppTextStyle.regular:
        return FontWeight.w400;
      case AppTextStyle.small:
        return FontWeight.w300;
      default:
        return FontWeight.w400;
    }
  }
}
