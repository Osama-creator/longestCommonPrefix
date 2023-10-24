void main(List<String> arguments) {
  int findCenterIndex(List numbers) {
    int length = numbers.length;
    if (length % 2 == 1) {
      int centerIndex = length ~/ 2;
      return centerIndex;
    } else {
      return -1;
    }
  }

  bool isPalindrome(int x) {
    List mainList = x.toString().split("");
    int listCenter = findCenterIndex(mainList);

    if (listCenter != -1) {
      mainList.removeAt(listCenter);
    }
    final middle = mainList.length ~/ 2;
    List part1 = mainList.sublist(0, middle);
    List part2 = mainList.sublist(middle);
    if (part1.join() == part2.reversed.join()) {
      return true;
    } else {
      return false;
    }
  }

  print(isPalindrome(11));
}
