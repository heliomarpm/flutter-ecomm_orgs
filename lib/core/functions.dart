T dartify<T>(dynamic value) {
  // if (jsObject == null) return null;

  if (value is T) return value;

  if (value is List) {
    return value.map(dartify).toList() as T;
  }

  if (value is Map) {
    Map<String, T> map = {};
    for (var key in value.keys) {
      map[key] = dartify(value[key]);
    }
    return map as T;
  }
  return value;
}