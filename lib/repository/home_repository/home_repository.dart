

import 'package:mvvm_getx/data/network/network_api_services.dart';

import '../../../resources/app_url/app_url.dart';
import '../../models/home/user_list_model.dart';

class HomeRepository{

  List data =[];
  final _apiServices = NetworkApiServices();

  Future<UserListModel> userListApi() async{
    dynamic response = await _apiServices.getApi(AppUrl.userListApi);
    data = response;
    return UserListModel.fromJson(response[0]);
  }

  // we can manage all api's here of the home screen
}