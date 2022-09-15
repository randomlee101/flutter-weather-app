import 'package:intl/intl.dart';

///Converts DateTime value to plaintext with a choice of returning time [bool? with_time] with the resulting string
dateToWords(String dateString, {bool? with_time})
{
  DateFormat dateFormat = DateFormat("dd MMM, yyyy ${with_time ?? false ? 'HH:mm a' : ''}");
  return dateFormat.format(DateTime.parse(dateString));
}