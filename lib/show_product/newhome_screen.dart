import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test1/components/compnents.dart';
import 'package:test1/models/products.dart';
import 'package:test1/show_product/cubit/cubit.dart';
import 'package:test1/show_product/cubit/state.dart';
import 'package:test1/ui/messenger_screen.dart';
import 'package:test1/ui/product_screen.dart';
import 'package:test1/else/products.dart';

import '../ui/add_product.dart';
import '../ui/filtter_screen.dart';
import '../login/login_screen.dart';

List<Products> product = [
  Products(
      Picture:
          'https://images.ctfassets.net/6jpeaipefazr/1q3zcvQrYzfDakrHweU9AB/b8c1e26a8f0756e7d1066a36ba743e84/Aubergine.jpg',
      name: 'Aubergine',
      Sale: 45,
      Price: 70,
      views: 78,
      comments: 15,
      expiredate: 9,
      dateofexpire: 'Dec 28, 2021',
      likes: 1026),
  Products(
      Picture:
          'https://www.jessicagavin.com/wp-content/uploads/2019/02/carrots-benefits-pin.jpg',
      name: 'Carrot',
      Sale: 1500,
      Price: 2700,
      views: 195,
      comments: 77,
      expiredate: 4,
      dateofexpire: 'Jan 13, 2022',
      likes: 765),
  Products(
      Picture:
          'https://www.flavcity.com/wp-content/uploads/2018/05/healthy-meal-prep-recipes.jpg',
      name: 'Meal',
      Sale: 8700,
      Price: 100,
      views: 15,
      comments: 4,
      expiredate: 12,
      dateofexpire: 'Feb 18, 2022',
      likes: 4078),
  Products(
      Picture:
          'https://static01.nyt.com/images/2019/10/06/well/meat1/meat1-superJumbo.jpg',
      name: 'Meat',
      Sale: 780,
      Price: 200,
      views: 900,
      comments: 250,
      expiredate: 3,
      dateofexpire: 'Mar 1, 2022',
      likes: 685),
  Products(
      Picture:
          'https://ichef.bbci.co.uk/news/976/cpsprodpb/6756/production/_121445462_gettyimages-1304509523.jpg',
      name: 'Pills',
      Sale: 150,
      Price: 900,
      views: 87,
      comments: 40,
      expiredate: 7,
      dateofexpire: 'Apr 10, 2022',
      likes: 420),
  Products(
      Picture:
          'https://cdn.loveandlemons.com/wp-content/uploads/2020/03/how-to-cook-rice.jpg',
      name: 'Rice',
      Sale: 2500,
      Price: 400,
      views: 9,
      comments: 0,
      expiredate: 5,
      dateofexpire: 'May 28, 2022',
      likes: 555),
  Products(
      Picture:
          'https://media.self.com/photos/5b3ba6370d3bd228697466c3/4:3/w_2560%2Cc_limit/tomatoes.jpg',
      name: 'Tomato',
      Sale: 3600,
      Price: 450,
      views: 77,
      comments: 20,
      expiredate: 10,
      dateofexpire: 'Jun 19, 2022',
      likes: 3340),
];
ProductsModel? _productsModel;

class NewHomeScreen extends StatelessWidget {
//  const NewHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => NewHomeScreenCubit()..getlistproduct(),
        child: BlocConsumer<NewHomeScreenCubit, NewHomeScreenStates>(
          listener: (context, state) {
            if (state is NewHomeSuccessStates) {
              print(state.productsModel.message);
              _productsModel = state.productsModel;
            }
          },
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(

                title: Text('Happy Shop'),
                actions: [
                  IconButton(
                    onPressed: () {
                       showSearch(context: context, delegate: DataSearch());
                    },
                    icon: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => FilterScreen()));
                      },
                      icon: Icon(Icons.filter_list)),
                ],
              ),
              body: state is NewHomeLoadingStates?Center(child: CircularProgressIndicator()):RefreshIndicator(
                onRefresh: ()async{NewHomeScreenCubit.get(context).getlistproduct();},
                child: ListView.separated(
                    itemBuilder: (context, index) =>
                        buildproduct(_productsModel!.data![index],product[index],context),
                    separatorBuilder: (context, index) => Padding(
                          padding: const EdgeInsetsDirectional.only(start: 20.0),
                          child: Container(
                            width: double.infinity,
                            // height: 1,
                            // color: Colors.grey[300],
                          ),
                        ),
                    itemCount: _productsModel!.data!.length),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => AddProduct(),
                  ));
                },
                child: Icon(
                  Icons.add,
                  size: 25,
                ),
              ),
            );
          },
        ));
  }
}

