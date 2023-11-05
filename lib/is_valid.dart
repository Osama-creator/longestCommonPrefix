bool isValid(String s) {
  List<String> pairs = ["()", "{}", "[]"];
  s.toUpperCase();
  while (s.contains(pairs[0]) || s.contains(pairs[1]) || s.contains(pairs[2])) {
    for (var i = 0; i < pairs.length; i++) {
      if (s.contains(pairs[i])) {
        s = s.replaceAll(pairs[i], "");
      }
    }
  }
  print(s);
  if (s.isEmpty) {
    return true;
  } else {
    return false;
  }
}
