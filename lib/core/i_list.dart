import 'package:equatable/equatable.dart';

class IList<T> extends Equatable {
  final List<T> _list;

  factory IList(List<T> list) {
    return IList._internal(List.from(list));
  }

  const IList._internal(this._list);

  IList<T> replaceItem(int index, T newItem) {
    if (index == -1) {
      return IList(_list);
    }

    return IList(
        [..._list.sublist(0, index), newItem, ..._list.sublist(index + 1)]);
  }

  IList<T> t(T item) {
    return IList([..._list, item]);
  }

  IList<T> h(T item) {
    return IList([item, ..._list]);
  }

  IList<T> insert(int index, T item) {
    return IList([..._list.sublist(0, index), item, ..._list.sublist(index)]);
  }

  T getItem(int index) {
    return _list[index];
  }

  IList<T> replaceFirstWhere(bool Function(T item) condition, T item) {
    final index = indexWhere(condition);
    final updatedList = replaceItem(index, item);
    return updatedList;
  }

  int indexWhere(bool Function(T item) condition) {
    int go(List<T> ls, bool Function(T) f, int i) {
      if (i >= _list.length) {
        return -1;
      } else {
        final t = _list[i];
        if (f(t)) {
          return i;
        } else {
          return go(ls, f, i + 1);
        }
      }
    }

    return go(_list, condition, 0);
  }

  List<T> getList() {
    return _list;
  }

  IList<T> copy() {
    return IList<T>(_list);
  }

  ///warning, no default, use with caution
  T getWhere(bool Function(T item) condition, {T orElse}) {
    final index = indexWhere(condition);
    if (index == -1 && orElse != null) {
      return orElse;
    }

    return getItem(index);
  }

  IList<T> removeIndex(int index) {
    return IList([..._list.sublist(0, index), ..._list.sublist(index + 1)]);
  }

  IList<T> removeWhere(bool Function(T item) condition) {
    final index = indexWhere(condition);
    return removeIndex(index);
  }

  @override
  List<Object> get props => [_list];
}
