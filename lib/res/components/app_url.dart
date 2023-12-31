class AppUrl {
  static var baseUrl = 'https://rac-eight.vercel.app/';

  static var loginUrl = baseUrl + 'api/v1/vendor/loginWithPhoneVendor';

  static var registerUrl = baseUrl + 'api/v1/vendor/registrationVendor';

  static var verifyOtp = baseUrl + 'api/v1/vendor';

  static var allCity = baseUrl + 'api/v1/city';

  static var serviceArea = baseUrl + 'api/v1/serviceArea';

  static var serviceDistance = baseUrl + 'api/v1/serviceableDist';

  static var allServices = baseUrl + "api/v1/service";

  static var createAddress = baseUrl +"api/v1/address";

  static var updateAndUploadDocument =
      baseUrl + "api/v1/vendor/updateFileAndDocumentVendor";

  static var getProfile = baseUrl+"/api/v1/vendor/getProfileVendor";

  static var onGoingServices = baseUrl+"api/v1/cartAndOrder/ongoing/job/";

  static var resrendOtpUrl = baseUrl+"api/v1/user/resendOtp/";

  static var newOrdersUrl = baseUrl+"api/v1/cartAndOrder/all/new/order";

  static var supportUrl = baseUrl+"api/v1/support";

  static var editServiceAreaUrl = baseUrl+"api/v1/serviceArea/";

  static var editServiceDistanceAreaUrl = baseUrl+"api/v1/serviceableDist/";

  static var getAllSubscriptionPlanUrl = baseUrl+"api/v1/subscriptionn";
}
