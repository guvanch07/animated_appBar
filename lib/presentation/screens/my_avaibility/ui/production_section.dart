part of 'main_scr_of_avaibility.dart';

class _ProductionTodaySection extends StatelessWidget {
  const _ProductionTodaySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text("Today\’s productions", style: Style.headline1),
          SizedBox(height: 10),
          _ProductionTextWidget(
              path: ImagePath.image1,
              subTitle: 'Sweden  Jan 14, 2022 - Feb 23, 2023 ',
              title: 'Production Name That is Long'),
          SizedBox(height: 15),
          _ProductionTextWidget(
              path: ImagePath.image2,
              subTitle: 'Sweden  Jan 14, 2022 - Feb 23, 2023 ',
              title: 'What has bee seen very very long te...'),
        ],
      ),
    );
  }
}

class _ProductionTextWidget extends StatelessWidget {
  const _ProductionTextWidget({
    Key? key,
    required this.path,
    required this.title,
    required this.subTitle,
  }) : super(key: key);
  final String path;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return CardHelper(
      padding: 0,
      height: 70,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
              child: Image.asset(path)),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: Style.headline1.copyWith(fontSize: 14)),
                Text(subTitle, style: Style.headline2.copyWith(fontSize: 10)),
              ],
            ),
          ),
          const Icon(Icons.arrow_forward_ios, size: 12),
          const SizedBox(width: 5),
        ],
      ),
    );
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