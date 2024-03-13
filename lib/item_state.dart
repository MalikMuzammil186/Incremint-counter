import 'package:flutter/foundation.dart';
import 'package:flutter_food_list_assignment/list_items.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
@immutable
  sealed class ItemState {}

  @immutable
 final class  ItemInitialState extends ItemState {}
  @immutable
 final  class ItemLoadedState extends ItemState {
    final List<ListItems> items;
    ItemLoadedState({required this.items});
  }


class ItemStateNotifier extends StateNotifier<ItemState> {
  ItemStateNotifier():super(ItemInitialState());
 

  increment(int index){
    var count = updateList[index].quantity;
    count=count+1;
    updateList[index].quantity = count;
    double price = FoodItemList[index].price * count;
    updateList[index].price = price;
    state = ItemLoadedState(items: updateList);
  }


  decrement(int index){
    var count=updateList[index].quantity;
    if (count>1) {
       count=count-1;
    }
    updateList[index].quantity=count;
    double mprice=FoodItemList[index].price*count;
    updateList[index].price=mprice;
    state=ItemLoadedState(items: updateList);
  }
}