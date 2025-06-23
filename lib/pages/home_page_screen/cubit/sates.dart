abstract class HomePageStates{}

class HomePageInitialState extends HomePageStates {}

class HomePageLoadingState extends HomePageStates {}

class HomePageSuccessState extends HomePageStates {}

class HomePageErrorState extends HomePageStates {
  final error ;

  HomePageErrorState(this.error);
}
