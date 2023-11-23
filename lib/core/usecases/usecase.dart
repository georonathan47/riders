import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../error/failures.dart';


/// Blue print for usecase
abstract class UseCase<Type, Params> {
  /// Forward usecase classes to repositories
  Future<Either<Failure, Type>> call(Params params);
}

/// Used when usecase doesn't take any parameters
class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}

/// Used for token/string value required usecase
@Deprecated('Use ObjectParams. Define String as type')
class StringParams extends Equatable {
  /// Constructor
  @Deprecated('Use ObjectParams. Define String as type') const StringParams(this.value);

  /// Authorization token
  /// OR
  /// A single value parameter
  final String value;

  @override
  List<Object> get props => [value];
}

/// Used for list of strings value required usecase
@Deprecated('Use ObjectParams. Define List<String> as type')
class ListStringParams extends Equatable {
  /// Constructor
  @Deprecated('Use ObjectParams. Define List<String> as type') const ListStringParams(this.values);

  /// Document ids for firestore
  /// OR
  /// List of String value parameter
  final List<String> values;

  @override
  List<Object> get props => [values];
}

/// Generic params for all objects
class ObjectParams<T> extends Equatable {
  /// Constructor
  const ObjectParams(this.value);

  ///  object class instance
  final T value;

  @override
  List<Object> get props => [value as Object];
}

abstract class MultiUseCase<Type, Params, MultiParams> {
  /// Forward usecase classes to repositories
  Future<Either<Failure, Type>> call(Params params, MultiParams multiParams);
}
