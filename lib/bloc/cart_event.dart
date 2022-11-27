part of 'cart_bloc.dart';

@immutable
abstract class CartEvent extends Equatable {
  const CartEvent();

  @override
  List<Object> get props => [];
}

class LoadCart extends CartEvent {}

class AddProduct extends CartEvent {
  final Clothes clothes;

  const AddProduct(this.clothes);

  @override
  List<Object> get props => [clothes];
}

class RemoveProduct extends CartEvent {
  final Clothes clothes;

  const RemoveProduct(this.clothes);

  @override
  List<Object> get props => [clothes];
}

