class MenuItem {
  String menuVal;
  String iconVal;

  MenuItem({required this.menuVal, required this.iconVal});
}

final List<MenuItem> menuItems = [
  MenuItem(menuVal: "Edit", iconVal: "assets/images/pencil.svg"),
  MenuItem(menuVal: "Delete", iconVal: "assets/images/Delete.svg"),
];
