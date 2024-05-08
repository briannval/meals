import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/models/meal.dart';

// STATE NOTIFIER PROVIDER

// state here is a list of meals (as declared)
class FavoriteMealsNotifier extends StateNotifier<List<Meal>> {
  FavoriteMealsNotifier() : super([]);
  // initialize state to be an empty list first

  bool toggleMealFavoriteStatus(Meal meal) {
    if (state.contains(meal)) {
      // if is favorite, then unfavorite
      state = state.where((m) => m.id != meal.id).toList();
      return false;
    } else {
      // if is not yet favorite, then favorite
      state = [...state, meal]; // spread state and put meal in
      return true;
    }
  }
}

final favoriteMealsProvider =
    StateNotifierProvider<FavoriteMealsNotifier, List<Meal>>(
  (ref) => FavoriteMealsNotifier(),
);
