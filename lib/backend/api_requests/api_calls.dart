import 'api_manager.dart';

Future<dynamic> topBusinessSearchCall({
  String country = 'us',
  String category = 'business',
  String apiKey = 'ce40fe77cc4e4615b928db46591f152d',
}) =>
    ApiManager.instance.makeApiCall(
      callName: 'top business search',
      apiDomain: 'newsapi.org',
      apiEndpoint: 'v2/top-headlines',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'country': country,
        'category': category,
        'apiKey': apiKey,
      },
      returnResponse: true,
    );

Future<dynamic> newsSearchCall({
  String q = 'tesla',
  String from = '2021-04-21',
  String sortBy = 'publishedAt',
  String apiKey = 'ce40fe77cc4e4615b928db46591f152d',
}) =>
    ApiManager.instance.makeApiCall(
      callName: 'news Search',
      apiDomain: 'newsapi.org',
      apiEndpoint: 'v2/everything',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'q': q,
        'from': from,
        'sortBy': sortBy,
        'apiKey': apiKey,
      },
      returnResponse: true,
    );
