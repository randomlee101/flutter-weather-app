import 'package:intl/intl.dart';

dateToWords(String dateString, {bool? with_time})
{
  DateFormat dateFormat = DateFormat("dd MMM, yyyy ${with_time ?? false ? 'HH:mm a' : ''}");
  return dateFormat.format(DateTime.parse(dateString));
}