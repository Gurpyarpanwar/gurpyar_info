part of 'dashboard/dashboard.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double itemWidth = 250;
    int crossAxisCount = (screenWidth / itemWidth).floor();
    final List<Map<String,String>> skillList=[
      {
        "icon":Assets.cPlain,
        "name":"C Language",
        "link":""
      },{
        "icon":Assets.dartOriginal,
        "name":"Dart",
        "link":""
      },{
        "icon":Assets.flutterPlain,
        "name":"Flutter",
        "link":""
      },{
        "icon":Assets.gitPlain,
        "name":"Git hub",
        "link":""
      },{
        "icon":Assets.firebaseIcon,
        "name":"Firebase",
        "link":""
      }
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        yHeight(30),
        AppText(
          text: "About Me",
          context: context,
          fontWeight: FontWeight.bold,
          fontSize: CustomDeviceType.getLargeText(context) + 10,
        ).align(),
        yHeight(20),
        AppText(
          text: "A bit about me",
          context: context,
          fontSize: CustomDeviceType.getLargeText(context),
          color: AppColor.blue1A96F0,
          fontWeight: FontWeight.bold,
        ),
        yHeight(10),
        AppText(
          text:
              "I am a skilled Flutter developer with 4 years of experience in creating high-performance, cross-platform mobile apps. My expertise includes Dart, state management, and responsive design, with a focus on delivering clean, efficient code. I’m passionate about building user-friendly apps and enjoy tackling challenging projects that push the boundaries of mobile development. Collaboration and continuous learning are key to my approach, ensuring top-quality results in every project.",
          context: context,
          fontSize: CustomDeviceType.getSmallText(context),
          lineHeight: 1.3,
        ),
        yHeight(20),
        AppText(
          text: "Technologies and Tools",
          context: context,
          fontSize: CustomDeviceType.getLargeText(context),
          color: AppColor.blue1A96F0,
          fontWeight: FontWeight.bold,
        ),
        yHeight(10),
        AppText(
          text:
              "Using a combination of cutting-edge technologies and reliable open-source software I build user-focused, performant apps and websites for smartphones, tablets, and desktops.",
          context: context,
          fontSize: CustomDeviceType.getSmallText(context),
          lineHeight: 1.3,
        ),
        yHeight(20),
        GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          itemCount: skillList.length,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: (1 / .4),
          ),
          itemBuilder: (context, index) {
            return CustomSkillBox(skill:skillList[index]);
          },
        )
      ],
    );
  }
}
