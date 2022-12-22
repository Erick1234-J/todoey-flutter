class Tasks {
  late String name;
  late bool isSelected;

  Tasks({required this.name, this.isSelected = false});

  void toggleBox() {
    isSelected = !isSelected;
  }
}
