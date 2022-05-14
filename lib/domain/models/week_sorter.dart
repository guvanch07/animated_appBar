import 'package:flutter/material.dart';

class SortType {
  SortType({
    this.today,
    required this.weekDay,
    required this.month,
    required this.day,
    this.color,
    required this.isColor,
  });

  final String? today;
  final String weekDay;
  final String month;
  final int day;
  final Color? color;
  final bool isColor;

  static List<SortType> getSortTypes = [
    SortType(
        day: 1,
        month: "january",
        color: Colors.amber,
        today: "Today",
        isColor: true,
        weekDay: 'wed'),
    SortType(
        day: 1,
        month: "january",
        color: Colors.amber,
        today: "",
        isColor: true,
        weekDay: 'fri'),
    SortType(
        day: 2,
        month: "january",
        color: Colors.amber,
        today: "",
        isColor: false,
        weekDay: 'thus'),
    SortType(
        day: 3,
        month: "wen",
        color: Colors.amber,
        today: "",
        isColor: false,
        weekDay: 'mon'),
    SortType(
        day: 4,
        month: "january",
        color: Colors.amber,
        today: "",
        isColor: true,
        weekDay: 'sun'),
    SortType(
        day: 5,
        month: "january",
        color: Colors.amber,
        today: "",
        isColor: true,
        weekDay: 'mon'),
  ];
}
