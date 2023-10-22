void main(List<String> arguments) {
  void moveZeroes(List<int> nums) {
    int listLenght = nums.length;
    nums.removeWhere((element) => element == 0);
    int listRemaningLenght = listLenght - nums.length;
    for (var i = 0; i < listRemaningLenght; i++) {
      nums.add(0);
    }
  }

  moveZeroes([0, 1, 0, 3, 12]);
}

// [[s,o,o],[o, ,o]]