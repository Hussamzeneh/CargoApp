import 'package:bloc/bloc.dart';
import 'package:bloceproject/pages/home_page_screen/cubit/sates.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageCubit extends Cubit<HomePageStates>{
  HomePageCubit() : super (HomePageInitialState());

  static HomePageCubit get(context)=> BlocProvider.of(context);



}