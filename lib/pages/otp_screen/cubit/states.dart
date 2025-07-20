abstract class OtpScreenStates {}

class OtpScreenInitialState extends OtpScreenStates {}

class OtpScreenLoadingState extends OtpScreenStates {}

class OtpScreenSuccessState extends OtpScreenStates {}

class OtpScreenErrorState extends OtpScreenStates {
  final String error;

  OtpScreenErrorState(this.error);
}
