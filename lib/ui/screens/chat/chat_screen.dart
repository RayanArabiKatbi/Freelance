import 'package:changehorizonsfreelancer/constants.dart';
import 'package:changehorizonsfreelancer/ui/screens/chat/local_widgets/app_bar.dart';
import 'package:changehorizonsfreelancer/ui/screens/chat/local_widgets/bill_card.dart';
import 'package:changehorizonsfreelancer/ui/screens/chat/local_widgets/bottom_modal_sheet.dart';
import 'package:changehorizonsfreelancer/ui/widgets/outlined_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  bool client = true;

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    List<Widget> chatContent = [
      BillCard(),
      buildFileCard(),
      //OfferCard(client),
      buildChatCard(context, 'سأفكر فى الامر'),
      buildChatCard(context, 'سأفكر فى الامر', left: true),
      buildChatCard(context, 'سأفكر فى الامر'),
      buildChatCard(context, 'سأفكر فى الامر', left: true),
      buildChatCard(context, 'سأفكر فى الامر'),
      buildChatCard(context, 'سأفكر فى الامر', left: true),
      Divider(
        color: Colors.transparent,
        height: 25,
      ),
      Center(
          child: Text(
        'هنا بدايه المحادثه بينك وبين ساره',
        style: Theme.of(context).textTheme.subtitle.copyWith(fontSize: 13),
      )),
    ];
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[
            MyAppBar(),
            Divider(
              height: 10,
              thickness: 1,
            ),
            Expanded(
              child: ListView(
                reverse: true,
                children: chatContent,
              ),
            ),
            OutlinedTextField(
              prefixIcon: IconButton(
                icon: Icon(
                  Icons.send,
                  color: kRightColor,
                ),
                onPressed: () => print('sent'),
              ),
              suffix: Builder(
                  builder: (ctx) => PopupMenuButton(
                        icon: Icon(
                          Icons.attachment,
                          color: kRightColor,
                        ),
                        onSelected: (value) => Scaffold.of(ctx)
                            .showBottomSheet((ctx) => BottomModalSheet()),
                        elevation: 2,
                        itemBuilder: (ctx) => client
                            ? [
                                'ادراج صوره',
                                'ارسال ملف',
                              ]
                                .map((value) => PopupMenuItem(
                                      child: Text(value),
                                      value: value,
                                    ))
                                .toList()
                            : ['ادراج صوره', 'ارسال ملف', 'اصدار فاتوره']
                                .map((value) => PopupMenuItem(
                                      child: Text(value),
                                      value: value,
                                    ))
                                .toList(),
                      )),
              controller: _controller,
              textInputAction: TextInputAction.send,
              enterPressed: () => print('send'),
            ),
          ],
        ),
      ),
    );
  }

  // sorry i couldn't handle its width :(

  Widget buildChatCard(context, content, {bool left = false}) {
    return PreferredSize(
      preferredSize: Size.fromWidth(30),
      child: Container(
        alignment: Alignment.centerRight,
        margin: EdgeInsets.symmetric(vertical: 12),
        padding: EdgeInsets.all(15),
        child: Text(
          content,
          style: TextStyle(
              color: kMiddleColor, fontWeight: FontWeight.bold, fontSize: 12),
        ),
        decoration: BoxDecoration(
          color: kMiddleColor.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  Widget buildFileCard() {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: kMiddleColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text(
              'معلومات الشركه.pdf',
              style: TextStyle(color: kMiddleColor),
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.insert_drive_file,
              color: kRightColor,
            ),
          ],
        ),
      ),
      onTap: () {},
    );
  }
}
