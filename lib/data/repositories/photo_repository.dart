
import 'package:binaryveda/data/models/photo_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';



@injectable
class PhotoRepository {
  final Dio dio;
  PhotoRepository(this.dio);
  Future<List<PhotoModel>> getPhotos() async {
    final response = await dio.get('https://jsonplaceholder.typicode.com/photos?_page=1&_limit=10');
    return (response.data as List).map((photo) => PhotoModel.fromJson(photo)).toList();
  }
}



