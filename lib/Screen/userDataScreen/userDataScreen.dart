import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled7/Screen/userProvider/userProvider.dart';

class userDataScreen extends StatefulWidget {
  const userDataScreen({Key? key}) : super(key: key);

  @override
  State<userDataScreen> createState() => _userDataScreenState();
}

class _userDataScreenState extends State<userDataScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(onPressed: () {
              Provider.of<UserProvider>(context, listen: false).getUserData();
            }, child: Text("Click")),
            Expanded(
              child: ListView.builder(itemCount:
              Provider
                  .of<UserProvider>(context, listen: true)
                  .jsonList
                  .length
                  , itemBuilder: (context, index) {
                    return ListTile(
                      title: Text("${Provider.of<UserProvider>(context, listen: false).jsonList[index]['title']}"),
                      leading: Text("${Provider.of<UserProvider>(context, listen: false).jsonList[index]['userId']}"),
                      subtitle: Text("${Provider.of<UserProvider>(context, listen: false).jsonList[index]['id']}"),
                    );
                  }),
            )
          ],
        ),
      ),

    );
  }
}
