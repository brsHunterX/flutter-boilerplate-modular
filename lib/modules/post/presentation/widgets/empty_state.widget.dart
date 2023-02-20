import 'package:flutter/material.dart';

class EmptyState extends StatelessWidget {
  final String message;

  const EmptyState({
    super.key,
    required this.message,
  });

  const factory EmptyState.icon({
    Key? key, 
    required IconData icon,
    required String message,
  }) = _EmptyStateWithIcon;

  const factory EmptyState.action({
    Key? key, 
    required String message,
    required String label,
    required Function()? onTap
  }) = _EmptyStateWithAction;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(message)
    );
  }
}

class _EmptyStateWithIcon extends EmptyState {
  final IconData icon;

  const _EmptyStateWithIcon({
    super.key,
    required this.icon,
    required super.message,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Icon(icon, size: 50.0, color: Theme.of(context).colorScheme.primary,),
          ),
          Text(message),
        ],
      ),
    );
  }
}

class _EmptyStateWithAction extends EmptyState {
  final String label;
  final Function()? onTap;

  const _EmptyStateWithAction({
    super.key,
    required super.message,
    required this.label,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(message),
          ),
          FilledButton(
            onPressed: onTap,
            child: Text(label),
          ),
        ],
      ),
    );
  }
}