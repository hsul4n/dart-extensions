extension StringExtension on String {
  String toCamelCase() => this
      .replaceAllMapped(
          RegExp(r'(?<=[a-z])[A-Z]'), (Match m) => ('_' + m.group(0)!))
      .toLowerCase();

  String capitalize() => this[0].toUpperCase() + this.substring(1);
}
