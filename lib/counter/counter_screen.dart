import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/counter/cubit/cubit.dart';

import 'cubit/states.dart';

class CounterScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit,CounterStates>(
        listener: (context,state)
        {
          if(state is CounterMinusState) print('minus state');
          if(state is CounterPlusState) print('plus state');
        },
        builder: (context,state){
          return  Scaffold(
          appBar: AppBar(
          title: const Text(
          'counter',
          ),
          ),
          body: Center(
          child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          TextButton(
          onPressed: ()
          {
          CounterCubit.get(context).minus();
          },
          child:const Text(
          'Minus',
          style: TextStyle(
          fontSize: 20
          ),
          )
          ),
          Padding(
          padding: const EdgeInsets.symmetric(
          horizontal: 20
          ),
          child: Text(
          '${CounterCubit.get(context).counter}',
          style: const TextStyle(
          fontSize: 30,
          ),
          ),
          ),
          TextButton(
          onPressed: (){
          CounterCubit.get(context).plus();
          },
          child:const Text(
          'Plus',
          style: TextStyle(
          fontSize: 20,
          ),
          )
          ),
          ],
          ),
          ),
          );
        },
      ),
    );
  }
}
