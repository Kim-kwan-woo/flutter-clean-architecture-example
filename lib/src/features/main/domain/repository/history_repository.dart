abstract class HistoryRepository {
  Future<List<String>> getHistory();

  Future<bool> setHistory(List<String> history);

  Future<void> clearHistory();
}
