import 'package:flutter_food_list_assignment/item_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final ItemStateNotifierProvider=StateNotifierProvider<ItemStateNotifier,ItemState>((ref) =>ItemStateNotifier() );
