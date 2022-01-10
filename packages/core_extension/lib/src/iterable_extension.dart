extension IterableExtension<T> on Iterable<T?> {
  T? get firstOrNull {
    try {
      return this.first;
    } catch (_) {
      return null;
    }
  }

  T? get lastOrNull {
    try {
      return this.last;
    } catch (_) {
      return null;
    }
  }

  bool hasIndex(var index) => indexOrNull(index) != null;

  T? indexOrNull(final int index) {
    try {
      return this.elementAt(index);
    } catch (e) {
      return null;
    }
  }

  bool isExists(bool test(T? element)) {
    try {
      return this.find(test) != null;
    } catch (e) {
      return false;
    }
  }

  T? find(bool test(T? element)) {
    return this.firstWhere(test, orElse: () => null);
  }

  Iterable<dynamic> get flatten {
    final flattened = [];

    for (final T? item in this)
      item is List ? flattened.addAll(item.flatten) : flattened.add(item);

    return flattened;
  }

  Map<K, List<T?>> groupBy<K>(K Function(T?) fn) => fold(
      <K, List<T?>>{},
      (Map<K, List<T?>> map, T? element) =>
          map..putIfAbsent(fn(element), () => <T>[]).add(element));
}
