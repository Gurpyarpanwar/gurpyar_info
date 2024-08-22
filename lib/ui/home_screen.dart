part of 'dashboard/dashboard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final imageSize = CustomDeviceType.isMobile(context)
        ? 200.0
        : CustomDeviceType.isTablet(context)
            ? 250.0
            : 300.0;
    final fontSize = CustomDeviceType.isMobile(context)
        ? 32.0
        : CustomDeviceType.isTablet(context)
            ? 45.0
            : 55.0;
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Assets.backgroundImage), fit: BoxFit.cover)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            yHeight(50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                if (!CustomDeviceType.isMobile(context))
                  Expanded(flex: 1, child: SizedBox()),
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(
                        text: "Hi, I am Gurpyar",
                        context: context,
                        fontWeight: FontWeight.bold,
                        fontSize: fontSize,
                      ),
                      AnimatedTextKit(
                        animatedTexts: [
                          TypewriterAnimatedText('Flutter Developer',
                              textStyle: TextStyle(
                                  fontSize: CustomDeviceType.isMobile(context)
                                      ? 30
                                      : 40,
                                  fontWeight: FontWeight.bold,
                                  color: AppColor.blue1A96F0),
                              speed: const Duration(milliseconds: 200),
                              cursor: ""),
                        ],
                        totalRepeatCount: 4,
                        pause: const Duration(milliseconds: 1000),
                        displayFullTextOnTap: true,
                        stopPauseOnTap: true,
                      ),
                      yHeight(20),
                      AppText(
                        text:
                            "I am a Front-End Developer. I am currently working at Paras Technologies as a Front-End Developer",
                        context: context,
                        fontWeight: FontWeight.w400,
                        lineHeight: 1.3,
                        fontSize: CustomDeviceType.getMediumText(context),
                      ),
                      yHeight(10),
                      Row(
                        children: [
                          SvgPicture.asset(
                              height: 40, width: 40, Assets.facebookIcon),
                          xWidth(10),
                          SvgPicture.asset(
                              height: 40, width: 40, Assets.instagramLogo),
                          xWidth(10),
                          SvgPicture.asset(
                              height: 40, width: 40, Assets.whatsappIcon),
                          xWidth(10),
                        ],
                      ),
                      yHeight(20),
                      Btn(
                        title: "Resume",
                        textPadding: 20,
                        width: screenWidth(context) * (0.25),
                        backGroundColor: AppColor.blue1A96F0,
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: SvgPicture.asset(
                    Assets.protocolImage,
                    width: imageSize,
                    height: imageSize,
                  ),
                ),
                if (!CustomDeviceType.isMobile(context))
                  Expanded(flex: 1, child: SizedBox()),
              ],
            ),
            yHeight(50),
          ],
        ),
      ),
    );
  }
}
