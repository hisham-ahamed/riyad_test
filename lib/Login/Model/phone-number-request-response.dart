class PhoneNumberRequestResponse {
  final int responseCode;
  final bool status;
  final String message;

  PhoneNumberRequestResponse(
      {required this.responseCode,
      required this.status,
      required this.message});

  PhoneNumberRequestResponse.fromJson(Map<String, dynamic> json)
      : responseCode = json['response_code'],
        status = json['status'],
        message = json['message'];
}
