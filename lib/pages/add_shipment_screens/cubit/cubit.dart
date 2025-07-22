import 'package:bloc/bloc.dart';
import 'package:bloceproject/pages/add_shipment_screens/cubit/states.dart';
import 'package:bloceproject/shared/constants/user_text_controllers.dart';
import 'package:bloceproject/shared/constants/user_text_validators.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddShipmentCubit extends Cubit<AddShipmentStates> {
  AddShipmentCubit() : super(AddShipmentInitialState());

  static AddShipmentCubit get(context) => BlocProvider.of(context);

  UserTextController userTextController = UserTextController();
  UserTextValidators userTextValidators = UserTextValidators();


}
