import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/home/cubit/state.dart';
import 'package:test1/models/products.dart';
import 'package:test1/ui/newelse_screen.dart';
import 'package:test1/ui/newsettings_screen.dart';
import 'package:test1/ui/profile.dart';
import 'package:test1/ui/users_screen.dart';

import '../login/login_screen.dart';
import '../show_product/newhome_screen.dart';
import 'cubit/cubit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() =>_HomeScreenState();

}
ProductsModel? _productsModel;

class _HomeScreenState extends State<HomeScreen> {
  int currentindex=0;
  State<HomeScreen> createState() => _HomeScreenState();
  List<Widget>screens=[
    NewHomeScreen(),
    Profile(),
    NewSettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocConsumer<HomeCubit,HomeStates>(
        listener: (context,state){

          if(state is HomeSuccessStates){
            _productsModel=state.productsModel;
            print(state.productsModel.message);
          }
        },
        builder: (context,state){
          return Directionality(
            textDirection: isEnglish?TextDirection.ltr:TextDirection.rtl,
            child: Scaffold(

              body: screens[currentindex],

              bottomNavigationBar: BottomNavigationBar(
                currentIndex: currentindex,
                items:  [
                  BottomNavigationBarItem(
                    icon:Icon(Icons.home),
                    label: IsEnglish('Home','المنزل'),
                    backgroundColor: Colors.purple,
                  ),
                  BottomNavigationBarItem(
                    icon:Icon(Icons.person),
                    label: IsEnglish('Profile','أخرى'),
                    backgroundColor: Colors.red,
                  ),
                  BottomNavigationBarItem(
                    icon:Icon(Icons.settings),
                    label: IsEnglish('Settings','الإعدادات'),
                    backgroundColor: Colors.blue,
                  ),
                ],
                onTap: (index){
                  setState(() {
                    currentindex=index;
                  });
                },
              ),

            ),
          );
        },

      ),
    );
  }
}