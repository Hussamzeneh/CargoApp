import 'package:bloc/bloc.dart';
import 'package:bloceproject/models/shipment_model.dart';
import 'package:bloceproject/pages/home_page_screen/cubit/sates.dart';
import 'package:bloceproject/shared/dio_helper/dio_helper.dart';
import 'package:bloceproject/shared/storage/storage_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageCubit extends Cubit<HomePageStates> {
  HomePageCubit() : super(HomePageInitialState());

  static HomePageCubit get(context) => BlocProvider.of(context);

  List<String> announcementImages = [];
  List<ShipmentModel> shipments = [];

  getAnnouncements() async {
    emit(HomePageLoadingState());

    var response = await DioHelper.getAnnouncements();

    for (var image in response.data) announcementImages.add(image);
  }

  getShipments() async {
    emit(HomePageLoadingState());

    try {
      var response = await DioHelper.getShipments(token: StorageHelper.getUserToken()!);
      print(response.statusCode);
      print(response.data);
      if (response.statusCode == 200) {
        for (var shipment in response.data['shipments']) {
          shipments.add(ShipmentModel.fromJson(shipment));
        }
        emit(HomePageSuccessState());
      } else {
        emit(HomePageErrorState('xxxxxxxx'));
      }
    } catch (e, h) {
      print(e.toString());
      print(h.toString());
      emit(HomePageErrorState(e.toString()));
    }
  }
}
