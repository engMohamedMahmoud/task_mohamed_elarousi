import 'package:fluttertoast/fluttertoast.dart';

class ToastUtils {
  static Future<bool?> showToast(String msg, {ToastGravity? gravity, bool isLong = false}) =>
    Fluttertoast.showToast(
        msg: msg,
        toastLength: isLong? Toast.LENGTH_LONG : Toast.LENGTH_SHORT,
        gravity: gravity ?? ToastGravity.CENTER,
        timeInSecForIosWeb: 2,
        fontSize: 16.0);

  static hideToast() => Fluttertoast.cancel();
}


