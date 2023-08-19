import 'package:riyad_test/Login/Model/otp_validation_response.dart';

const kBaseUrl = "https://interfuel.qa";
const kSendOTPtoMobileNumberUrl =
    'https://interfuel.qa/riyadhi-app/api/sent-mobile-number';

const kOTPValidationUrl = 'https://interfuel.qa/riyadhi-app/api/confirm-otp';

const kRegisterNewUserUrl = 'https://interfuel.qa/riyadhi-app/api/new_register';

const kGetSportsUrl = 'https://interfuel.qa/riyadhi-app/api/get-sports';

const kGetSportsMoreUrl =
    "https://interfuel.qa/riyadhi-app/api/get-sports-more";

const kUserDetails = UserDetails(
    id: 0,
    email: 'email',
    firstName: 'firstName',
    lastName: 'lastName',
    imageUrl: 'imageUrl',
    mobileNumber: 'mobileNumber');

const kVenueTemp = {
  "id": 1,
  "venuename": "whyte creations",
  "image": "https://interfuel.qa/riyadhi-app/public/venueimages/banner.png",
  "venuedescrption": "sdsdsdsd",
  "pricerange": "147852",
  "location": "Fereej Bin Omran, Doha, Qatar",
  "starting_time": "2023-07-04",
  "ending_time": "2023-08-06",
  "sports": [
    {
      "id": 5,
      "sportsname": "Foot Ballddddd",
      "image":
          "https://interfuel.qa/riyadhi-app/public/sportsimages/cropped-logos-1.png"
    },
    {
      "id": 6,
      "sportsname": "sdsd",
      "image":
          "https://interfuel.qa/riyadhi-app/public/sportsimages/cropped-logos-1.png"
    }
  ],
  "pitch": [],
  "price_30": "34.0000"
};
