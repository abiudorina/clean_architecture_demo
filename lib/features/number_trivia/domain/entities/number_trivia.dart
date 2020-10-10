import 'package:equatable/equatable.dart';

/// [Equatable] helps with comparing 2 objects with the == operator
///
/// in flutter if 2 objects have the same data they will not be equal
/// unless they point to the same location in memory
///
/// To fix this, we have to override the equals(==) operator with our own custom implementation
///
/// Equatable helps us reduce the amount of boiler plate code by doing that for us
///
/// NO TDD is done here because this class does not have any logic
class NumberTrivia extends Equatable {
  final String text;
  final int number;

  NumberTrivia({this.text, this.number}) : super([text, number]);
}
