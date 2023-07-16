part of 'payments_bloc.dart';

@immutable
abstract class PaymentsState {}

class PaymentsInitial extends PaymentsState {}

class PaymentsLoadingState extends PaymentsState {}

class PaymentSuccessState extends PaymentsState {}

class PaymentsErrorState extends PaymentsState {}
