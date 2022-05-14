part of 'main_scr_of_avaibility.dart';

class _ProductionTodaySection extends StatelessWidget {
  const _ProductionTodaySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ReUsebleProductionWidget(
        widget: Text("All of your today’s productions will be displayed here.",
            style: Style.headline2.copyWith(fontWeight: FontWeight.w400)),
        title: "Today s productions",
        maintitle: "All of your today’s productions will be displayed here.",
        path: ImagePath.production,
        isWidgetExist: true,
        whichWidgetExist: const _CvNetwork());
  }
}

const List<String> listTitles = ["My network", "Quick hire", "My CV"];

const List<String> listSubTitles = [
  "Connect and grow your network",
  "Hire someone quickly today",
  "Keep your CV updated to get relevant offers",
];

class _CvNetwork extends StatelessWidget {
  const _CvNetwork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ColorfulCard(
          path: ImagePath.network,
          color: AppColors.gradien1,
          subTitle: listSubTitles[0],
          title: listTitles[0],
        ),
        ColorfulCard(
          path: ImagePath.qyre,
          color: AppColors.gradien2,
          subTitle: listSubTitles[1],
          title: listTitles[1],
        ),
        ColorfulCard(
          path: ImagePath.cv,
          color: AppColors.gradien3,
          subTitle: listSubTitles[2],
          title: listTitles[2],
        ),
      ],
    );
  }
}



// Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const Text("Today’s productions", style: Style.headline1),
//           const SizedBox(height: 10),
//           CardHelper(
//             height: 90,
//             width: MediaQuery.of(context).size.width,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 SvgPicture.asset(ImagePath.production),
//                 SizedBox(
//                   width: 250,
//                   child: Text(
//                       "All of your today’s productions will be displayed here.",
//                       style: Style.headline2
//                           .copyWith(fontWeight: FontWeight.w400)),
//                 )
//               ],
//             ),
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           const CvNetwork()
//         ],
//       ),
//     );