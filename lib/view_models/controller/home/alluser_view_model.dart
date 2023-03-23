

import 'dart:io';

import 'package:get/get.dart';
import 'package:mvvm_getx/data/response/status.dart';

import '../../../models/home/user_list_model.dart';
import '../../../repository/home_repository/home_repository.dart';

class HomeController extends GetxController{

  RxInt currentIndex = 0.obs;

  final _api = HomeRepository();
  final rxRequestStatus = Status.LOADING.obs;
  final userList = UserListModel().obs;
  final error = ''.obs;
  List dataa =[];

  void setRxRequestStatus(Status _value) => rxRequestStatus.value = _value;
  void setUserList(UserListModel _value) => userList.value = _value;
  void setError(String _value) => error.value = _value;
  void setCurrentIndex(int _index) => currentIndex.value = _index;

  void userListApiHit(){
    _api.userListApi().then((value) {
      setRxRequestStatus(Status.COMPLETE);
      setUserList(value);
      dataa = _api.data;
    }).onError((error, stackTrace) {
      setError(error.toString());
      print(error.toString());
      setRxRequestStatus(Status.ERROR);
    });
  }

  void referedhUserListApi(){
    setRxRequestStatus(Status.LOADING);
    _api.userListApi().then((value) {
      setRxRequestStatus(Status.COMPLETE);
      setUserList(value);
    }).onError((error, stackTrace) {
      setError(error.toString());
      setRxRequestStatus(Status.ERROR);
    });
  }

}