import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

void main(){
  return runApp(
    MaterialApp(
      home: HomeScreen(),
    )
  );
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ZegoUIKitPrebuiltCall(
            appID: 1272255116,
            appSign: '1668d112a7ffa7828d693c760cead8fca575e4eceee5ef1a6e913bd5e23cba33',
            callID: '787878',
            userID: '1234',
            userName: 'JJ',
            config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall()
              ..onOnlySelfInRoom= (context) => Navigator.pop(context)
        ),
      ),
    );
  }
}
