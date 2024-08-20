part of 'dashboard.dart';

enum ScreenParts { home, about, services, projects, contact }

class AppBarWidget extends StatelessWidget {
  final ScreenParts selectedScreenPart;

  const AppBarWidget({super.key, required this.selectedScreenPart});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white, // Background color of the container
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2), // Shadow color with opacity
            spreadRadius: 1, // The spread of the shadow
            blurRadius: 5, // How much to blur the shadow
            offset: const Offset(0,
                2), // The offset of the shadow (x,y). Set y to a positive value for shadow at the bottom.
          ),
        ],
      ),
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
           Expanded(
            flex:CustomDeviceType.isGreaterThanMobile(context)? 9:4,
            child: SizedBox(),
          ),
          Expanded(
              flex: 2, child: btnDeco(name: "Home", type: ScreenParts.home)),
          xWidth(10),
          Expanded(
            flex: 2,
            child: btnDeco(name: "About", type: ScreenParts.about),
          ),
          xWidth(10),
          Expanded(
              flex: 2,
              child: btnDeco(name: "Services", type: ScreenParts.services)),
          xWidth(10),
          Expanded(
            flex: 2,
            child: btnDeco(name: "Contact", type: ScreenParts.contact),
          ),
          xWidth(10),
        ],
      ),
    );
  }

  Widget btnDeco({required String name, required ScreenParts type}) {
    return Btn(
      title: name,
      textPadding: 5,
      backGroundColor: type == selectedScreenPart
          ? AppColor.blue1A96F0
          : AppColor.transparent,
      textColor: type == selectedScreenPart
          ? AppColor.whiteFFFFFF
          : AppColor.black000000,
    );
  }
}
