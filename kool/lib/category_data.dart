import 'package:flutter/cupertino.dart';
import 'package:kool/database_services.dart';

import 'category.dart';

class CategoryData extends ChangeNotifier {
  List<Category> categorys = [];

  void addCategory(String topic, String userId) async {
    Category category = await DatabaseServices.addCategory(topic, userId);
    categorys.add(category);
    notifyListeners();
  }

  void deleteCategory(Category category) {
    categorys.remove(category);
    // DatabaseServices.deleteCategory(category.id);
    notifyListeners();
  }
}
