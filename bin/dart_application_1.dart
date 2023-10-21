void main(List<String> arguments) {
  bool areAllEqual(List<dynamic> list) {
    if (list.isEmpty) {
      return true;
    }

    final firstItem = list[0];
    for (var item in list) {
      if (item != firstItem) {
        return false;
      }
    }
    return true;
  }

  String longestCommonPrefix(List<String> strs) {
    List checkList = [];
    List<String> myReturnList = [];
    String commenPrefix = "";
    for (var c = 0; c < 100; c++) {
      for (var s = 0; s < strs.length; s++) {
        if (s >= 0 && s < strs.length && c >= 0 && c < strs[s].length) {
          checkList.add(strs[s][c].toLowerCase());
        } else {
          break;
        }
      }
      if (areAllEqual(checkList) && checkList.length == strs.length) {
        checkList.isNotEmpty
            ? myReturnList.add(checkList[0])
            : checkList.clear();
      } else {
        break;
      }
      checkList.clear();
      commenPrefix = myReturnList.join();
    }
    return commenPrefix;
  }

  print(longestCommonPrefix(["ab", "a"]));
}
