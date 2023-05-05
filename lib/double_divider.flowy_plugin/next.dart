List<int> next(List<int> path) {
  // List<int> nextPath = List<int>.from(path, growable: true);
  List<int> nextPath = [];
  if (nextPath.isEmpty) {
    return nextPath;
  }
  final last = nextPath.last;
  nextPath.removeLast();
  nextPath.add(last + 1);
  return nextPath;
}
