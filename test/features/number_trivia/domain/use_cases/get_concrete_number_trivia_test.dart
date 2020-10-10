import 'package:clean_architecture_demo/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:clean_architecture_demo/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:clean_architecture_demo/features/number_trivia/domain/use_cases/get_concrete_number_trivia.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {}

void main() {
  GetConcreteNumberTrivia useCase;
  MockNumberTriviaRepository mockNumberTriviaRepository;

  final int testNumber = 1;
  final NumberTrivia numberTrivia =
      NumberTrivia(number: 1, text: 'Test number 1');

  setUp(() {
    mockNumberTriviaRepository = MockNumberTriviaRepository();
    useCase = GetConcreteNumberTrivia(mockNumberTriviaRepository);
  });

  test('should get trivia for number from the repository ', () async {
    // arrange
    when(mockNumberTriviaRepository.getConcreteNumberTrivia(any))
        .thenAnswer((_) async => Right(numberTrivia));

    // act
    final result = await useCase(number: testNumber);

    // assert
    expect(result, Right(numberTrivia));
    verify(mockNumberTriviaRepository.getConcreteNumberTrivia(testNumber));
    verifyNoMoreInteractions(mockNumberTriviaRepository);
  });
}
