import 'package:bloceproject/Pages/home_page_screen/home_page_components/home_page_button.dart';
import 'package:bloceproject/pages/home_page_screen/cubit/sates.dart';
import 'package:bloceproject/pages/shipments_screen/cubit/cubit.dart';
import 'package:bloceproject/pages/shipments_screen/cubit/status.dart';
import 'package:bloceproject/pages/shipments_screen/shipments_component/component_shipmentStatus.dart';
import 'package:bloceproject/pages/shipments_screen/shipments_component/shipments_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class ShipmintPageScreen extends StatelessWidget {
  const ShipmintPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ShipmintPageCubit(),
      child: BlocConsumer<ShipmintPageCubit, ShipmintPageStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var ShipmintCubitObject = ShipmintPageCubit.get(context);

          return Scaffold(
            appBar: AppBar(),
            body: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ShipmentsComponent(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
