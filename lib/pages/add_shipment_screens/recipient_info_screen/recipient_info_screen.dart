import 'package:bloceproject/pages/add_shipment_screens/cubit/cubit.dart';
import 'package:bloceproject/pages/add_shipment_screens/cubit/states.dart';
import 'package:bloceproject/shared/component/customized_botton.dart';
import 'package:bloceproject/shared/component/show_toast.dart';
import 'package:bloceproject/shared/component/validated_text_field.dart';
import 'package:bloceproject/shared/constants/app_routes/app_routes.dart';
import 'package:bloceproject/shared/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class RecipientInfoScreen extends StatelessWidget {
  const RecipientInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<AddShipmentCubit>();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height * 0.5,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35.0),
                  ),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {context.go(AppRoutes.homeScreen);},
                        icon: Icon(Icons.arrow_back),
                      ),
                      const Text('Add Shipment'),
                    ],
                  ),
                ),
                const Text('Recipient Info'),
                ValidatedTextField(
                  icon: ConstIcons.nameIcon,
                  controller: cubit.userTextController.nameController,
                  validator: cubit.userTextValidators.nameValidator,
                  errorText: 'name cannot be empty',
                  hintText: 'name',
                ),
                ValidatedTextField(
                  icon: ConstIcons.phoneIcon,
                  controller: cubit.userTextController.phoneController,
                  validator: cubit.userTextValidators.phoneValidator,
                  errorText: 'phone cannot be empty',
                  hintText: 'phone',
                ),
                ValidatedTextField(
                  icon: ConstIcons.emailIcon,
                  controller: cubit.userTextController.emailController,
                  validator: cubit.userTextValidators.emailValidator,
                  errorText: 'email cannot be empty',
                  hintText: 'email',
                  hasNextText: false,
                ),
                CustomizedButton(
                  title: 'Next',
                  condition: cubit.state is! AddShipmentLoadingState,
                  onPressed: () async {
                    if (!cubit.userTextValidators.nameValidator.currentState!
                            .validate() ||
                        !cubit.userTextValidators.phoneValidator.currentState!
                            .validate() ||
                        !cubit.userTextValidators.emailValidator.currentState!
                            .validate()) {
                      return;
                    }
                    await cubit.addRecipientInfo();
                    if (cubit.state is AddShipmentSuccessState) {
                      context.go(AppRoutes.shipmentInfoScreen);
                      final successState =
                          cubit.state as AddShipmentSuccessState;
                      showToast(
                        context: context,
                        text: successState.message,
                        color: Constants.errorColor,
                      );
                    } else if (cubit.state is AddShipmentErrorState) {
                      final errorState = cubit.state as AddShipmentErrorState;
                      showToast(
                        context: context,
                        text: errorState.error,
                        color: Constants.errorColor,
                      );
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
