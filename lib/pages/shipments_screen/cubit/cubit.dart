import 'package:bloc/bloc.dart';
import 'package:bloceproject/models/shipment_model.dart';
import 'package:bloceproject/pages/home_page_screen/cubit/sates.dart';
import 'package:bloceproject/pages/shipments_screen/cubit/status.dart';
import 'package:bloceproject/shared/dio_helper/dio_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShipmintPageCubit extends Cubit<ShipmintPageStates>{
  ShipmintPageCubit() : super (ShipmintPageInitialState());

  static ShipmintPageCubit get(context)=> BlocProvider.of(context);

  List<ShipmentModel> shipments =[];

  getShipmints() async{
    emit(ShipmintPageLoadingState());
    try{
    var response = await DioHelper.getshipmint();
    for(int i=0;i<response.data.length;i++)
      {
        shipments.add(ShipmentModel.fromJson(response.data[i]));
      }
    emit(ShipmintPageSuccessState());
    }catch(e){
      emit(ShipmintPageErrorState(e));

      print("object");
    }


  }

}