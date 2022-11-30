import 'dart:io';

import 'package:dio/dio.dart';

import 'custom_log.dart';
// import 'package:image_picker/image_picker.dart';

const int kDefaultTimeOut = 60 * 1000;

class ApiDioController {

  static final _baseUrl = 'https://dev.hoigg.net/api';


  static BaseOptions options = BaseOptions(
    baseUrl: _baseUrl,
    connectTimeout: kDefaultTimeOut,
    receiveTimeout: kDefaultTimeOut,
  );

  // Contruction to use multiple project
  static Future<T?> getData<T>({
    required String url,
    required String accessToken,
    required Dio dio,
    Map<String, dynamic>? query,
    required Function(Map<String, dynamic>) asModel,
  }) async {
    try {
      dio.options.headers['x-access-token'] = accessToken;
      // print(accessToken);
      Response<Map<String, dynamic>> response = await dio.get(
        url,
        queryParameters: query,
      );

      // CustomLog.log(response.data);

      if (response.statusCode == 200) {
        if (response.data!['success']) {
          return asModel(response.data!);
        }
      }

      return null;
    } on DioError catch (e) {
      CustomLog.log(e);
      return null;
    } catch (e) {
      CustomLog.log(e);
      return null;
    }
  }

  static Future<T?> postMethods<T>({
    required String url,
    required String accessToken,
    required Dio dio,
    dynamic? body,
    required Function(Map<String, dynamic>) asModel,
  }) async {
    try {
      dio.options.headers['x-access-token'] = accessToken;

      Response<Map<String, dynamic>> response = await dio.post(
        url,
        data: body,
      );

      // CustomLog.log(response.data);

      if (response.statusCode == 200) {
        if (response.data!['success']) {
          return asModel(response.data!);
        }
      }

      return null;
    } on DioError catch (e) {
      CustomLog.log(e);
      return null;
    } catch (e) {
      CustomLog.log(e);
      return null;
    }
  }

  static Future<T?> putMethods<T>({
    required String url,
    required String accessToken,
    required Dio dio,
    dynamic? body,
    required Function(Map<String, dynamic>) asModel,
  }) async {
    try {
      dio.options.headers['x-access-token'] = accessToken;

      Response<Map<String, dynamic>> response = await dio.put(url, data: body);

      CustomLog.log(response.data);

      if (response.statusCode == 200) {
        if (response.data!['success']) {
          return asModel(response.data!);
        }
      }

      return null;
    } on DioError catch (e) {
      CustomLog.log(e);
      return null;
    } catch (e) {
      CustomLog.log(e);
      return null;
    }
  }

  static Future<T?> deleteMethod<T>({
    required String url,
    required String accessToken,
    required Dio dio,
    Map<String, dynamic>? body,
    required Function(Map<String, dynamic>) asModel,
  }) async {
    try {
      dio.options.headers['x-access-token'] = accessToken;

      Response<Map<String, dynamic>> response = await dio.delete(
        url,
        data: body,
      );

      // CustomLog.log(response.data);

      if (response.statusCode == 200) {
        if (response.data!['success']) {
          return asModel(response.data!);
        }
      }

      return null;
    } on DioError catch (e) {
      CustomLog.log(e);
      return null;
    } catch (e) {
      CustomLog.log(e);
      return null;
    }
  }

