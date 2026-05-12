 import 'dart:io';

class BankAccount
{
  var accountnumber;
  var accountholder;
  var balance = 0;

  setbalance(int bal)
  {
    balance = bal;
  }

  deposit()
  {
    print("Enter deposit");
    var depo = int.parse(stdin.readLineSync().toString());
    balance = balance + depo;
    print("Your Deposit is $depo");
    print("Your balance is $balance");
  }

  withdraw()
  {
    print("Enter Withdraw");
    var withdraw = int.parse(stdin.readLineSync().toString());
    balance = balance - withdraw;
    print("Your Withdrawal is $withdraw");
    print("Your Remaining balance is $balance");

    if(withdraw > balance)
      {
        print("Balance is not sufficient in your account");
      }
  }

}
void main()
{
  print("Enter your Bank balance");
  var bal = int.parse(stdin.readLineSync().toString());

  BankAccount b1 = BankAccount();
  b1.setbalance(bal);
  b1.deposit();
  b1.withdraw();
}