class DataSearch extends SearchDelegate<String> {
  final objects = [
    'ahmad',
    'mohammad',
    'wesam',
    'omar',
    'baraa',
    'ahmad',
    'mohammad',
    'wesam',
    'omar',
    'baraa',
    'ahmad',
    'mohammad',
    'wesam',
    'omar',
    'baraa',
  ];
  final recentobjects = [
    'ahmad',
    'mohammad',
    'wesam',
    'omar',
    'baraa',
  ];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ));
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return buildproduct(_productsModel!.data![0],product[5], context);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionlist = query.isEmpty ? recentobjects : objects;
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.access_time),
        title: Text(suggestionlist[index]),
      ),
      itemCount: suggestionlist.length,
    );
  }
}

Widget buildproduct(Data products,Products product, context) => Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 4,
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ProductScreen(
                          name: '${products.name}',
                          Picture: '${products.imgLink}',
                          Price: products.price!,
                          comments: products.commentsCount!,
                          expiredate: 15,
                          Sale: products.discountedPrice!,
                          views: product.views,
                          dateofexpiredate: '${products.expireDate}',
                          likes: product.likes,

                        )));
              },
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      width: double.infinity,
                      height: 250,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(products.imgLink.toString()),
                      )),
                    ),
                  ),
                  Positioned(
                    bottom: 40,
                    left: 70,
                    child: Container(
                      width: 320,
                      color: Colors.black54,
                      padding:
                          EdgeInsets.symmetric(vertical: 7.5, horizontal: 20),
                      child: Text(
                        '${products.name}',
                        style: TextStyle(fontSize: 26, color: Colors.white),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -5,
                    height: 20,
                    child: Container(
                        width: 400,
                        height: 20,
                        color: const Color.fromARGB(255, 255, 255, 255),
                        child: Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.attach_money,
                                    color: Color.fromARGB(255, 0, 211, 100),
                                    size: 15,
                                  ),
                                  Text('${products.discountedPrice}',
                                      style: const TextStyle(
                                          color: Color.fromARGB(255, 0, 211, 0),
                                          shadows: <Shadow>[
                                            Shadow(
                                                offset: Offset(0.02, 0.2),
                                                blurRadius: 2.0,
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255))
                                          ])),
                                  const SizedBox(width: 10),
                                  const Icon(
                                    Icons.attach_money,
                                    color: Colors.red,
                                    size: 15,
                                  ),
                                  Text('${products.price}',
                                      style: const TextStyle(
                                          color: Colors.red,
                                          decoration:
                                              TextDecoration.lineThrough,
                                          shadows: <Shadow>[
                                            Shadow(
                                                offset: Offset(0.02, 0.2),
                                                blurRadius: 2.0,
                                                color: Color.fromARGB(
                                                    255, 255, 255, 255))
                                          ]))
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 2,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(Icons.mode_comment_outlined, color: Colors.black45),
                      SizedBox(width: 10),
                      Text('${product.comments}',
                          style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.remove_red_eye,
                        color: Colors.black45,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('${product.views}',
                          style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.calendar_today_outlined,
                          color: Colors.black45),
                      SizedBox(
                        width: 6,
                      ),
                      Text('Exp: ${products.expireDate}',
                          style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
