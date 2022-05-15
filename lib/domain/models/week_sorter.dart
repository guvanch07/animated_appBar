class SortType {
  SortType({
    required this.today,
    required this.weekDay,
    required this.month,
    required this.day,
    required this.color,
    required this.isColor,
  });

  final String today;
  final String weekDay;
  final String month;
  final int day;
  final String color;
  final bool isColor;

  static List<SortType> getSortTypes = [
    SortType(
        day: 1,
        month: "jan",
        color: "red",
        today: "Today",
        isColor: true,
        weekDay: 'wed'),
    SortType(
        day: 1,
        month: "jan",
        color: "blue",
        today: "",
        isColor: true,
        weekDay: 'fri'),
    SortType(
        day: 2,
        month: "jan",
        color: "red",
        today: "",
        isColor: false,
        weekDay: 'thus'),
    SortType(
        day: 3,
        month: "wen",
        color: "blue",
        today: "",
        isColor: true,
        weekDay: 'mon'),
    SortType(
        day: 4,
        month: "jan",
        color: "red",
        today: "",
        isColor: false,
        weekDay: 'sun'),
    SortType(
        day: 5,
        month: "jan",
        color: "red",
        today: "",
        isColor: true,
        weekDay: 'mon'),
  ];
}
