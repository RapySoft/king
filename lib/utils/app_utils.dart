import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';

@injectable
class AppUtils {
  showLoggerEx(dynamic data) async {
    if (kDebugMode) {
      Logger().d(data);
    }
  }

  static showLogger(dynamic data) {
    if (kDebugMode) {
      Logger().d(data);
    }
  }

  static String getDate() => DateFormat("yyyy-MM-dd").format(DateTime.now());

  String getDateHours() =>
      DateFormat("yyyy-MM-dd hh:mm a").format(DateTime.now());

  String getDateHour() => DateFormat("yyyy-MM-dd hh:mm").format(DateTime.now());

  static String formatDate(DateTime date) =>
      DateFormat("yyyy-MM-dd").format(date);

  static Future<void> showDatePickerController(
      TextEditingController controller, BuildContext context) async {
    final date = controller.text;
    var initialDate = DateTime.now();

    if (date.isNotEmpty) {
      initialDate = DateTime.parse(date);
    }

    final pickedDate = await showDatePicker(
        context: context,
        initialDate: initialDate,
        firstDate: DateTime(2018),
        lastDate: DateTime(DateTime.now().year + 1));

    if (pickedDate != null) {
      final date = DateFormat("yyyy-MM-dd").format(pickedDate);

      controller.text = date;
    }
  }

  static Future<String?> showDatePickerString(
      {required BuildContext context, String? date}) async {
    var initialDate = DateTime.now();

    if (date != null && date.isNotEmpty) {
      initialDate = DateTime.parse(date);
    }

    final pickedDate = await showDatePicker(
        context: context,
        initialDate: initialDate,
        firstDate: DateTime(2018),
        lastDate: DateTime(DateTime.now().year + 1));

    if (pickedDate != null) {
      return AppUtils.formatDate(pickedDate);
    } else {
      return null;
    }
  }

  static Color getColorIndex(int index) {
    const List<Color> listColors = [
      Colors.red,
      Colors.pink,
      Colors.purple,
      Colors.deepPurple,
      Colors.indigo,
      Colors.blue,
      Colors.lightBlue,
      Colors.cyan,
      Colors.teal,
      Colors.green,
      Colors.lightGreen,
      Colors.lime,
      Colors.yellow,
      Colors.amber,
      Colors.orange,
      Colors.deepOrange,
      Colors.brown,
      Colors.grey,
      Colors.blueGrey,
      Colors.black,
    ];

    return listColors[index];
  }

  static Color getForegroundColor(int index) {
    final color = getColorIndex(index);

    return color == Colors.yellow ||
            color == Colors.amber ||
            color == Colors.lime
        ? Colors.black
        : Colors.white;
  }

  static String numFormat(String n) {
    try {
      var numArr = n.split('');
      String revStr = "";
      int thousands = 0;
      for (var i = numArr.length - 1; i >= 0; i--) {
        if (numArr[i].toString() == ".") {
          thousands = 0;
        } else {
          thousands++;
        }

        revStr = revStr + numArr[i];

        if (thousands == 3 &&
            i > 0 &&
            numArr[i - 1] != "." &&
            numArr[i - 1] != "-") {
          thousands = 0;
          revStr = '$revStr,';
        }
      }

      return revStr.split('').reversed.join('');
    } catch (ex) {
      return n;
    }
  }
}
