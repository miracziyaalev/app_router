// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'model/user_model.dart';

class UserDetailView extends StatefulWidget {
  const UserDetailView({
    Key? key,
    required this.model,
  }) : super(key: key);
  final UserModel model;

  @override
  State<UserDetailView> createState() => _UserDetailViewState();
}

class _UserDetailViewState extends State<UserDetailView> {
  late UserModel _model;

  @override
  void initState() {
    _model = widget.model;
    super.initState();
  }

  @override
  void didUpdateWidget(covariant UserDetailView oldWidget) {
    if (widget.model != oldWidget.model) {
      _updateModel();
    }
    super.didUpdateWidget(oldWidget);
  }

  void _updateModel() {
    setState(() {
      _model = widget.model;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.network(_model.avatarUrl),
      ),
      body: Text(_model.imageUrl),
    );
  }
}
