import 'package:flutter/material.dart';
import 'package:overtime_application/style/color_class.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: MediaQuery.of(context).size.width,
      child: TableCalendar(
        focusedDay: focusedDay,
        firstDay: DateTime(2021),
        lastDay: DateTime(2023),
        calendarFormat: format,
        onFormatChanged: (CalendarFormat format) {
          setState(() {
            format = format;
          });
        },
        startingDayOfWeek: StartingDayOfWeek.sunday,
        daysOfWeekVisible: true,
        onDaySelected: (
          DateTime selectDay,
          DateTime focusDay,
        ) {
          setState(() {
            selectedDay = selectDay;
            focusedDay = focusDay;
          });
          print(focusedDay);
        },
        selectedDayPredicate: (DateTime date) {
          return isSameDay(selectedDay, date);
        },
        calendarStyle: CalendarStyle(
          isTodayHighlighted: true,
          selectedDecoration: BoxDecoration(
              color: ColorClass.textcolor, shape: BoxShape.circle),
          selectedTextStyle: TextStyle(color: ColorClass.white),
          todayDecoration: BoxDecoration(
            color: ColorClass.buttoncolor,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
