class Account {
  String id;
  String userId;
  String name;
  String accountNumber;
  int balance;
  int overdraft;
  bool active;

  Account(
      {this.id,
      this.userId,
      this.active,
      this.name,
      this.accountNumber,
      this.balance,
      this.overdraft});

  factory Account.fromJson(Map<String, dynamic> json) {
    return Account(
      id: json['id'] as String,
      userId: json['userId'] as String,
      name: json['name'] as String,
      accountNumber: json['accountNumber'] as String,
      balance: json['balance'] as int,
      overdraft: json['overdraft'] as int,
      active: json['active'] as bool,
    );
  }
}
