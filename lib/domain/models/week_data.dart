class WeekDataModel {
  final String? week;
  final String? month;
  final int? day;
  final String? color;
  WeekDataModel({
    this.week,
    this.month,
    this.day,
    this.color,
  });

  factory WeekDataModel.fromJson(Map<String, dynamic> json) => WeekDataModel(
        week: json["week"],
        month: json["month"],
        day: json["day"],
        color: json["color"],
      );
}