  // Implementation
  // static Future<ModelNotificationDoc?> getNotificationDoc({
  //   int page = 1,
  //   int size = 10,
  // }) async {
  //   Dio dio = Dio(options);
  //
  //   return getData<ModelNotificationDoc?>(
  //     url: '/api/notification',
  //     accessToken: GetX.Get.find<Controller>().token.value,
  //     dio: dio,
  //     query: {'page': page, "size": size},
  //     asModel: (map) => ModelNotificationDoc.fromJson(map['data']),
  //   );
  // }
  //
  // static Future<bool> deleteNotification({required String id}) async {
  //   Dio dio = Dio(options);
  //
  //   bool? isSuccess = await deleteMethod<bool?>(
  //     url: '/api/notification/$id',
  //     accessToken: GetX.Get.find<Controller>().token.value,
  //     dio: dio,
  //     asModel: (map) => map['success'],
  //   );
  //
  //   return isSuccess == null ? false : isSuccess;
  // }
  //
  // static Future<bool> claimNotificationRewards({required String id}) async {
  //   Dio dio = Dio(options);
  //
  //   bool? isSuccess = await postMethods<bool?>(
  //     url: '/api/notification/claim/$id',
  //     accessToken: GetX.Get.find<Controller>().token.value,
  //     dio: dio,
  //     asModel: (map) => map['success'],
  //   );
  //
  //   return isSuccess == null ? false : isSuccess;
  // }
  //
  // static Future<bool> changeUserAvatar({required File file}) async {
  //   Dio dio = Dio(options);
  //
  //   FormData formData = FormData.fromMap({
  //     'avatar': MultipartFile.fromFileSync(
  //       file.path,
  //       filename: file.path.split('/').last,
  //     ),
  //   });
  //
  //   bool? isSuccess = await postMethods<bool?>(
  //     url: '/api/user/avatar',
  //     accessToken: GetX.Get.find<Controller>().token.value,
  //     dio: dio,
  //     asModel: (map) => map['success'],
  //     body: formData,
  //   );
  //
  //   return isSuccess == null ? false : isSuccess;
  // }
  //
  // static Future<bool> updateUserInfo({
  //   String? username,
  //   String? email,
  // }) async {
  //   Dio dio = Dio(options);
  //
  //   Map<String, dynamic> data = {};
  //
  //   if (username != null && username.isNotEmpty) {
  //     data.addAll({'username': username});
  //   }
  //
  //   if (email != null && email.isNotEmpty) {
  //     data.addAll({'email': email});
  //   }
  //
  //   bool? isSuccess = await postMethods<bool?>(
  //     url: '/api/user',
  //     accessToken: GetX.Get.find<Controller>().token.value,
  //     dio: dio,
  //     asModel: (map) => map['success'],
  //     body: data,
  //   );
  //
  //   return isSuccess == null ? false : isSuccess;
  // }
  //
  // static Future<bool> validateUsername({required String username}) async {
  //   Dio dio = Dio(options);
  //
  //   Map<String, dynamic>? res = await postMethods<Map<String, dynamic>?>(
  //     url: '/api/writer-registration/validate-username/$username',
  //     accessToken: GetX.Get.find<Controller>().token.value,
  //     dio: dio,
  //     asModel: (map) => map,
  //   );
  //
  //   if (res == null) return false;
  //
  //   return res['success'] == true && res['msg'] == '' ? true : false;
  // }
  //
  // static Future<bool> validateEmail({required String email}) async {
  //   Dio dio = Dio(options);
  //
  //   Map<String, dynamic>? res = await postMethods<Map<String, dynamic>?>(
  //     url: '/api/writer-registration/validate-email/$email',
  //     accessToken: GetX.Get.find<Controller>().token.value,
  //     dio: dio,
  //     asModel: (map) => map,
  //   );
  //
  //   if (res == null) return false;
  //
  //   return res['success'] == true && res['msg'] == '' ? true : false;
  // }
  //
  // static Future<bool> postRegisterApplication({
  //   required String penname,
  //   required String username,
  //   required String email,
  //   required String fullName,
  //   required String novelUrl,
  //   required DateTime birthDay,
  // }) async {
  //   Dio dio = Dio(options);
  //   dio.options.contentType = Headers.formUrlEncodedContentType;
  //
  //   Map<String, dynamic> data = {
  //     'username': username,
  //     'email': email,
  //     'fullName': penname,
  //     'name': fullName,
  //     'novelUrl': novelUrl,
  //     'birthDay': birthDay,
  //   };
  //
  //   bool? isSuccess = await postMethods<bool?>(
  //     url: '/api/writer-registration',
  //     accessToken: GetX.Get.find<Controller>().token.value,
  //     dio: dio,
  //     asModel: (map) => map['success'],
  //     body: data,
  //   );
  //
  //   return isSuccess == null ? false : isSuccess;
  // }
  //
  // static Future<bool> checkExistWriterApplication() async {
  //   Dio dio = Dio(options);
  //
  //   Map<String, dynamic>? res = await postMethods<Map<String, dynamic>?>(
  //     url: '/api/writer-registration/checkExist',
  //     accessToken: GetX.Get.find<Controller>().token.value,
  //     dio: dio,
  //     asModel: (map) => map,
  //   );
  //
  //   if (res == null) return false;
  //
  //   return res['success'] == true && res['data'] == true;
  // }
  //
  // static Future<ModelWriterAccountResponse?> getWriterAccount() async {
  //   Dio dio = Dio(options);
  //
  //   return await getData<ModelWriterAccountResponse?>(
  //     url: '/api/writer-account',
  //     accessToken: GetX.Get.find<Controller>().token.value,
  //     dio: dio,
  //     asModel: (map) => ModelWriterAccountResponse.fromJson(map),
  //   );
  // }
  //
  // // My Unlocked
  // static Future<ModelMyUnlockedDoc?> getMyUnlocked({
  //   int page = 1,
  //   int size = 5,
  // }) async {
  //   Dio dio = Dio(options);
  //
  //   return await getData<ModelMyUnlockedDoc?>(
  //     url: '/api/user/myUnlockedAll',
  //     accessToken: GetX.Get.find<Controller>().token.value,
  //     dio: dio,
  //     asModel: (map) => ModelMyUnlockedDoc.fromJson(map['data']),
  //     query: {'page': page, 'size': size},
  //   );
  // }
  //
  // static Future<ModelMyUnlockedDetailDoc?> getMyUnlockedDetail(
  //     {required String novelId}) async {
  //   Dio dio = Dio(options);
  //
  //   return await getData<ModelMyUnlockedDetailDoc?>(
  //     url: '/api/user/myUnlockedChaptersAll/$novelId',
  //     accessToken: GetX.Get.find<Controller>().token.value,
  //     dio: dio,
  //     asModel: (map) => ModelMyUnlockedDetailDoc.fromJson(map),
  //   );
  // }
  //
  // // Cate Detail
  // static Future<ModelNewNovelDoc?> getCategoryDoc({
  //   int page = 1,
  //   int size = 10,
  //   required String collectionId,
  // }) async {
  //   Dio dio = Dio(options);
  //
  //   return await getData<ModelNewNovelDoc?>(
  //     url: '/api/novels',
  //     accessToken: GetX.Get.find<Controller>().token.value,
  //     dio: dio,
  //     asModel: (map) => ModelNewNovelDoc.fromJson(map['data']),
  //     query: {
  //       'collectionId': collectionId,
  //       'page': page,
  //       'size': size,
  //     },
  //   );
  // }
  //
  // static Future<ModelNewNovelDoc?> getDailyTrending({
  //   int page = 1,
  //   int size = 10,
  // }) async {
  //   Dio dio = Dio(options);
  //
  //   return await getData<ModelNewNovelDoc?>(
  //     url: '/api/novels/dailyTrending',
  //     accessToken: GetX.Get.find<Controller>().token.value,
  //     dio: dio,
  //     asModel: (map) => ModelNewNovelDoc.fromJson(map['data']),
  //     query: {
  //       'page': page,
  //       'size': size,
  //     },
  //   );
  // }
  //
  // static Future<List<String>?> getTopTag() async {
  //   Dio dio = Dio(options);
  //
  //   return await getData<List<String>?>(
  //     url: '/api/tags/top',
  //     accessToken: GetX.Get.find<Controller>().token.value,
  //     dio: dio,
  //     asModel: (map) {
  //       List list = map['data'] as List;
  //       return list.map((e) => e.toString()).toList();
  //     },
  //   );
  // }
  //
  // static Future<ModelNewNovelDoc?> getSuggestion({
  //   int page = 1,
  //   int size = 10,
  // }) async {
  //   Dio dio = Dio(options);
  //
  //   return await getData<ModelNewNovelDoc?>(
  //     url: '/api/novels/suggestion',
  //     accessToken: GetX.Get.find<Controller>().token.value,
  //     dio: dio,
  //     asModel: (map) => ModelNewNovelDoc.fromJson(map['data']),
  //     query: {
  //       'page': page,
  //       'size': size,
  //     },
  //   );
  // }
  //
  // static Future<ModelNewNovelDoc?> getNovelByTag({
  //   required String tag,
  //   int page = 1,
  //   int size = 10,
  // }) async {
  //   Dio dio = Dio(options);
  //
  //   return await getData<ModelNewNovelDoc?>(
  //     url: '/api/novels',
  //     accessToken: GetX.Get.find<Controller>().token.value,
  //     dio: dio,
  //     asModel: (map) => ModelNewNovelDoc.fromJson(map['data']),
  //     query: {
  //       'tags': tag,
  //       'page': page,
  //       'size': size,
  //     },
  //   );
  // }
  //
  // static Future<ModelDailyEarnReward?> getDailyEarnRewarData() async {
  //   Dio dio = Dio(options);
  //
  //   return await getData<ModelDailyEarnReward?>(
  //     url: '/api/user/daily-earn-reward',
  //     accessToken: GetX.Get.find<Controller>().token.value,
  //     dio: dio,
  //     asModel: (map) {
  //       if (map['data'] == null) {
  //         return ModelDailyEarnReward.newDaily();
  //       }
  //
  //       return ModelDailyEarnReward.fromJson(map['data']);
  //     },
  //   );
  // }
  //
  // static Future<bool?> updateDailyEarnRewardData(
  //     ModelDailyEarnReward data) async {
  //   Dio dio = Dio(options);
  //   Map<String, dynamic> body = {'data': data.toJson()};
  //
  //   return await postMethods<bool?>(
  //     url: '/api/user/daily-earn-reward',
  //     accessToken: GetX.Get.find<Controller>().token.value,
  //     dio: dio,
  //     asModel: (map) {
  //       final isSuccess = map['success'] as bool;
  //
  //       return isSuccess;
  //     },
  //     body: body,
  //   );
  // }
  //
  // static Future<bool?> updateResources(List<ModelItem> items,
  //     {String? source}) async {
  //   Dio dio = Dio(options);
  //
  //   dynamic _items = items.map((e) => e.toJson()).toList();
  //
  //   Map<String, dynamic> body = {'data': _items, 'voucherSource': source};
  //
  //   return await postMethods<bool?>(
  //     url: '/api/user/update-resources',
  //     accessToken: GetX.Get.find<Controller>().token.value,
  //     dio: dio,
  //     asModel: (map) {
  //       final isSuccess = map['success'] as bool;
  //
  //       return isSuccess;
  //     },
  //     body: body,
  //   );
  // }
  //
  // static Future<List<ModelGift>> getAllGifts() async {
  //   Dio dio = Dio(options);
  //
  //   List<ModelGift>? list = await getData<List<ModelGift>?>(
  //     url: '/api/define-gift',
  //     accessToken: GetX.Get.find<Controller>().token.value,
  //     dio: dio,
  //     asModel: (map) {
  //       final responseList = map['data'] as List;
  //       return responseList.map((e) => ModelGift.fromJson(e)).toList();
  //     },
  //   );
  //
  //   return list == null ? [] : list;
  // }
  //
  // static Future<ModelTopFanPreview?> getPreviewTopFans(String novelId) async {
  //   Dio dio = Dio(options);
  //
  //   return await getData<ModelTopFanPreview?>(
  //     url: '/api/novel-gift/preview/$novelId',
  //     accessToken: GetX.Get.find<Controller>().token.value,
  //     dio: dio,
  //     asModel: (map) {
  //       return ModelTopFanPreview.fromJson(map['data']);
  //     },
  //   );
  // }
  //
  // static Future<ModelSentGiftsDoc?> getGiftWall(
  //   String novelId, {
  //   int page = 1,
  //   int size = 10,
  // }) async {
  //   Dio dio = Dio(options);
  //
  //   return await getData<ModelSentGiftsDoc?>(
  //     url: '/api/novel-gift/wall',
  //     accessToken: GetX.Get.find<Controller>().token.value,
  //     dio: dio,
  //     query: {'novelId': novelId, 'page': page, 'size': size},
  //     asModel: (map) {
  //       return ModelSentGiftsDoc.fromJson(map['data']);
  //     },
  //   );
  // }
  //
  // static Future<ModelGiftTopDoc?> getGiftTop(
  //   String novelId, {
  //   int page = 1,
  //   int size = 10,
  // }) async {
  //   Dio dio = Dio(options);
  //
  //   return await getData<ModelGiftTopDoc?>(
  //     url: '/api/novel-gift/top',
  //     accessToken: GetX.Get.find<Controller>().token.value,
  //     dio: dio,
  //     query: {'novelId': novelId, 'page': page, 'size': size},
  //     asModel: (map) {
  //       return ModelGiftTopDoc.fromJson(map['data']);
  //     },
  //   );
  // }
  //
  // static Future<bool> sendGift({
  //   required String novelId,
  //   required String giftId,
  //   required String quote,
  // }) async {
  //   Dio dio = Dio(options);
  //   dio.options.contentType = Headers.formUrlEncodedContentType;
  //
  //   Map<String, dynamic> body = {
  //     'novelId': novelId,
  //     'giftId': giftId,
  //     'quote': quote,
  //   };
  //
  //   bool? isSuccess = await postMethods<bool?>(
  //     url: '/api/novel-gift',
  //     accessToken: GetX.Get.find<Controller>().token.value,
  //     dio: dio,
  //     asModel: (map) {
  //       final isSuccess = map['success'] as bool;
  //       return isSuccess;
  //     },
  //     body: body,
  //   );
  //
  //   return isSuccess ?? false;
  // }
  //
  // static Future<UserInformation?> getUserInfo() async {
  //   Dio dio = Dio(options);
  //
  //   return await getData<UserInformation?>(
  //     url: '/api/user',
  //     accessToken: GetX.Get.find<Controller>().token.value,
  //     dio: dio,
  //     asModel: (map) {
  //       return UserInformation.fromJson(map['data']);
  //     },
  //   );
  // }
  //
  // static Future<ModelAuthorDetail?> getAuthorInfo(String id) async {
  //   Dio dio = Dio(options);
  //
  //   return await getData<ModelAuthorDetail?>(
  //     url: '/api/author/$id',
  //     accessToken: GetX.Get.find<Controller>().token.value,
  //     dio: dio,
  //     asModel: (map) {
  //       return ModelAuthorDetail.fromJson(map['data']);
  //     },
  //   );
  // }
  //
  // static Future<ModelNewNovelDoc?> getAuthorNovels({
  //   required String authorId,
  //   int page = 1,
  //   int size = 10,
  // }) async {
  //   Dio dio = Dio(options);
  //
  //   return await getData<ModelNewNovelDoc?>(
  //     url: '/api/novels',
  //     accessToken: GetX.Get.find<Controller>().token.value,
  //     dio: dio,
  //     asModel: (map) => ModelNewNovelDoc.fromJson(map['data']),
  //     query: {
  //       'authorId': authorId,
  //       'page': page,
  //       'size': size,
  //     },
  //   );
  // }
  //
  // static Future<bool> followAuthor({
  //   required String authorUsername,
  // }) async {
  //   Dio dio = Dio(options);
  //
  //   bool? isSuccess = await postMethods<bool?>(
  //     url: '/api/author/follow/$authorUsername',
  //     accessToken: GetX.Get.find<Controller>().token.value,
  //     dio: dio,
  //     asModel: (map) {
  //       final isSuccess = map['success'] as bool;
  //       return isSuccess;
  //     },
  //   );
  //
  //   return isSuccess ?? false;
  // }
  //
  // static Future<bool> unfollowAuthor({
  //   required String authorUsername,
  // }) async {
  //   Dio dio = Dio(options);
  //
  //   bool? isSuccess = await postMethods<bool?>(
  //     url: '/api/author/unfollow/$authorUsername',
  //     accessToken: GetX.Get.find<Controller>().token.value,
  //     dio: dio,
  //     asModel: (map) {
  //       final isSuccess = map['success'] as bool;
  //       return isSuccess;
  //     },
  //   );
  //
  //   return isSuccess ?? false;
  // }
  //
  // static Future<ModelAuthorCompassDoc?> getFollowingAuthor(
  //     {int page = 1, int size = 10}) async {
  //   Dio dio = Dio(options);
  //
  //   return await getData<ModelAuthorCompassDoc?>(
  //       url: '/api/author/following/me',
  //       accessToken: GetX.Get.find<Controller>().token.value,
  //       dio: dio,
  //       asModel: (map) => ModelAuthorCompassDoc.fromJson(map['data']),
  //       query: {
  //         'page': page,
  //         'size': size,
  //       });
  // }
  //
  // static Future<bool> sendMail({
  //   required String title,
  //   required String content,
  //   List<PickedFile>? files,
  // }) async {
  //   Dio dio = Dio(options);
  //
  //   FormData formData = FormData.fromMap({
  //     'title': title,
  //     'content': content,
  //   });
  //
  //   if (files != null && files.length > 0) {
  //     for (PickedFile file in files) {
  //       formData.files.add(
  //         MapEntry(
  //           'files',
  //           await MultipartFile.fromFile(file.path,
  //               filename: file.path.split('/').last),
  //         ),
  //       );
  //     }
  //   }
  //
  //   bool? isSuccess = await postMethods<bool?>(
  //     url: '/api/mail/create',
  //     accessToken: GetX.Get.find<Controller>().token.value,
  //     dio: dio,
  //     asModel: (map) {
  //       final isSuccess = map['success'] as bool;
  //       return isSuccess;
  //     },
  //     body: formData,
  //   );
  //
  //   return isSuccess ?? false;
  // }
  //
  // static Future<ModelMailSupportDoc?> getMails(
  //     {int page = 1, int size = 10}) async {
  //   Dio dio = Dio(options);
  //
  //   return await getData<ModelMailSupportDoc?>(
  //     url: '/api/mail/me',
  //     accessToken: GetX.Get.find<Controller>().token.value,
  //     dio: dio,
  //     asModel: (map) => ModelMailSupportDoc.fromJson(map['data']),
  //     query: {
  //       'page': page,
  //       'size': size,
  //     },
  //   );
  // }
  //
  // static Future<ModelMailReplyDoc?> getMailReply(String id,
  //     {int page = 1, int size = 10}) async {
  //   Dio dio = Dio(options);
  //
  //   return await getData<ModelMailReplyDoc?>(
  //     url: '/api/mail/replies/$id',
  //     accessToken: GetX.Get.find<Controller>().token.value,
  //     dio: dio,
  //     asModel: (map) => ModelMailReplyDoc.fromJson(map['data']),
  //     query: {
  //       'page': page,
  //       'size': size,
  //     },
  //   );
  // }
  //
  // static Future<int> getTotalChapters(String novelId) async {
  //   Dio dio = Dio(options);
  //
  //   int? total = await getData<int?>(
  //     url: '/api/chapters/total/$novelId',
  //     accessToken: GetX.Get.find<Controller>().token.value,
  //     dio: dio,
  //     asModel: (map) => map['data'] as int,
  //   );
  //
  //   return total ?? 0;
  // }
  //
  // static Future<String> getContent(String contentId) async {
  //   BaseOptions options = BaseOptions(
  //     baseUrl: "https://" + "lolynovel.com",
  //     connectTimeout: kDefaultTimeOut,
  //     receiveTimeout: kDefaultTimeOut,
  //   );
  //
  //   Dio dio = Dio(options);
  //
  //   try {
  //     Response<String> res = await dio.get(
  //       '/chapters/c-public/$contentId',
  //     );
  //
  //     // CustomLog.log(res.data);
  //
  //     return res.data ?? "";
  //   } on DioError catch (e) {
  //     CustomLog.log(e);
  //     return "";
  //   } catch (e) {
  //     CustomLog.log(e);
  //     return "";
  //   }
  // }
  //
  // static Future<bool> unlockMultiple({
  //   required String novelId,
  //   required String authorUsername,
  //   required List<int> indexes,
  // }) async {
  //   Dio dio = Dio(options);
  //
  //   CustomLog.log(novelId);
  //
  //   bool? isSuccess = await postMethods<bool?>(
  //     url: '/api/user/unlock-chapter-all/multiple',
  //     accessToken: GetX.Get.find<Controller>().token.value,
  //     dio: dio,
  //     asModel: (map) {
  //       final isSuccess = map['success'] as bool;
  //       return isSuccess;
  //     },
  //     body: {
  //       'novelId': novelId,
  //       'indexes': indexes,
  //       'authorUsername': authorUsername,
  //     },
  //   );
  //
  //   return isSuccess ?? false;
  // }
  //
  // static Future<ModelRechargeHistoryDoc?> getRechargeHistory(
  //     {int page = 1, int size = 10}) async {
  //   Dio dio = Dio(options);
  //
  //   return await getData<ModelRechargeHistoryDoc?>(
  //     url: '/api/recharge-history/me',
  //     accessToken: GetX.Get.find<Controller>().token.value,
  //     dio: dio,
  //     asModel: (map) => ModelRechargeHistoryDoc.fromJson(map['data']),
  //     query: {
  //       'page': page,
  //       'size': size,
  //     },
  //   );
  // }
  //
  // static Future<bool> addNewRechargeHistory({
  //   required String packageId,
  //   required double price,
  // }) async {
  //   Dio dio = Dio(options);
  //
  //   bool? isSuccess = await postMethods<bool?>(
  //     url: '/api/recharge-history/new',
  //     accessToken: GetX.Get.find<Controller>().token.value,
  //     dio: dio,
  //     asModel: (map) {
  //       final isSuccess = map['success'] as bool;
  //       return isSuccess;
  //     },
  //     body: {
  //       'packageId': packageId,
  //       'price': price,
  //     },
  //   );
  //
  //   return isSuccess ?? false;
  // }
  //
  // static Future<ModelVoucherHistoryDoc?> getVoucherHistory({
  //   int page = 1,
  //   int size = 10,
  // }) async {
  //   Dio dio = Dio(options);
  //
  //   return await getData<ModelVoucherHistoryDoc?>(
  //     url: '/api/user/vouchers/history',
  //     accessToken: GetX.Get.find<Controller>().token.value,
  //     dio: dio,
  //     asModel: (map) => ModelVoucherHistoryDoc.fromJson(map['data']),
  //     query: {
  //       'page': page,
  //       'size': size,
  //     },
  //   );
  // }
  //
  // static Future<ModelUserDailyMission?> getUserDailyMission({
  //   int page = 1,
  //   int size = 10,
  // }) async {
  //   Dio dio = Dio(options);
  //
  //   return await getData<ModelUserDailyMission?>(
  //     url: '/api/user/daily-missions',
  //     accessToken: GetX.Get.find<Controller>().token.value,
  //     dio: dio,
  //     asModel: (map) => ModelUserDailyMission.fromJson(map['data']),
  //   );
  // }
  //
  // static Future<bool> claimMissionRewards({
  //   required int missionId,
  //   required int voucherQuantity,
  // }) async {
  //   Dio dio = Dio(options);
  //
  //   bool? isSuccess = await postMethods<bool?>(
  //     url: '/api/user/daily-missions/claim',
  //     accessToken: GetX.Get.find<Controller>().token.value,
  //     dio: dio,
  //     asModel: (map) {
  //       final isSuccess = map['success'] as bool;
  //       return isSuccess;
  //     },
  //     body: {
  //       'missionId': missionId,
  //       'voucherQuantity': voucherQuantity,
  //     },
  //   );
  //
  //   return isSuccess ?? false;
  // }
  //
  // static Future<bool> updateDailyMission({
  //   int? purchasedCount,
  //   int? readingTime,
  // }) async {
  //   Dio dio = Dio(options);
  //
  //   bool? isSuccess = await putMethods<bool?>(
  //     url: '/api/user/daily-missions',
  //     accessToken: GetX.Get.find<Controller>().token.value,
  //     dio: dio,
  //     asModel: (map) {
  //       final isSuccess = map['success'] as bool;
  //       return isSuccess;
  //     },
  //     body: {
  //       'purchasedCoinCount': purchasedCount,
  //       'readingTime': readingTime,
  //     },
  //   );
  //
  //   return isSuccess ?? false;
  // }
  //
  // static Future<bool> updateNovelStats({
  //   required String id,
  //   required String type,
  // }) async {
  //   Dio dio = Dio(options);
  //
  //   bool? isSuccess = await putMethods<bool?>(
  //     url: '/api/novels/$id/$type',
  //     accessToken: GetX.Get.find<Controller>().token.value,
  //     dio: dio,
  //     asModel: (map) {
  //       final isSuccess = map['success'] as bool;
  //       return isSuccess;
  //     },
  //   );
  //
  //   return isSuccess ?? false;
  // }
  //
  // static Future<ModelNewNovelDoc?> queryNovels({
  //   int page = 1,
  //   int size = 10,
  //   required Map<String, dynamic> query,
  // }) async {
  //   Dio dio = Dio(options);
  //
  //   return await getData<ModelNewNovelDoc?>(
  //     url: '/api/novels',
  //     accessToken: GetX.Get.find<Controller>().token.value,
  //     dio: dio,
  //     asModel: (map) => ModelNewNovelDoc.fromJson(map['data']),
  //     query: query,
  //   );
  // }
  //
  // static Future<SettingsModel?> getSettings() async {
  //   Dio dio = Dio(options);
  //
  //   return await getData<SettingsModel?>(
  //     url: '/api/settings',
  //     accessToken: GetX.Get.find<Controller>().token.value,
  //     dio: dio,
  //     asModel: (map) => SettingsModel.fromJson(map['data']),
  //   );
  // }
}
