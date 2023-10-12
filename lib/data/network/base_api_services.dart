import 'dart:io';

abstract class BaseApiServices {
  Future<dynamic> getGetApiResponse(String url);

  Future<dynamic> getPostApiResponse(String url, dynamic data);
  Future<dynamic> getPostApiResponseHeaders(String url, dynamic data);

  Future<dynamic> getPutApiResponse(String url, dynamic data, File? frontImage,
      File? backImage, File? pic, File? panCard);
}
