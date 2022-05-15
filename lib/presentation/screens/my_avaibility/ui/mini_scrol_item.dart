part of 'main_scr_of_avaibility.dart';

class _MiniWeekScrollWidget extends StatelessWidget {
  const _MiniWeekScrollWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: SortType.getSortTypes.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 10),
            child: _MiniWeekContainerItem(sort: SortType.getSortTypes[index]),
          );
        },
      ),
    );
  }
}

class _MiniWeekContainerItem extends StatelessWidget {
  const _MiniWeekContainerItem({
    Key? key,
    required this.sort,
  }) : super(key: key);
  final SortType sort;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      height: 50,
      decoration: BoxDecoration(
        color: AppColors.cardDark,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(children: [
            sort.isColor
                ? Text(sort.today ?? '',
                    style: Style.headline3
                        .copyWith(fontSize: 10, color: Colors.white38))
                : const SizedBox.shrink(),
            const SizedBox(width: 3),
            Text(sort.weekDay,
                style:
                    Style.headline3.copyWith(fontSize: 10, color: Colors.white))
          ]),
          Row(
            children: [
              sort.isColor
                  ? Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                          color: _mapper.colorHandler(sort),
                          shape: BoxShape.circle),
                    )
                  : const SizedBox.shrink(),
              const SizedBox(width: 3),
              Text(sort.day.toString(),
                  style: Style.headlineDays
                      .copyWith(fontSize: 10, color: Colors.white)),
              const SizedBox(width: 3),
              Text(sort.month,
                  style: Style.headline3
                      .copyWith(fontSize: 10, color: Colors.white)),
            ],
          )
        ],
      ),
    );
  }
}
