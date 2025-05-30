part of 'best_seller_cubit.dart';

sealed class BestSellerState extends Equatable {
  const BestSellerState();

  @override
  List<Object> get props => [];
}

final class BestSellerInitial extends BestSellerState {}

final class BestSellerLoading extends BestSellerState {}

final class BestSellerSuccess extends BestSellerState {
  final List<BookModel> bookModel;

  const BestSellerSuccess(this.bookModel);
}

final class BestSellerFailure extends BestSellerState {
  final String errorMessage;

  const BestSellerFailure(this.errorMessage);
}
