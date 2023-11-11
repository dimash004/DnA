void showCurrentDateTime() {
  DateTime now = DateTime.now();
  String formattedDateTime = "${now.year}-${_formatNumber(now.month)}-${_formatNumber(now.day)} "
      "${_formatNumber(now.hour)}:${_formatNumber(now.minute)}:${_formatNumber(now.second)}";

  print("Current date and time : $formattedDateTime");
}

String _formatNumber(int number) {
  return number.toString().padLeft(2, '0');
}

void main() {
  showCurrentDateTime();
}
