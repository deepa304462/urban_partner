import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/core/utils/utils.dart';

import '../app_excaptions.dart';
import 'base_api_services.dart';

class NetworkApiServices extends BaseApiServices {
  @override
  Future getGetApiResponse(String url) async {
    dynamic responseJson;

    try {
      String token = await Utils.getFromSharedPreference(Constants.accessToken);
      Map<String, String> header = {"Authorization": 'Bearer $token'};

      final response = await http
          .get(Uri.parse(url), headers: header)
          .timeout(const Duration(seconds: 10));
      responseJson = jsonDecode(response.body);
    } on SocketException {
      throw FetchDataException('No internet connection');
    }
    return responseJson;
  }

  @override
  Future getPostApiResponse(String url, dynamic data) async {
    dynamic responseJson;

    try {
      http.Response response = await http
          .post(
            Uri.parse(url),
            body: data,
          )
          .timeout(const Duration(seconds: 10));
      responseJson = jsonDecode(response.body);
    } on SocketException {
      throw FetchDataException('No internet connection');
    }
    return responseJson;
  }

  @override
  Future getPutApiResponse(String url, data, File? frontImage, File? backImage,
      File? pic, File? panCard) async {
    dynamic responseJson;

    try {
      String token = await Utils.getFromSharedPreference(Constants.accessToken);

      var request = http.MultipartRequest('PUT', Uri.parse(url));
      request.headers['Authorization'] = 'Bearer $token';

      // Add the files to the request
      if (frontImage != null) {
        request.files.add(http.MultipartFile(
          'frontImage', // Field name for the file
          frontImage.readAsBytes().asStream(),
          frontImage.lengthSync(),
          filename: 'front_image.jpg', // Adjust the filename as needed
        ));
      }

      if (backImage != null) {
        request.files.add(http.MultipartFile(
          'backImage',
          backImage.readAsBytes().asStream(),
          backImage.lengthSync(),
          filename: 'back_image.jpg',
        ));
      }

      if (pic != null) {
        request.files.add(http.MultipartFile(
          'pic',
          pic.readAsBytes().asStream(),
          pic.lengthSync(),
          filename: 'pic.jpg',
        ));
      }

      if (panCard != null) {
        request.files.add(http.MultipartFile(
          'panCard',
          panCard.readAsBytes().asStream(),
          panCard.lengthSync(),
          filename: 'pan_card.jpg',
        ));
      }

      // Add other data fields to the request
      data.forEach((key, value) {
        request.fields[key] = value.toString();
      });

      var streamedResponse = await request.send();
      var response = await http.Response.fromStream(streamedResponse);
      responseJson = jsonDecode(response.body);
    } on SocketException {
      throw FetchDataException('No internet connection');
    }

    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 404:
        throw UnauthorisedException(response.body.toString());
      default:
        throw FetchDataException(
            'Error accord while communicating with server' +
                'with status code ' +
                response.statusCode.toString());
    }
  }

  @override
  Future getPostApiResponseHeaders(String url, data) async {
    dynamic responseJson;

    try {
      String token = await Utils.getFromSharedPreference(Constants.accessToken);
      Map<String, String> header = {"Authorization": 'Bearer $token'};
      http.Response response = await http
          .post(
        Uri.parse(url),
        headers: header,
        body: data,
      )
          .timeout(const Duration(seconds: 10));
      responseJson = jsonDecode(response.body);
    } on SocketException {
      throw FetchDataException('No internet connection');
    }
    return responseJson;
  }
}
