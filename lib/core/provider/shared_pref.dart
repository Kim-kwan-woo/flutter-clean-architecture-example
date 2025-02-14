import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'shared_pref.g.dart';

@riverpod
Future<SharedPreferences> sharedPreferences(SharedPreferencesRef ref) async {
  return await SharedPreferences.getInstance();
}
