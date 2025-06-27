import 'package:bloceproject/pages/home_page_screen/home_page_components/current_shipments/current_shipment_status.dart';
import 'package:flutter/material.dart';

// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// import 'dart:async';
//
// class CurrentShipments extends StatefulWidget {
//   const CurrentShipments({super.key});
//
//   @override
//   State<CurrentShipments> createState() => _CurrentShipmentsState();
// }
//
// class _CurrentShipmentsState extends State<CurrentShipments> {
//   int _currentPage = 0;
//   Timer? _timer;
//   final controller =
//       PageController(viewportFraction: 0.8, keepPage: true, initialPage: 0);
//   final colors = const [
//     Colors.red,
//     Colors.green,
//     Colors.greenAccent,
//     Colors.amberAccent,
//     Colors.blue,
//     Colors.amber,
//   ];
//
//   final pages = List.generate(
//       6,
//       (index) => Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(16),
//               color: Colors.grey.shade300,
//             ),
//             margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
//             child: SizedBox(
//               height: 280,
//               child: Center(
//                   child: Text(
//                 "Page $index",
//                 style: TextStyle(color: Colors.indigo),
//               )),
//             ),
//           ));
//
//   @override
//   void initState() {
//     super.initState();
//     // _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
//     //   controller.animateToPage(
//     //     _currentPage++ % pages.length,
//     //     duration: const Duration(milliseconds: 500),
//     //     curve: Curves.easeIn,
//     //   );
//     // });
//     controller.addListener(() {
//       setState(() {
//         _currentPage = controller.page?.round() ?? 0;
//       });
//     });
//   }
//
//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.yellow,
//       //height: 150,
//       width: 350,
//       child: Center(
//           child: Column(
//         children: [
//           SizedBox(
//             height: 240,
//             child: PageView.builder(
//               onPageChanged: (index) {
//                 setState(() {
//                   _currentPage = index;
//                 });
//               },
//               controller: controller,
//               itemBuilder: (_, index) => pages[index % pages.length],
//             ),
//           ),
//           SmoothPageIndicator(
//             controller: controller,
//             count: pages.length,
//             effect: const SlideEffect(),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               print('current page: $_currentPage');
//                 controller.animateToPage(
//                   ++_currentPage % pages.length,
//                   duration: const Duration(milliseconds: 500),
//                   curve: Curves.easeIn,
//                 );
//             },
//             child: const Text(
//               'next',
//             ),
//           ),
//         ],
//       )
//           // Column(
//           //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           //   crossAxisAlignment: CrossAxisAlignment.end,
//           //   children: [
//           //     Text("الالبسة"),
//           //     Text("data"),
//           //     AnimatedSmoothIndicator(
//           //       //controller: controller,
//           //       count: pages.length,
//           //       effect: const SlideEffect(),
//           //       activeIndex: 0,
//           //     ),
//           //   ],
//           // ),
//           ),
//     );
//   }
// }

class CurrentShipmentWidget extends StatelessWidget {
  const CurrentShipmentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[50],
        border: Border.all(color: Colors.pink[100]!, width: 2.0),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CurrentShipmentStatus(),
                Text('data'),
              ],
            ),
            Text('data'),

          ],
        ),
      ),
    );
  }
}
