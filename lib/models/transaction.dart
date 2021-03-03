import 'package:picpay_clone/models/user.dart';
import 'package:picpay_clone/utils/transaction_types.dart';

class Transaction {
  final User startUser;
  final User endUser;
  final double amoutValue;
  final String customMessage;
  final String defaultMessage;
  final TransactionType transactionType;

  Transaction({this.amoutValue, this.endUser, this.startUser, this.transactionType, this.customMessage, this.defaultMessage});
}