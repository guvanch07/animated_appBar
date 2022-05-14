part of 'main_scr_of_avaibility.dart';

class _StackListWidget extends StatefulWidget {
  final ScrollController scrollController;
  final AlignmentGeometry position;

  const _StackListWidget({
    Key? key,
    required this.scrollController,
    required this.position,
  }) : super(key: key);

  @override
  State<_StackListWidget> createState() => __StackListWidgetState();
}

class __StackListWidgetState extends State<_StackListWidget> {
  @override
  Widget build(BuildContext context) {
    final double appBarHeight = Scaffold.of(context).appBarMaxHeight ?? 0.0;
    return Stack(
      children: [
        ListView(
          controller: widget.scrollController,
          children: const [
            _WeekScrollWidget(),
            SizedBox(height: 20),
            _ProfileSectionList(),
            _ProductionTodaySection(),
            _JobOfferSection(),
            _StartedPostSection(),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 50),
          height: appBarHeight,
          child: AnimatedAlign(
            alignment: widget.position,
            duration: const Duration(milliseconds: 200),
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 100),
              opacity: widget.position == Alignment.topCenter ? 0 : 1,
              child: const _MiniWeekScrollWidget(),
            ),
          ),
        ),
      ],
    );
  }
}
