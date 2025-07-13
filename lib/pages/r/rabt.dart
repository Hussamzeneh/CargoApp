import 'package:bloceproject/pages/r/cubit/cubit.dart';
import 'package:bloceproject/pages/r/cubit/status.dart';
import 'package:bloceproject/pages/r/r_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EstonWolff extends StatelessWidget {
  const EstonWolff({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => ProductsScreenCubit()..getProducts(),
      child: BlocConsumer <ProductsScreenCubit,ProductsScreenStates>(
        listener:(context, state)  {} ,
        builder:(context, state) {
          var productsCubitObject = ProductsScreenCubit.get(context);
        return  Scaffold(
            body:
            // state is! ProductsScreenLoadingState ? GridView.builder(
            //   itemBuilder: (context, index) => RComponent(productModel: productsCubitObject.products[index],),
            //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            // ) :
            CircularProgressIndicator(),
          );
        },

      ),
    );
  }
}
