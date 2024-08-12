import 'dart:io';

checkinternet() async {
  try {
    var reslt = await InternetAddress.lookup('google.com');
    if (reslt.isNotEmpty && reslt[0].rawAddress.isNotEmpty) {
      return true;
    }
  } on SocketException {
    return false;
  }
}
