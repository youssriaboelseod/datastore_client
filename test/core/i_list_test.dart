import 'package:datastore_client/core/i_list.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    "Two instances should be equal",
    () {
      expect(IList(const [1, 42, 3, 4]), IList(const [1, 42, 3, 4]));
    },
  );

  test(
    "Should replace list item at index",
    () {
      //arrange
      final ls = IList(const [1, 2, 3, 4]);
      //action
      final actual = ls.replaceItem(1, 42);
      //assert
      expect(actual, IList(const [1, 42, 3, 4]));
    },
  );

  test(
    "Should return old list if index is -1",
    () {
      //arrange
      final ls = IList(const [1, 2, 3, 4]);
      //action
      final actual = ls.replaceItem(-1, 42);
      //assert
      expect(actual, IList(const [1, 2, 3, 4]));
    },
  );

  test(
    "Should add item at tail",
    () {
      //arrange
      final ls = IList(const [1, 2, 3, 4]);
      //action
      final actual = ls.t(42);
      //assert
      expect(actual, IList(const [1, 2, 3, 4, 42]));
    },
  );

  test(
    "Should add item at head",
    () {
      //arrange
      final ls = IList(const [1, 2, 3, 4]);
      //action
      final actual = ls.h(42);
      //assert
      expect(actual, IList(const [42, 1, 2, 3, 4]));
    },
  );

  test(
    "Should insert item at index",
    () {
      //arrange
      final ls = IList(const [1, 2, 3, 4]);
      //action
      final actual = ls.insert(2, 42);
      //assert
      expect(actual, IList(const [1, 2, 42, 3, 4]));
    },
  );

  test(
    "Should return item at index",
    () {
      //arrange
      final ls = IList(const [1, 2, 42, 3, 4]);
      //action
      final actual = ls.getItem(2);
      //assert
      expect(actual, 42);
    },
  );

  test(
    "Should return a mutable list",
    () {
      //arrange
      final ls = IList(const [1, 2, 3, 4]);
      //action
      final actual = ls.getList();
      //assert
      expect(actual, [1, 2, 3, 4]);
    },
  );

  test(
    "Should return a copy of the IList",
    () {
      //arrange
      final ls = IList(const [1, 2, 3, 4]);
      //action
      final actual = ls.copy();
      //assert
      expect(actual, IList(const [1, 2, 3, 4]));
    },
  );

  test(
    "Should return the index where a condition is true",
    () {
      //arrange
      final ls = IList(const [1, 2, 3, 42, 4]);
      //action
      final actual = ls.indexWhere((item) => item == 42);
      //assert
      expect(actual, 3);
    },
  );

  test(
    "Should return -1 if condition is false everywhere",
    () {
      //arrange
      final ls = IList(const [1, 2, 3, 42, 4]);
      //action
      final actual = ls.indexWhere((item) => item == 43);
      //assert
      expect(actual, -1);
    },
  );

  test(
    "Should return IList with index removed",
    () {
      //arrange
      final ls = IList(const [1, 2, 3, 42, 4]);
      //action
      final actual = ls.removeIndex(2);
      //assert
      expect(actual, IList(const [1, 2, 42, 4]));
    },
  );

  test(
    "Should return IList with index removed where condition is true",
    () {
      //arrange
      final ls = IList(const [1, 2, 3, 42, 4]);
      //action
      final actual = ls.removeWhere((item) => item == 42);
      //assert
      expect(actual, IList(const [1, 2, 3, 4]));
    },
  );

  test(
    "Should return IList with index replaced with item where condition is true",
    () {
      //arrange
      final ls = IList(const [1, 2, 3, 42, 4]);
      //action
      final actual = ls.replaceFirstWhere((item) => item == 42, 69);
      //assert
      expect(actual, IList(const [1, 2, 3, 69, 4]));
    },
  );

  test(
    "Should return a list item where condition is true",
    () {
      //arrange
      final ls = IList(const [1, 2, 3, 42, 4]);
      //action
      final actual = ls.getWhere((item) => item == 42);
      //assert
      expect(actual, 42);
    },
  );

  test(
    "Should return 69",
    () {
      //arrange
      final ls = IList(const [1, 2, 3, 42, 4]);
      //action
      final actual = ls.getWhere((item) => item == 420, orElse: 69);
      //assert
      expect(actual, 69);
    },
  );
}
