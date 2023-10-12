import 'dart:io';

import 'package:flutter/material.dart';
import 'package:urban_partner/core/app_export.dart';
import 'package:urban_partner/core/utils/utils.dart';

import '../data/network/base_api_services.dart';
import '../data/network/network_api_services.dart';
import '../res/components/app_url.dart';

class AuthRepository {
  BaseApiServices _apiServices = NetworkApiServices();

  Future<dynamic> signUpApi(dynamic data) async {
    try {
      dynamic response =
          await _apiServices.getPostApiResponse(AppUrl.registerUrl, data);
      return response;
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> verifyOtpApi(String otpId, dynamic data) async {
    try {
      dynamic response = await _apiServices.getPostApiResponse(
          '${AppUrl.verifyOtp}/$otpId', data);
      return response;
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> logInApi(dynamic data) async {
    try {
      dynamic response =
          await _apiServices.getPostApiResponse(AppUrl.loginUrl, data);
      return response;
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> allCityApi() async {
    try {
      dynamic response = await _apiServices.getGetApiResponse(AppUrl.allCity);
      return response;
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> createAddressApi(dynamic data) async {
    try {
      dynamic response =
          await _apiServices.getPostApiResponse(AppUrl.createAddress, data);
      return response;
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> serviceAreaApi() async {
    try {
      dynamic response =
          await _apiServices.getGetApiResponse(AppUrl.serviceArea);
      return response;
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> serviceDistanceAreaApi() async {
    try {
      dynamic response =
          await _apiServices.getGetApiResponse(AppUrl.serviceDistance);
      return response;
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> allServiceApi() async {
    try {
      dynamic response =
          await _apiServices.getGetApiResponse(AppUrl.allServices);
      return response;
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> updateAndUploadDocument(
    dynamic data,
    File? pic,
    File? panCard,
    File? frontImage,
    File? backImage,
  ) async {
    try {
      String userId = await Utils.getFromSharedPreference(Constants.userId);
      debugPrint(AppUrl.updateAndUploadDocument + "/" + userId);
      dynamic response = await _apiServices.getPutApiResponse(
          AppUrl.updateAndUploadDocument + "/" + userId,
          data,
          frontImage,
          backImage,
          pic,
          panCard);
      return response;
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> getProfileApi() async {
    try {
      dynamic response =
          await _apiServices.getGetApiResponse(AppUrl.getProfile);
      return response;
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> onGoingService() async {
    try {
      String userId = await Utils.getFromSharedPreference(Constants.userId);
      dynamic response =
          await _apiServices.getGetApiResponse(AppUrl.onGoingServices + userId);
      return response;
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> resendOtp(String OtpId) async {
    try {
      dynamic response = await _apiServices
          .getPostApiResponse(AppUrl.resrendOtpUrl + OtpId, {});
      return response;
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> getNewOrdersApi() async {
    try {
      dynamic response = await _apiServices.getGetApiResponse(AppUrl.newOrdersUrl);
      return response;
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> createSupportApi(dynamic data) async {
    try {
      dynamic response =
      await _apiServices.getPostApiResponseHeaders(AppUrl.supportUrl, data);
      return response;
    } catch (e) {
      throw e;
    }
  }

}
