// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:avocado_app/pages/ViewOrder.dart';
import 'package:avocado_app/providers/list_orders_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class OrderList extends StatefulWidget {
  const OrderList({Key? key}) : super(key: key);

  @override
  State<OrderList> createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  @override
  Widget build(BuildContext context) {
    context.read<ListOrderProvider>().fetchData;
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          elevation: 4,
          brightness: Brightness.dark,
          backgroundColor: Color.fromARGB(255, 46, 156, 151),
          title: Center(
            child: Text(
              "Completed Order",
              style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.white,
            ),
          ),
        ),
        body: RefreshIndicator(
          onRefresh: () async {},
          child: Consumer<ListOrderProvider>(
            builder: (context, value, child) {
              return value.map.length == 0 && !value.error
                  ? CircularProgressIndicator()
                  : value.error
                      ? Text(
                          'Oops something went wrong. ${value.errorMessage}',
                          textAlign: TextAlign.center,
                        )
                      : ListView.builder(
                          itemCount: value.map['stories'].length,
                          itemBuilder: (context, index) {
                            return CardList(map: value.map['stories'][index]);
                          },
                        );
            },
          ),
        ),
      ),
    );
  }
}

class CardList extends StatelessWidget {
  const CardList({Key? key, required this.map}) : super(key: key);
  final Map<String, dynamic> map;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const OrderDetails()));
                },
                child: Container(
                  width: 300.w,
                  margin: const EdgeInsets.fromLTRB(15, 15, 15, 45),
                  decoration: BoxDecoration(
                      boxShadow: [
                        const BoxShadow(
                          color: Color.fromARGB(136, 51, 137, 176),
                          offset: Offset(1, 5),
                          blurRadius: 6,
                        )
                      ],
                      border:
                          Border.all(color: Color.fromARGB(255, 139, 162, 165)),
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromARGB(255, 212, 235, 239)),
                  child: Column(
                    children: [
                      Container(
                        clipBehavior: Clip.antiAlias,
                        width: 350.w,
                        height: 45.h,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.cyan),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                              // bottomLeft: Radius.circular(45),
                              // bottomRight: Radius.circular(45),
                            ),
                            color: Color.fromARGB(255, 27, 115, 129)),
                        child: const Center(
                          child: Text('Order',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 0, 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('${map['heading'].substring(0, 7)}',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 27, 115, 129),
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(
                                  Icons.access_time_outlined,
                                  color: Color.fromARGB(255, 27, 115, 129),
                                ),
                                Text(" ${map['image'].substring(50, 60)}:30 ",
                                    style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold)),
                                const Icon(
                                  Icons.calendar_month_outlined,
                                  color: Color.fromARGB(255, 27, 115, 129),
                                ),
                                Text(" ${map['date']}",
                                    style: const TextStyle(
                                        color: Colors.blueGrey,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold)),
                                const Align(
                                  alignment: Alignment.centerRight,
                                  child: Icon(
                                    Icons.check_box,
                                    color: Color.fromARGB(255, 27, 115, 129),
                                    size: 50,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("${map['story'].substring(0, 30)}",
                                    style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        height: 15,
                        thickness: 2,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text('Finished',
                          style: TextStyle(
                            color: Color.fromARGB(255, 27, 115, 129),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          )),
                      const SizedBox(
                        height: 25,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
