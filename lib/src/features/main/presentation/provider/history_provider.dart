import 'package:flutter_clean_architecture/src/features/main/domain/usecase/history_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'history_provider.g.dart';

@riverpod
class History extends _$History {
  @override
  Future<List<String>> build() async {
    return ref.watch(getHistoryProvider.future);
  }

  addStoryHistory(String id) async {
    if (!state.hasValue) return;

    final temp = List<String>.from(state.value!);
    temp.add(id);
    ref.watch(setHistoryProvider(history: temp).future);

    state = AsyncData(temp);
  }

  clearStoryHistory() async {
    ref.watch(clearHistoryProvider.future);
    ref.invalidateSelf();
  }
}
