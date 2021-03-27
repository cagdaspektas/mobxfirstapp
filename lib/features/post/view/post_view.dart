import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_project/features/post/viewModel/post_view_model.dart';

class PostView extends StatelessWidget {
  final _viewModel = PostViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _viewModel.getAllPost();
        },
      ),
      body: Observer(builder: (_) {
        return buildListView();
      }), 
    );
  }

  ListView buildListView() {
    return ListView.separated(
        separatorBuilder: (context, index) => Divider(),
        itemCount: _viewModel.posts.length,
        itemBuilder: (BuildContext context, int index) =>buildListTile(index)
      );
  }

  ListTile buildListTile(int index) {
    return ListTile(
          title:Text(_viewModel.posts[index].title) ,
          subtitle: Text(_viewModel.posts[index].body),
          trailing:Text(_viewModel.posts[index].userId.toString()) ,
        );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text("mobx kullanıyorum"),
      leading: Observer(builder: (_) {
        return  Visibility(
          visible: _viewModel.isServiceGetData,
                  child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          ),
        );
      }),
    );
  }
}
