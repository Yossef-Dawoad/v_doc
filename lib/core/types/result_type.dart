import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_type.freezed.dart';

@Freezed()
abstract class Result<T, E> with _$Result<T, E> {
  const factory Result.success(T data) = Success<T, E>;
  const factory Result.failure(E failure) = Failure<T, E>;
}
