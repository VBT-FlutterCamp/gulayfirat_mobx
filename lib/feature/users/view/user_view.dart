import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../../core/base_view/base_view.dart';
import '../view_model/user_view_model.dart';

class UserView extends StatelessWidget {
  const UserView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<UserViewModel>(
      viewModel: UserViewModel(),
      onModelReady: (model) {
        model.init();
        model.setContext(context);
      },
      onPageBuilder: (BuildContext context, UserViewModel viewModel) =>
          Scaffold(body: Observer(builder: (_) {
        return viewModel.isLoading
            ? ListView.builder(
                itemCount: viewModel.userModel?.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: ListTile(
                      title: Text(viewModel.userModel?[index].title ?? ''),
                      subtitle: Text(viewModel.userModel?[index].body ?? ''),
                      leading: Icon(Icons.info, color: Colors.red),
                    ),
                  );
                },
              )
            : const Center(
                child: CircularProgressIndicator(),
              );
      })),
    );
  }
}
