part of 'main_scr_of_avaibility.dart';

class _JobOfferSection extends StatelessWidget {
  const _JobOfferSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ReUsebleProductionWidget(
      title: "My job offers",
      maintitle: "All of your today’s productions will be displayed here.",
      path: ImagePath.offer,
      height: 100,
      widget: Column(
        children: [
          Text(
            "Job offers are shown here! Keep your profile updated to stay relevant for new opportunities.",
            style: Style.headline2.copyWith(fontWeight: FontWeight.w400),
          ),
          const Spacer(),
          Row(
            children: [
              Text("Go to my profile",
                  style: Style.headline1.copyWith(fontSize: 14)),
              const Icon(
                Icons.arrow_forward_ios,
                size: 11,
              )
            ],
          )
        ],
      ),
    );
  }
}

class _StartedPostSection extends StatelessWidget {
  const _StartedPostSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ReUsebleProductionWidget(
      widget: Text(
          "Posts that are extra relevant to you can be marked with a star and will be shown here for easy access.",
          style: Style.headline2.copyWith(fontWeight: FontWeight.w400)),
      title: "Today s productions",
      maintitle: "All of your today’s productions will be displayed here.",
      path: ImagePath.star,
    );
  }
}
