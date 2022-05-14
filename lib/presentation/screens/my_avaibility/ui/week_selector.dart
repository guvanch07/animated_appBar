part of 'main_scr_of_avaibility.dart';

class _WeekScrollWidget extends StatelessWidget {
  const _WeekScrollWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 111,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: SortType.getSortTypes.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 10),
            child: _WeekContainerItem(sort: SortType.getSortTypes[index]),
          );
        },
      ),
    );
  }
}

class _WeekContainerItem extends StatelessWidget {
  const _WeekContainerItem({
    Key? key,
    required this.sort,
  }) : super(key: key);
  final SortType sort;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      width: 62,
      decoration: BoxDecoration(
        color: AppColors.cardDark,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          sort.isColor
              ? Text(
                  sort.today ?? '',
                  style: Style.headline3.copyWith(color: Colors.white38),
                )
              : const SizedBox.shrink(),
          Text(
            sort.weekDay,
            style: Style.headline3.copyWith(color: Colors.white),
          ),
          Text(
            sort.month,
            style: Style.headline3.copyWith(fontSize: 10, color: Colors.white),
          ),
          Text(
            sort.day.toString(),
            style: Style.headlineDays.copyWith(color: Colors.white),
          ),
          sort.isColor
              ? Container(
                  height: 10,
                  width: 10,
                  decoration:
                      BoxDecoration(color: sort.color, shape: BoxShape.circle),
                )
              : const SizedBox.shrink()
        ],
      ),
    );
  }
}
