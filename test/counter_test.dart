import 'package:flutter_test/flutter_test.dart';
import 'package:testing_1/counter.dart';

void main() {
  //given when then -> general description convention
  //each and every tests should be independent of each other(separate counter object should be created)
  // just like in youtube and youtube playlists similar tests can be grouped into one if tests are
  //similar to each other

  late Counter counter;
  //Pre-Test
  //setup-> test-> setup->test-> setup->test....
  //setupAll->test->test->test->test....
  setUp(() {
    counter = Counter(); //(independent counter Object for each test)
  });

  // setUpAll(() {
  //   counter = Counter(); //(test will fail because counter object is one and dependent)
  // });

  group("Counter class -", () {
    test(
        'given counter class when it is instantiated then value of count should be 0',
        () {
      //Arrange

      //Act
      final val = counter.count;
      //Assert
      expect(val, 0);
    });

    test(
        'given counter class when increment function is called then value should be 1',
        () {
      //Arrange

      //Act
      counter.increment();
      final val = counter.count;
      //assert
      expect(val, 1);
    });

    test(
        'given counter class when decrement function is called then value should be -1',
        () {
      //Arrange

      //Act
      counter.decrement();
      final val = counter.count;
      //assert
      expect(val, -1);
    });
  });

  //Post test
  //test->tearDown->test->tearDown->test->tearDown->test->tearDown->test....
  // tearDown(() => null);
  //similarly tearDownall
}
