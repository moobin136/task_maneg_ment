import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
   TaskCard({
    super.key,
    required this.taskCounter,
    required this.label,
  });
  int taskCounter;
  String label ;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: SizedBox(
        width: 100,
        child: Padding(
          padding: EdgeInsetsGeometry.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$taskCounter',
                style: TextTheme.of(
                  context,
                ).titleLarge?.copyWith(fontWeight: FontWeight.w700),
              ),
              FittedBox(
                child: Text(
                  label,
                  style: TextTheme.of(context).titleSmall?.copyWith(
                    fontWeight: FontWeight.w400,
                    color: Colors.black54,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}