extension RemoveApiError on String {
  String removeApiErrorString() {
    RegExp regex = RegExp(r'(&#039;s|&quot;)');
    if (regex.hasMatch(this)) {
      String replacedString = this.replaceAll(regex, "");
      return replacedString;
    } else {
      return this;
    }
  }
}

class AppExtensions {}
