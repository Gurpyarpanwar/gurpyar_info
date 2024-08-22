part of 'dashboard/dashboard.dart';

class CustomSkillBox extends StatelessWidget {
  final Map<String,String> skill;
  const CustomSkillBox({super.key, required this.skill});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: AppColor.gray9E9E9E.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10)
      ),
      child:Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(skill['icon']??"",height: 50,width: 50,),
              xWidth(10),
              AppText(text: skill["name"], context: context)
            ],
          ),
      ),
    );
  }
}
