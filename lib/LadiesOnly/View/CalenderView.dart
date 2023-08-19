import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:riyad_test/Login/Controller/PhoneTextController.dart';
import 'package:table_calendar/table_calendar.dart';

import '../Controller/Calender.dart';

class CalendarWidget extends StatelessWidget {
  final CalendarController controller = Get.put(CalendarController());
  @override
  Widget build(BuildContext context) {
    final DateTime today = DateTime.now();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Obx(() {
            final selectedDate = controller.selectedDate.value;
            return TableCalendar(
              firstDay: today,
              lastDay: DateTime(2030),
              focusedDay: selectedDate ?? today,
              calendarFormat: CalendarFormat.week,
              selectedDayPredicate: (day) {
                return selectedDate != null && isSameDay(selectedDate, day);
              },
              calendarStyle: CalendarStyle(
                selectedDecoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.6), // Set the selected color
                  shape: BoxShape.circle,
                ),
                todayDecoration: BoxDecoration(
                  color: _getTodayColor(selectedDate),
                  shape: BoxShape.circle,
                ),
                disabledTextStyle: TextStyle(
                  color: _getDisabledTextColor(selectedDate),
                ),
                todayTextStyle: TextStyle(
                  color: _getTodayTextColor(selectedDate),
                ),
              ),
              daysOfWeekStyle: DaysOfWeekStyle(
                weekendStyle: TextStyle(color: Colors.red),
              ),
              headerStyle: HeaderStyle(
                formatButtonVisible: false, // Hide the format button
                titleCentered: true, // Align the header title to center
              ),
              weekendDays: const [
                DateTime.thursday,
                DateTime.friday,
                DateTime.saturday,
              ],
              availableGestures: AvailableGestures.horizontalSwipe,
              onDaySelected: (DateTime selectedDate, DateTime focusedDate) {
                controller.selectDate(selectedDate);
                print({controller.selectedDate.value});
                UserDataValue.dateTime =
                    controller.selectedDate.value ?? DateTime.now();
              },
            );
          }),
        ],
      ),
    );
  }

  Color _getDisabledTextColor(DateTime? selectedDate) {
    return selectedDate != null ? Colors.grey : Colors.grey;
  }

  Color _getTodayColor(DateTime? selectedDate) {
    if (selectedDate != null && isSameDay(selectedDate, DateTime.now())) {
      return Colors.grey; // Set the color for today's date
    } else {
      return Colors.transparent; // Set a transparent color for other days
    }
  }

  Color _getTodayTextColor(DateTime? selectedDate) {
    if (selectedDate != null && isSameDay(selectedDate, DateTime.now())) {
      return Colors.white; // Set the text color for today's date
    } else {
      return Colors.black; // Set the default text color for other days
    }
  }

  bool isSameDay(DateTime dateA, DateTime dateB) {
    return dateA.year == dateB.year &&
        dateA.month == dateB.month &&
        dateA.day == dateB.day;
  }
}
