import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/features/userapp/presentation/pages/details_page.dart';
import '../bloc/userData/user_data_bloc.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);
  int count = 1;
  final controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User List'),
      ),
      body: BlocConsumer<UserDataBloc, UserDataState>(
        listener: (context, state) {
          controller.addListener(() {
            if (controller.position.pixels ==
                controller.position.maxScrollExtent) {
              Future.delayed(
                const Duration(milliseconds: 1200),
                () {
                  context
                      .read<UserDataBloc>()
                      .add(UserDataEvent.LoadMore(page: count++));
                },
              );
            }
          });
        },
        builder: (context, state) {
          return state.isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : state.userList.isNotEmpty
                  ? ListView.builder(
                      controller: controller,
                      itemCount: state.userList.length + 1,
                      itemBuilder: (context, index) {
                        if (index == state.userList.length) {
                          return const CupertinoActivityIndicator();
                        } else {
                          final user = state.userList[index];
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 16.0),
                            child: Card(
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: ListTile(
                                contentPadding: const EdgeInsets.all(16.0),
                                leading: CircleAvatar(
                                  backgroundColor: Colors.blue,
                                  radius: 30.0,
                                  backgroundImage: NetworkImage(user.avatar),
                                ),
                                title: Text(
                                  '${user.firstName} ${user.lastName}',
                                  style: const TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text(
                                  'ID: ${user.id}',
                                  style: const TextStyle(
                                    fontSize: 14.0,
                                  ),
                                ),
                                trailing: const Icon(
                                  Icons.arrow_forward_ios,
                                ),
                                onTap: () {
                                  context
                                      .read<UserDataBloc>()
                                      .add(UserDataEvent.userData(id: user.id));
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            UserDetailsPage(user: user),
                                      ));
                                },
                              ),
                            ),
                          );
                        }
                      },
                    )
                  : const Center(
                      child: Text(
                        'No users found.',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
        },
      ),
    );
  }
}
