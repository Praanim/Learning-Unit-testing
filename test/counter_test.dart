import 'package:flutter_test/flutter_test.dart';
import 'package:testing_1/counter.dart';

void main() {
  //given when then -> general description convention

  test(
      'given counter class when it is instantiated then value of count should be 0',
      () {
    //Arrange
    final Counter counter = Counter();
    //Act
    final val = counter.count;
    //Assert
    expect(val, 0);
  });
}
