import 'package:uuid/uuid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:fbm/modules/post/domain/entities/post.entity.dart';
import 'package:fbm/modules/post/presentation/controllers/post.controller.dart';

class PostCreateView extends StatefulWidget {
  const PostCreateView({super.key});

  @override
  State<PostCreateView> createState() => _PostCreateViewState();
}

class _PostCreateViewState extends State<PostCreateView> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final PostController _controller = Modular.get<PostController>();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();

  void _store() async {
    if (_formKey.currentState!.validate()) {
      await _controller.store(
        Post(
          id: const Uuid().v4(),
          title: _titleController.text,
          body: _bodyController.text,
        ),
      );

      Modular.to.pop();
    }
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text('Create Post'),
    );
  }

  Widget _buildTitleTextField() {
    return TextFormField(
      controller: _titleController,
      autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: const InputDecoration(
        labelText: 'Title',
        border: OutlineInputBorder(),
        hintText: 'Dummy post'
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
    );
  }

  Widget _buildBodyTextField() {
    return TextFormField(
      controller: _bodyController,
      autofocus: true,
      minLines: 1,
      maxLines: 5,
      textCapitalization: TextCapitalization.sentences,
      decoration: const InputDecoration(
        labelText: 'Body',
        border: OutlineInputBorder(),
        hintText: 'This is a dummy post :P'
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
    );
  }

  Widget _buildButtonCreate() {
    return SizedBox(
      width: double.infinity,
      child: FilledButton(
        onPressed: _store,
        child: const Text('Create post')
      ),
    );
  }

  Widget _buildBody() {
    if (_controller.inLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            _buildTitleTextField(),
            const SizedBox(height: 24.0,),
            _buildBodyTextField(),
            const SizedBox(height: 24.0,),
            _buildButtonCreate()
          ],
        )
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }
}