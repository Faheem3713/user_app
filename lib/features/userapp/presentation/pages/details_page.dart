import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task/features/userapp/domain/entities/user_entity.dart';
import 'package:task/features/userapp/utils/constants.dart';

import '../bloc/userData/user_data_bloc.dart';

class UserDetailsPage extends StatefulWidget {
  final UserEntity user;

  const UserDetailsPage({super.key, required this.user});

  @override
  _UserDetailsPageState createState() => _UserDetailsPageState();
}

class _UserDetailsPageState extends State<UserDetailsPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2400),
    );
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOut,
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Details'),
      ),
      body: FadeTransition(
        opacity: _animation,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: BlocBuilder<UserDataBloc, UserDataState>(
            builder: (context, state) {
              return state.isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : Center(
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                            radius: 60.0,
                            backgroundImage: NetworkImage(widget.user.avatar),
                          ),
                          kheight,
                          Text(
                              '${state.userData?.firstName} ${state.userData?.lastName}',
                              style: kHeaderStyle),
                          const SizedBox(height: 8.0),
                          Text(
                            'ID: ${state.userData?.id}',
                            style: const TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                          kheight,
                          const Text(
                            'Email:',
                            style: kTitleStyle,
                          ),
                          Text(
                            widget.user.email,
                            style: const TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                          kheight,
                        ],
                      ),
                    );
            },
          ),
        ),
      ),
    );
  }
}
