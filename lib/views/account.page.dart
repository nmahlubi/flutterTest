import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../model/model.page.dart';

class ClientPages extends StatefulWidget {
  Account selectAccount;
  ClientPages({this.selectAccount});

  @override
  _ClientPagesState createState() => _ClientPagesState(selectAccount);
}

class _ClientPagesState extends State<ClientPages> {
  Account selectAccount;

  _ClientPagesState(this.selectAccount);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account Details'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Account Name  : ' + selectAccount.name),
            Text('Account accountNumber  : ' + selectAccount.accountNumber),
            Text('Account balance  : ' + selectAccount.balance.toString()),
            Text('Account overdraft  : ' + selectAccount.overdraft.toString()),
            Text('Account active  : ' + selectAccount.active.toString()),
          ],
        ),
      ),
    );
  }
}
