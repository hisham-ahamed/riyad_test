import 'package:get/get.dart';



class CalendarController extends GetxController {
  Rx<DateTime?> selectedDate = Rx<DateTime?>(null);

  void selectDate(DateTime? date) {
    if (date != null) {
      selectedDate.value = date;
    } else {
      selectedDate.value = null;
    }
  }
}