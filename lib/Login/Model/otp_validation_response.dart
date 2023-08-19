import 'package:riyad_test/AppConstants/url-list.dart';

class UserDetailsRequestResponse {
  final int responseCode;
  final bool status;
  final String message;
  final String token;
  final UserDetails userDetails;

  const UserDetailsRequestResponse(
      {required this.responseCode,
      required this.status,
      required this.message,
      this.token = '',
      this.userDetails = kUserDetails});

  UserDetailsRequestResponse.fromJson(Map<String, dynamic> json)
      : responseCode = json['response_code'],
        status = json['status'],
        message = json['message'],
        token = json['token'] ?? '',
        userDetails = json['user_details'] != null
            ? UserDetails.fromJson(json['user_details'])
            : kUserDetails;
}

class UserDetails {
  final int id;
  final String email;
  final String firstName;
  final String lastName;
  final String imageUrl;
  final String mobileNumber;
  final String streetAddress;
  final String city;

  const UserDetails(
      {required this.id,
      required this.email,
      required this.firstName,
      required this.lastName,
      required this.imageUrl,
      required this.mobileNumber,
      this.streetAddress = '',
      this.city = ''});

  UserDetails.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        email = json['email'],
        firstName = json['firstname'],
        lastName = json['lastname'],
        imageUrl = json['image'],
        mobileNumber = json['mobno'],
        streetAddress = json['streetaddress'] ?? '',
        city = json['city'] ?? '';
}
