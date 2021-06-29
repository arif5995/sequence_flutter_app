import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'sequence_event.dart';
part 'sequence_state.dart';

class SequenceBloc extends Bloc<SequenceEvent, SequenceState> {
  SequenceBloc() : super(SequenceInitial());

  @override
  Stream<SequenceState> mapEventToState(
    SequenceEvent event,
  ) async* {
    //Number 1
    if (event is SequenceNumberOne){
      List<int> hasil = [];
      late int i;
      for (i = 1; i <= event.nilaiN; i++){
        hasil.add(i);
      }
      print("hasil $hasil");
      yield SequenceReturn(hasil: hasil);
    }


    //Number 2
    if (event is SequenceNumberTwo){
        List<int> hasil = [];
        late int i;
        for (i = 1; i <= event.nilaiN; i++){
          hasil.add(i);
        }

        for (i = event.nilaiN - 1; i >= 1 ; i--){
          hasil.add(i);

        }
        print("hasil $hasil");
        yield SequenceReturn(hasil: hasil);
    }

    if (event is SequenceNumberThree){
//      List<int> hasil = [];
        List<int> hasil = [
          for (int i = 1; i <= event.nilaiN; i++)(i*10)+(i-1),
//          for ()
        ];
        print("hasil $hasil");
        yield SequenceReturn(hasil: hasil);
      }

    if (event is SequenceNumberFour){
      late int i;
      List<String> hasil = [];
      for (i = 1; i <= event.nilaiN; i++) {
        if (i % 5 == 0) {
          hasil.add("Lima");
        } else if (i % 7 == 0) {
          hasil.add("Tujuh");
        } else {
          hasil.add(i.toString());
        }
      }
      print("hasil $hasil");
      yield SequenceReturnInt(hasil: hasil);
    }
  }
}
