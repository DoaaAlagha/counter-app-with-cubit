import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled12/counter_cubit/states.dart';

class CounterCubit extends Cubit<CounterState>{
  CounterCubit():super(InitialState());
  int counter=0;
  void plus(){
    counter++;
   emit(PluslState());
}
void minus(){
    counter--;
    emit(PluslState());
}
}







