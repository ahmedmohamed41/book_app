import 'package:book_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:book_app/Features/Home/data/repos/home_repo.dart';
import 'package:book_app/core/errors/failure.dart';
import 'package:book_app/core/utils/api_serevice.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo {
  ApiService apiService;
  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBookHome() async {
    return await getDataHandlling(
      endPoint: 'q=programming&filtering=free-ebooks&sorting=newest',
    );
  }

  @override
  Future<Either<Failure, List<BookModel>>>
  fetchHorizontalBooksViewListHome() async {
    return await getDataHandlling(
      endPoint: 'q=programming&filtering=free-ebooks',
    );
  }

  Future<Either<Failure, List<BookModel>>> getDataHandlling({
    required String endPoint,
  }) async {
    try {
      var data = await apiService.get(endPoints: endPoint);
      List<BookModel> books = [];
      for (var element in data['items']) {
        books.add(BookModel.fromJson(element));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
