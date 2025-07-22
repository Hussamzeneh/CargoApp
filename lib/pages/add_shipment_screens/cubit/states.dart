abstract class AddShipmentStates {}

class AddShipmentInitialState extends AddShipmentStates {}

class AddShipmentLoadingState extends AddShipmentStates {}

class AddShipmentSuccessState extends AddShipmentStates {}

class AddShipmentErrorState extends AddShipmentStates {
  final String error;

  AddShipmentErrorState(this.error);
}
