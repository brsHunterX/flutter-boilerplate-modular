import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:fbm/modules/post/domain/entities/post.entity.dart';
import 'package:fbm/modules/post/presentation/controllers/post.controller.dart';
import 'package:fbm/modules/post/presentation/widgets/empty_state.widget.dart';

class PostListView extends StatefulWidget {
  const PostListView({ Key? key }) : super(key: key);

  @override
  _PostListViewState createState() => _PostListViewState();
}

class _PostListViewState extends State<PostListView> {
  final PostController _controller = Modular.get<PostController>();

  @override
  void initState() {
    super.initState();
    _controller.list();
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: const Text('Mural'),
    );
  }

  Widget _buildFAB() {
    return FloatingActionButton(
      child: const Icon(Icons.add_rounded),
      onPressed: () => Modular.to.pushNamed('./create'),
    );
  }

  Widget _buildListTile(Post post) {
    return ListTile(
      title: Text(post.title),
      subtitle: Text(post.body),
      trailing: IconButton(
        icon: const Icon(Icons.delete_rounded),
        onPressed: () => _controller.remove(post.id),
      ),
    );
  }

  Widget _buildBody() {
    return Observer(
      builder: (_) {
        if (_controller.inLoading) {
          return const Center(
            child: CircularProgressIndicator()
          );
        }

        if (
          _controller.inLoading == false &&
          _controller.posts.isEmpty
        ) {
          return EmptyState.action(
            message: 'You don\'t have saved posts.',
            label: 'Create new post',
            onTap: () => Modular.to.pushNamed('./create/')
          );
        }

        return RefreshIndicator(
          onRefresh: _controller.list,
          child: ListView.separated(
            itemCount: _controller.posts.length,
            separatorBuilder: (_, index) => const Divider(),
            itemBuilder: (_, index) => _buildListTile(_controller.posts[index]),
          ),
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      floatingActionButton: _buildFAB(),
    );
  }
}