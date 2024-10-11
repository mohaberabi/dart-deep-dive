class Range extends Iterable {
  final int range;

  const Range(this.range);

  @override
  Iterator get iterator => _RangIterator(range);
}

class _RangIterator implements Iterator {
  final int range;

  _RangIterator(this.range);

  int _curr = -1;

  @override
  get current => _curr;

  @override
  bool moveNext() {
    _curr++;
    return _curr < range;
  }
}
