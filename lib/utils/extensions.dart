extension StringExtensions on String {
  String capitalize() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';
}

extension StringExtension on String {
  String toCapitalize() {
    String targetString = this;
    List<String> stringSeparatedBySpace = targetString.toLowerCase().split(" ");
    List<String> capitalizedWord = [];

    for (var word in stringSeparatedBySpace) {
      word.isEmpty
          ? ""
          : capitalizedWord.add("${word[0].toUpperCase()}${word.substring(1)}");
    }

    return capitalizedWord.join(" ");
  }
}

extension Round on num {
  int get roundUpAbs => isNegative ? floor() : ceil();
}
