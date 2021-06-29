part of 'sequence_bloc.dart';

abstract class SequenceState extends Equatable {
  const SequenceState();
}

class SequenceInitial extends SequenceState {
  @override
  List<Object> get props => [];
}

class SequenceReturn extends SequenceState {
  final List<int> hasil;

  SequenceReturn({required this.hasil});

  @override
  List<Object?> get props => [hasil];

}

class SequenceReturnInt extends SequenceState {
  final List<String> hasil;

  SequenceReturnInt({required this.hasil});

  @override
  List<Object?> get props => [hasil];

}