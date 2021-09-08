import 'package:get/get.dart';
import 'package:mobile_dekho/Module/HomeModule/models/ItemModel.dart';

class ItemController extends GetxController{
  var items = List<ItemModel>.filled(0, ItemModel(0,"",(){}),growable: true).obs;

  @override
  void onInit() {
    // TODO: implement onInit
    getData();
    super.onInit();
  }

  void getData() async{
    await Future.delayed(Duration(microseconds: 500));
    var list = [
      ItemModel(1,"Samsung", (){}),
      ItemModel(2,"Xiaomi", (){}),
      ItemModel(3,"Realme", (){}),
      ItemModel(4,"Vivo", (){}),
      ItemModel(5,"Oppo", (){}),
      ItemModel(6,"Apple", (){}),
      ItemModel(7,"Symphony", (){}),
      ItemModel(8,"Tecno", (){}),
      ItemModel(9,"Walton", (){}),
      ItemModel(10,"Itel", (){}),
      ItemModel(11,"Infinix", (){}),
      ItemModel(12,"OnePlus", (){}),
      ItemModel(13,"Motorola", (){}),
      ItemModel(14,"Nokia", (){}),

    ];

    items.value = list;
  }
}