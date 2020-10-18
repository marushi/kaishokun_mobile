
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:kaishokunmobile/configs/api_cheer_infomation.dart';
import 'package:kaishokunmobile/environment/environment.dart';
import 'package:kaishokunmobile/models/main/cheer.dart';
import 'package:kaishokunmobile/models/main/post_cheer.dart';
import 'package:kaishokunmobile/models/main/post_trouble.dart';
import 'package:kaishokunmobile/models/main/request.dart';
import 'package:kaishokunmobile/models/main/trouble.dart';

class ApiService {

  ///悩みデータを取得
  Future<List<Trouble>> fetchTroubleData() async {

    var client = http.Client();

    String url = environment['fetchTroubles'];

    final response = await client.post(url, headers: {"token": environment['token']}).whenComplete(() => {
      client.close()
    });

    if (response.statusCode == 200) {
      final list = json.decode(response.body);
      final List<Trouble> troubles = list.map((data) => Trouble.fromJson(data)).toList().cast<Trouble>();
      return troubles;
    } else {
      throw Exception("ERROR_STATUS:${response.statusCode}");
    }
  }


  ///応援データを取得
  Future<List<Cheer>> fetchCheerData(String uuid,int page) async {

    var client = http.Client();

    String url = environment['fetchCheers'];

    Request request = Request();
    request.uuid = uuid;
    request.count = ApiCheerInformation.count.toString();
    request.page = page.toString();

    final response = await client.post(url,
        headers: {"token": environment['token']},
        body: request.toJson(),
    ).whenComplete(() => {
      client.close()
    });

    if (response.statusCode == 200) {
      final list = json.decode(response.body);
      final List<Cheer> cheers = list.map((data) => Cheer.fromJson(data)).toList().cast<Cheer>();
      return cheers;
    } else {
      throw Exception("ERROR_STATUS:${response.statusCode}");
    }
  }

  ///悩みを新規投稿
  Future<void> postTrouble(PostTrouble trouble) async {

    var client = http.Client();

    String url = environment['postTrouble'];

    final response = await client.post(url,
      headers: {'token': environment['token']},
      body: trouble.toJson(),
    ).whenComplete(() => {
      client.close()
    });

    if (response.statusCode != 200) {
      throw Exception("ERROR_STATUS:${response.statusCode}");
    }
  }


  ///応援を新規投稿
  Future<void> postCheer(PostCheer cheer) async {

    var client = http.Client();

    String url = environment['postCheer'];

    final response = await client.post(url,
      headers: {"token": environment['token']},
      body: cheer.toJson(),
    ).whenComplete(() => {
      client.close()
    });

    if (response.statusCode != 200) {
      throw Exception("ERROR_STATUS:${response.statusCode}");
    }
  }
}