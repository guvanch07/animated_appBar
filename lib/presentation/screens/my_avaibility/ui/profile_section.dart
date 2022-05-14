part of 'main_scr_of_avaibility.dart';

class _ProfileSectionList extends StatelessWidget {
  const _ProfileSectionList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: _ProfileSection(),
          );
        },
      ),
    );
  }
}

class _ProfileSection extends StatelessWidget {
  const _ProfileSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardHelper(
      height: 136,
      width: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
              "Complete your profile tooptimize your exposure in job searches.",
              style: Style.headline1),
          // LinearPercentIndicator(
          //   width: 250.0,
          //   lineHeight: 6.0,
          //   percent: 0.7,
          //   backgroundColor: AppColors.activeColor,
          //   progressColor: AppColors.accent,
          //   barRadius: const Radius.circular(2),
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Text(
                "Complete profile",
                style: Style.headline2,
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 14,
              )
            ],
          )
        ],
      ),
    );
  }
}
