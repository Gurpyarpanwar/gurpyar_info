part of 'main.dart';

class OnBoardAppContact extends StatefulWidget {
  const OnBoardAppContact({super.key});

  @override
  State<OnBoardAppContact> createState() => _OnBoardAppContactState();
}

class _OnBoardAppContactState extends State<OnBoardAppContact> {
  final botToastBuilder = BotToastInit();

  @override
  Widget build(BuildContext context) {
    return AppBlocProvider(
      child: ScreenUtilInit(
          designSize: Size(375, 812),
          // Set the design size (width, height) based on your design mockup
          minTextAdapt: true,
          // If true, it will adapt the minimum font size
          splitScreenMode: true,
          // If true, it will enable split screen support
          builder: (context, child) {
            return MaterialApp(
              // navigatorKey: Getters.navKey,todo:: add navigator key
              debugShowCheckedModeBanner: false,
              title: 'Gurpyar Info',
              home: Dashboard(),
              builder: (context, child) {
                child = botToastBuilder(context, child);
                return MediaQuery(
                    data: MediaQuery.of(context)
                        .copyWith(textScaler: const TextScaler.linear(1.0)),
                    child: child);
              },
            );
          }),
    );
  }
}
