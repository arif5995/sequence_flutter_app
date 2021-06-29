part of 'sequence_bloc.dart';

abstract class SequenceEvent extends Equatable {
  const SequenceEvent();
}

class SequenceNumberOne extends SequenceEvent{
  final int nilaiN;

  SequenceNumberOne({required this.nilaiN});

  @override
  List<Object?> get props => [nilaiN];

}

class SequenceNumberTwo extends SequenceEvent{
  final int nilaiN;

  SequenceNumberTwo({required this.nilaiN});

  @override
  List<Object?> get props => [nilaiN];

}

class SequenceNumberThree extends SequenceEvent{
  final int nilaiN;

  SequenceNumberThree({required this.nilaiN});

  @override
  List<Object?> get props => [nilaiN];

}

class SequenceNumberFour extends SequenceEvent{
  final int nilaiN;

  SequenceNumberFour({required this.nilaiN});

  @override
  List<Object?> get props => [nilaiN];

}
