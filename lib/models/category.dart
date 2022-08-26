import 'package:ios_reminders/common/widgets/category_icon.dart';

class Category{
  String id;
  String name;
  bool isChecked;
  final CategoryIcon icon;

  Category(
      {
        required this.icon,
        required this.id,
        required this.name,
        this.isChecked = true,
      });

  void toggleCheckBox(){
    isChecked =! isChecked;
  }

  // bool toggleIsChecked(){
  //   return isChecked;
  // }
}

// var category = Category(id:'1', name:'All');
