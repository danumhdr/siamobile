import 'dart:convert';
import 'dart:io';

Map configAPIService = {
  // 'URL_SERVICE':'https://dompet.lari.id'
  'URL_SERVICE': 'http://localhost/sia-demo/mobileapi/apim'
};

apiHttpConfig(Map<String, dynamic> postdata, urlservice,
    {method = "post"}) async {
  String reply;

  HttpClient client = new HttpClient();
  client.userAgent = "Flutter_";
  HttpClientRequest request;
  if (method == "post") {
    request = await client.postUrl(Uri.parse(urlservice));
    request.headers.set('content-type', 'application/json');
    request.add(utf8.encode(json.encode(postdata)));
  } else {
    request = await client.getUrl(Uri.parse(urlservice));
  }

  print(json.encode(postdata));

  HttpClientResponse response = await request.close();
  reply = await response.transform(utf8.decoder).join();
  //print(reply.toString());

  return reply;
}
