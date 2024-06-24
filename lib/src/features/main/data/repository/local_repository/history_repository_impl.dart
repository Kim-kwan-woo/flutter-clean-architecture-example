import 'package:flutter_clean_architecture/src/features/main/data/datasource/local_data_source.dart/history_data_source.dart';
import 'package:flutter_clean_architecture/src/features/main/domain/repository/history_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'history_repository_impl.g.dart';

class HistoryRepositoryImpl implements HistoryRepository {
  HistoryRepositoryImpl({required HistoryDataSource source}) : _source = source;

  final HistoryDataSource _source;

  @override
  Future<void> clearHistory() async {
    await _source.clearHistory();
  }

  @override
  Future<List<String>> getHistory() async {
    return await _source.getHistory();
  }

  @override
  Future<bool> setHistory(List<String> history) async {
    return await _source.setHistory(history);
  }
}

@riverpod
HistoryRepository historyRepository(HistoryRepositoryRef ref) {
  final source = ref.watch(historyDataSourceProvider);
  return HistoryRepositoryImpl(source: source);
}
