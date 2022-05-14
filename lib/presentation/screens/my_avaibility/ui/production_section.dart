part of 'main_scr_of_avaibility.dart';

class _ProductionTodaySection extends StatelessWidget {
  const _ProductionTodaySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Today’s productions", style: Style.headline1),
          const SizedBox(height: 10),
          CardHelper(
            height: 90,
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset("assets/profile.svg"),
                SizedBox(
                  width: 250,
                  child: Text(
                      "All of your today\’s productions will be displayed here.",
                      style: Style.headline2
                          .copyWith(fontWeight: FontWeight.w400)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
