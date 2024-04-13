import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled12/counter_cubit/cubit.dart';
import 'package:untitled12/counter_cubit/states.dart';
class Counter extends StatelessWidget {
   Counter({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit,CounterState>(
      listener: (context,state){},
      builder: (context,state){
        return Scaffold(
          appBar: AppBar(),
          body: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: (){
                BlocProvider.of<CounterCubit>(context).minus();
              }, icon:Icon(Icons.minimize)),
              Text('${BlocProvider.of<CounterCubit>(context).counter}'),
              IconButton(onPressed: (){
                BlocProvider.of<CounterCubit>(context).plus();

              }, icon:Icon(Icons.add))
            ],
          ),
        );
      },

    );
  }}
