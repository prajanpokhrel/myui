import 'package:flutter/material.dart';
import 'package:my_ui/common/dropdown.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SendMoneyScreen extends StatelessWidget {
  SendMoneyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 8.w),
          child: Text(
            "Send money",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 20.w),
                child: ListTile(
                  leading: CircleAvatar(
                    maxRadius: 30,
                    backgroundImage: AssetImage(
                      "assets/girl.png",
                    ),
                  ),
                  title: Text(
                    "Adina G",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "@adina.com",
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ),
              ),
              DropdownMenuExample(),
              SizedBox(
                height: 8,
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 2.w, top: 6.h),
                    child: Text(
                      "Amount (USD)",
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 12.w, top: 2.h),
                        child: IconButton(
                          color: Colors.black,
                          onPressed: () {},
                          icon: Icon(Icons.remove),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 2.h),
                        child: SizedBox(
                          width: 50.w,
                          child: TextField(
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.w400),
                            decoration: InputDecoration(
                              prefixIcon: Padding(
                                padding: EdgeInsets.only(left: 4.h, top: 1.h),
                                child: const Icon(
                                  size: 18,
                                  Icons.monetization_on,
                                  color: Colors.black,
                                ),
                              ),
                              focusedBorder: InputBorder.none,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none),
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 2.h, right: 4.w),
                        child: IconButton(
                          color: Colors.black,
                          onPressed: () {},
                          icon: Icon(Icons.add),
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
