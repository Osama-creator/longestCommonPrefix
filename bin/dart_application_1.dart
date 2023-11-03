void main(List<String> arguments) {
  int romanToInt(String s) {
    int result = 0;
    Map<String, int> romanValues = {
      'I': 1,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000,
    };
    Map<String, int> romanSpecilaCases = {
      "IV": 4,
      "IX": 9,
      "XL": 40,
      "XC": 90,
      "CD": 400,
      "CM": 900,
    };
    List specialCases = ["IV", "IX", "XL", "XC", "CD", "CM"];
    List mySpecialCases = [];
    s.toUpperCase();
    for (var i = 0; i < specialCases.length; i++) {
      if (s.contains(specialCases[i])) {
        mySpecialCases.add(specialCases[i]);
        s = s.replaceAll(specialCases[i], "");
      }
    }
    List stringToList = s.split("");
    for (var element in mySpecialCases) {
      result += romanSpecilaCases[element]!;
    }
    for (var i = 0; i < stringToList.length; i++) {
      result += romanValues[stringToList[i]]!;
    }
    return result;
  }

  print(romanToInt("MCMXCIV"));
}
