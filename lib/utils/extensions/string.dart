extension StringExtension on String {
  String captalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}
