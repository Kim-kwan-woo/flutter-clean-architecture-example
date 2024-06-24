import 'package:flutter_clean_architecture/src/features/main/data/repository/local_repository/history_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'history_usecase.g.dart';

@riverpod
Future<List<String>> getHistory(GetHistoryRef ref) async {
  final repository = ref.watch(historyRepositoryProvider);
  return await repository.getHistory();
}

@riverpod
Future<bool> setHistory(SetHistoryRef ref,
    {required List<String> history}) async {
  final repository = ref.watch(historyRepositoryProvider);
  return await repository.setHistory(history);
}

@riverpod
Future<void> clearHistory(ClearHistoryRef ref) async {
  final repository = ref.watch(historyRepositoryProvider);
  return await repository.clearHistory();
}
