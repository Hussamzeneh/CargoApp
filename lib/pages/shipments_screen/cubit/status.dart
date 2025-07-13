abstract class ShipmintPageStates{}

class ShipmintPageInitialState extends ShipmintPageStates {}

class ShipmintPageLoadingState extends ShipmintPageStates {}

class ShipmintPageSuccessState extends ShipmintPageStates {}

class ShipmintPageErrorState extends ShipmintPageStates {
  final error ;

  ShipmintPageErrorState(this.error);
}
