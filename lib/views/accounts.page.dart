import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../model/model.page.dart';
import 'package:test_assessment/services/accounts.service.dart';
import '../views/account.page.dart';

class ClientsPage extends StatefulWidget {
  Service get service => GetIt.I<Service>();

  @override
  _ClientsPageState createState() => _ClientsPageState();
}

class _ClientsPageState extends State<ClientsPage> {
  List<Account> accounts = List();

  @override
  void initState() {
    super.initState();
    setState(() {
      Service.getAccounts().then((response) {
        accounts = response;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Accounts '),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.separated(
            itemCount: accounts.length,
            separatorBuilder: (BuildContext context, int index) => Divider(),
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text('Account Name :   ' + accounts[index].name),
                subtitle: Text(
                    'Account Number :   ' + accounts[index].balance.toString()),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) =>
                          ClientPages(selectAccount: accounts[index])));
                },
              );
            },
          ))
        ],
      ),
    );
  }
}
