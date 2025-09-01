import 'package:bloceproject/pages/add_shipment_screens/cubit/cubit.dart';
import 'package:bloceproject/pages/add_shipment_screens/cubit/states.dart';
import 'package:bloceproject/pages/add_shipment_screens/invoice_screen/invoice_details_row_component.dart';
import 'package:bloceproject/shared/constants/constants.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../shared/component/app_bar_icon_component.dart';

class InvoiceScreen extends StatelessWidget {
  const InvoiceScreen({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<AddShipmentCubit>()..getShipmentInvoice(id: id);
    return BlocConsumer<AddShipmentCubit, AddShipmentStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var screenHeight = MediaQuery.of(context).size.height;
        return Scaffold(
          appBar: AppBar(
            title: const Text('Invoice Screen'),
            centerTitle: true,
            backgroundColor: Theme.of(context).primaryColor,
            leading: AppBarIconComponent(
              icon: Icons.arrow_back,
              onTap: () => Get.back(),
            ),
            elevation: Theme.of(context).appBarTheme.elevation,
            shape: Theme.of(context).appBarTheme.shape,
          ),
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ConditionalBuilder(
                condition: state is AddShipmentSuccessState,
                builder: (context) {
                  var shipmentInvoice = cubit.shipmentInvoice;
                  print(
                      '-------------- qr code url: ${shipmentInvoice.qrCodeUrl}');
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Container(
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(30),
                      //     color: Constants.primaryColor,
                      //   ),
                      //   height: screenHeight * 0.14,
                      //   width: double.infinity,
                      //   alignment: Alignment.topLeft,
                      //   child: Padding(
                      //     padding: const EdgeInsets.all(15.0),
                      //     child: Center(
                      //       child: Row(
                      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //         children: [
                      //           AppBarIconComponent(
                      //             icon: Icons.arrow_back,
                      //             onTap: Get.back,
                      //           )
                      //         ],
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      Text(
                        'Barcode',
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                              color: Constants.primaryColor,
                            ),
                      ),
                      SvgPicture.network(
                        width: 150,
                        height: 150,
                        shipmentInvoice.qrCodeUrl!,
                        semanticsLabel: 'A shark?!',
                        placeholderBuilder: (BuildContext context) => Container(
                          padding: const EdgeInsets.all(30.0),
                          child: const CircularProgressIndicator(),
                        ),
                      ),
                      Text(
                        'Invoice Details',
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                              color: Constants.primaryColor,
                            ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              InvoiceDetailsRowComponent(
                                icon: Icons.list_alt_rounded,
                                title: 'Invoice Number',
                                value: shipmentInvoice.invoiceNumber!,
                              ),
                              InvoiceDetailsRowComponent(
                                icon: Icons.type_specimen_rounded,
                                title: 'shipment type',
                                value: shipmentInvoice.type,
                              ),
                              InvoiceDetailsRowComponent(
                                icon: Icons.list_rounded,
                                title: 'number of pieces',
                                value:
                                    shipmentInvoice.numberOfPieces!.toString(),
                              ),
                              InvoiceDetailsRowComponent(
                                icon: Icons.timer_outlined,
                                title: 'Shipment wight',
                                value: '${shipmentInvoice.weight} kg',
                              ),
                              InvoiceDetailsRowComponent(
                                icon: Icons.fire_truck,
                                title: 'delivery price',
                                value: '\$${shipmentInvoice.deliveryPrice}',
                              ),
                              Divider(),
                              InvoiceDetailsRowComponent(
                                icon: Icons.attach_money_rounded,
                                title: 'total amount',
                                value: '\$${shipmentInvoice.totalAmount}',
                              ),
                            ],
                          ),
                        ),
                      ),
                      Text(
                        'Recipient Information',
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                              color: Constants.primaryColor,
                            ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              InvoiceDetailsRowComponent(
                                icon: ConstIcons.nameIcon,
                                title: 'Recipient name',
                                // value: 'xxx',
                                value: shipmentInvoice.recipient!.userName,
                              ),
                              InvoiceDetailsRowComponent(
                                icon: ConstIcons.phoneIcon,
                                title: 'phone number',
                                // value: 'xxx',
                                value: shipmentInvoice.recipient!.phone,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
                fallback: (context) => const Center(
                      child: CircularProgressIndicator(),
                    )),
          ),
        );
      },
    );
  }
}
