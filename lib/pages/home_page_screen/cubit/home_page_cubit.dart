import 'package:bloc/bloc.dart';
import 'package:bloceproject/pages/home_page_screen/cubit/sates.dart';
import 'package:bloceproject/shared/dio_helper/dio_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageCubit extends Cubit<HomePageStates>{
  HomePageCubit() : super (HomePageInitialState());

  static HomePageCubit get(context)=> BlocProvider.of(context);

  List<String> announcementImages = [];

  getAnnouncements() async{
    emit(HomePageLoadingState());

    var response = await DioHelper.getAnnouncements();

    for(var image in response.data) announcementImages.add(image);
  }

}