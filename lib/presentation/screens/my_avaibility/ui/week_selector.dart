part of 'main_scr_of_avaibility.dart';

class _WeekScrollWidget extends StatelessWidget {
  const _WeekScrollWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
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
      margin: EdgeInsets.symmetric(vertical: _mapper.marginHandler(sort)),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      width: 62,
      decoration: BoxDecoration(
        color: AppColors.cardDark,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _mapper.textWidgetHandler(sort),
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
                  height: 9,
                  width: 9,
                  margin: const EdgeInsets.symmetric(vertical: 3),
                  decoration: BoxDecoration(
                      color: _mapper.colorHandler(sort),
                      shape: BoxShape.circle),
                )
              : const SizedBox.shrink()
        ],
      ),
    );
  }
}
