
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_project/features/post/model/post.dart';
part 'post_view_model.g.dart';

class PostViewModel = _PostViewModelBase with _$PostViewModel;

abstract class _PostViewModelBase with Store {
  @observable
 List<Post> posts=[]; 
final url ="https://jsonplaceholder.typicode.com/posts";
@observable
bool isServiceGetData=false;

@action
  getAllPost()async{
    requestStatus();
  final response= await Dio().get(url);
  if(response.statusCode==HttpStatus.ok){
  final responseData =response.data as List;
  posts =responseData.map((e) => Post.fromJson(e)).toList();
    }
    requestStatus();
 }
  @action
  requestStatus(){
    isServiceGetData=!isServiceGetData;
  }
 


}
