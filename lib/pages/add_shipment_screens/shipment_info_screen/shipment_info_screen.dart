import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../shared/component/validated_text_field.dart';
import '../../../shared/constants/constants.dart';
import '../cubit/cubit.dart';

class ShipmentInfoScreen extends StatelessWidget {
  const ShipmentInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<AddShipmentCubit>();
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35.0),
            ),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back),
                ),
                const Text('Add Shipment'),
              ],
            ),
          ),
          const Text('Shipment Info'),
          // ValidatedTextField(
          //   icon: Constants.nameIcon,
          //   controller: cubit.userTextController.nameController,
          //   validator: cubit.userTextValidators.nameValidator,
          //   errorText: 'name cannot be empty',
          //   hintText: 'name',
          // ),
          // ValidatedTextField(
          //   icon: Constants.phoneIcon,
          //   controller: cubit.userTextController.phoneController,
          //   validator: cubit.userTextValidators.phoneValidator,
          //   errorText: 'phone cannot be empty',
          //   hintText: 'phone',
          // ),
          // ValidatedTextField(
          //   icon: Constants.emailIcon,
          //   controller: cubit.userTextController.emailController,
          //   validator: cubit.userTextValidators.emailValidator,
          //   errorText: 'email cannot be empty',
          //   hintText: 'email',
          // ),
          // CustomizedButton(
          //   title: 'Next',
          //   condition: cubit.state is! AddShipmentLoadingState,
          //   onPressed: () {
          //     context.go(AppRoutes.shipmentInfoScreen);
          //   },
          // )
        ],
      ),
    );
  }
}
