import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:projek_pas/HomePage/models/helm.dart';
import 'package:projek_pas/Keranjang/models/keranjang_model.dart';


part 'cart_event.dart';
part 'cart_state.dart';
class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartLoading()) {
    on<LoadCart>(_onLoadCart);
    on<AddProduct>(_onAddProduct);
    on<RemoveProduct>(_onRemoveProduct);
  }

  void _onLoadCart(
      LoadCart event,
      Emitter<CartState> emit,
      ) async {
    emit(CartLoading());
    try {
      await Future<void>.delayed(const Duration(seconds: 1));
      emit(CartLoaded());
    } catch (_) {
      emit(CartError());
    }
  }

  void _onAddProduct(
      AddProduct event,
      Emitter<CartState> emit,
      ) {
    if (this.state is CartLoaded) {
      try {
        emit(
          CartLoaded(
            cart: Cart(
              generateClothes: List.from((this.state as CartLoaded).cart.generateClothes)
                ..add(event.clothes),
            ),
          ),
        );
      } on Exception {
        emit(CartError());
      }
    }
  }

  void _onRemoveProduct(
      RemoveProduct event,
      Emitter<CartState> emit,
      ) {
    if (this.state is CartLoaded) {
      try {
        emit(
          CartLoaded(
            cart: Cart(
              generateClothes: List.from((this.state as CartLoaded).cart.generateClothes)
                ..remove(event.clothes),
            ),
          ),
        );
      } on Exception {
        emit(CartError());
      }
    }
  }
}