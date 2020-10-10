import 'package:clean_architecture_demo/core/error/failures.dart';
import 'package:clean_architecture_demo/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:clean_architecture_demo/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class GetConcreteNumberTrivia {
  final NumberTriviaRepository numberTriviaRepository;

  GetConcreteNumberTrivia(this.numberTriviaRepository);

  /// dart contains callable classes, so we just use the [call()] method to
  /// make this class callable
  Future<Either<Failures, NumberTrivia>> call({@required int number}) async {
    return await numberTriviaRepository.getConcreteNumberTrivia(number);
  }
}
