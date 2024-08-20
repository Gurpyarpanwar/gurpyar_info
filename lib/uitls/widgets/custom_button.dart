part of '../helpers.dart';

class Btn extends StatefulWidget {
  final String? title;
  final double? borderRadius;
  final Widget? child;
  final double? textPadding;
  final EdgeInsetsGeometry? customPadding;
  final bool? loading;
  final double? width;
  final double? loaderWidth;
  final double? loaderHeight;
  final double? height;
  final VoidCallback? onTap;
  final Color? backGroundColor;
  final Color? loaderColor;
  final Color? borderColor;
  final Color? textColor;
  final FontWeight? fontWeight;
  final double? fontSize;
  final String? fontFamily;
  final double? borderWidth;

  final List<BoxShadow>? boxShadow;
  final EdgeInsetsGeometry? margin;

  const Btn({
    Key? key,
    this.title,
    this.onTap,
    this.backGroundColor,
    this.textColor,
    this.fontWeight,
    this.fontSize,
    this.fontFamily,
    this.child,
    this.borderColor,
    this.borderWidth,
    this.loaderWidth = 20,
    this.loaderHeight = 20,
    this.loading,
    this.borderRadius,
    this.loaderColor,
    this.width,
    this.height,
    this.textPadding,
    this.customPadding,
    this.boxShadow,
    this.margin,
  }) : super(key: key);

  @override
  State<Btn> createState() => _BtnState();
}

class _BtnState extends State<Btn> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: AppColor.transparent,
      hoverColor: AppColor.transparent,
      onTap: (widget.loading ?? false) ? null : widget.onTap,
      child: Container(
        width: widget.width ?? double.infinity,
        height: widget.height,
        margin: widget.margin,
        decoration: BoxDecoration(
            color: widget.backGroundColor ?? AppColor.primary,
            borderRadius: BorderRadius.circular(widget.borderRadius ?? 10),
            boxShadow: widget.boxShadow,
            border: Border.all(
                color: widget.borderColor ?? AppColor.transparent,
                width: widget.borderWidth ?? 0)),
        child: Padding(
          padding: widget.customPadding ??
              EdgeInsets.all(widget.textPadding ?? 10),
          child: Center(
            child: (widget.loading ?? false)
                ? customLoader(
                    color: widget.loaderColor ?? AppColor.whiteFFFFFF,
                    height: widget.loaderHeight,
                    width: widget.loaderWidth)
                : (widget.child != null)
                    ? (widget.child)
                    : AppText(
              context: context,
                        text: (widget.title ?? ""),
                        fontWeight: widget.fontWeight??FontWeight.w500,
                        fontSize: CustomDeviceType.getSmallText(context),
                        fontFamily: widget.fontFamily??AppString.fontFamily,
                        color: widget.textColor ?? AppColor.whiteFFFFFF,
                      ),
          ),
        ),
      ),
    );
  }
}
