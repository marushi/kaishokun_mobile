

import 'package:kaishokunmobile/configs/api_url.dart';
import 'package:kaishokunmobile/configs/token.dart';

const bool isProduction = bool.fromEnvironment('dart.vm.product');

const VariablesDev = {
  'isProd': false,
  'fetchTroubles': ApiUrl.testFetchTroubles,
  'fetchCheers': ApiUrl.testFetchCheers,
  'postTrouble': ApiUrl.testPostTrouble,
  'postCheer': ApiUrl.testPostCheer,
  'token': Token.testToken,
};

const VariablesProd = {
  'isProd': true,
  'fetchTroubles': ApiUrl.fetchTroubles,
  'fetchCheers': ApiUrl.fetchCheers,
  'postTrouble': ApiUrl.postTrouble,
  'postCheer': ApiUrl.postCheer,
  'token': Token.apiToken,
};

final environment = isProduction ? VariablesProd : VariablesDev;