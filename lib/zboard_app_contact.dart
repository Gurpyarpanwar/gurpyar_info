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
      child: ResponsiveSizer(builder: (context, orientation, screenType) {
        return MaterialApp(
          navigatorKey: Getters.navigatorKey,
          debugShowCheckedModeBanner: false,
          title: 'Gurpyar Info',
          theme: ThemeData(scaffoldBackgroundColor: Colors.white),
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
