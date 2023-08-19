import 'package:get/get.dart';

class HomeController extends GetxController {
  var favIndex = <int>[].obs;

  void toggleFavorite(int index) {
    if (favIndex.contains(index)) {
      favIndex.remove(index);
    } else {
      favIndex.add(index);
    }
  }

  var selectedIndexes = <int>[].obs;

  void toggleSelection(int index) {
    selectedIndexes.clear();
    if (selectedIndexes.contains(index)) {
      selectedIndexes.remove(index);
    } else {
      selectedIndexes.add(index);
    }
  }
}
