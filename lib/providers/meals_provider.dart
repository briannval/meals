import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/data/dummy_data.dart';

// NORMAL PROVIDER

/*
PROVIDER is useful for DYNAMIC data and CROSS-WIDGET state
*/

final mealsProvider = Provider((ref) {
  return dummyMeals;
});
