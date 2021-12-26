import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

Future<ApiCallResponse> getListedCryptoCall({
  String start = '1',
  String limit = '5000',
  String convert = 'USD',
}) {
  return ApiManager.instance.makeApiCall(
    callName: 'GetListedCrypto',
    apiUrl:
        'https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest',
    callType: ApiCallType.GET,
    headers: {
      'Accepts': 'application/json',
      'X-CMC_PRO_API_KEY': '201711ea-66c5-4035-882d-a72385f38403',
    },
    params: {
      'start': start,
      'limit': limit,
      'convert': convert,
    },
    returnBody: true,
  );
}
