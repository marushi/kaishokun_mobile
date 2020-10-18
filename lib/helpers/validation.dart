
class Validation {

  static bool twitterIdValication(String twitterId) {
    bool isNotBlank = twitterId.isNotEmpty;
    bool isNotStartAtMark = !twitterId.startsWith("@");
    bool isNotLowFiveText = textLengthValidation(3, twitterId);
    bool isNotHighTenFiveText = !textLengthValidation(15, twitterId);

    if (isNotBlank && isNotStartAtMark && isNotHighTenFiveText && isNotLowFiveText) {
      return true;
    }else{
      return false;
    }
  }

  static bool textLengthValidation(int length,String text) {
    if (text.length > length) {
      return true;
    }else{
      return false;
    }
  }
}