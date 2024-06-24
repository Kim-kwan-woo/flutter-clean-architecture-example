import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'history_data_source.g.dart';

abstract class HistoryDataSource {
  Future<List<String>> getHistory();

  Future<bool> setHistory(List<String> history);

  Future<void> clearHistory();
}

class HistoryDataSourceImpl implements HistoryDataSource {
  @override
  Future<List<String>> getHistory() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getStringList('storyHistories') ?? [];
  }

  @override
  Future<bool> setHistory(List<String> history) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return await prefs.setStringList('storyHistories', history);
  }

  @override
  Future<void> clearHistory() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }
}

@riverpod
HistoryDataSource historyDataSource(HistoryDataSourceRef ref) {
  return HistoryDataSourceImpl();
}
