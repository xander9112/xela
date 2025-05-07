import 'package:auto_route/auto_route.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{package.snakeCase()}}/src/_src.dart';

@RoutePage()
class {{name.pascalCase()}}Page extends StatelessWidget {
  const {{name.pascalCase()}}Page({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<{{name.pascalCase()}}Cubit>(
      create: (_) => sl(),
      child: BlocBuilder<{{name.pascalCase()}}Cubit, {{name.pascalCase()}}State>(
        builder: (context, state) {
          return Title(
            color: Colors.black,
            title: '{{name.pascalCase()}}',
            child: Scaffold(
              appBar: AppBar(title: Text({{name.pascalCase()}}I18n.title)),
              body: BlocBuilder<{{name.pascalCase()}}Cubit, {{name.pascalCase()}}State>(
                builder: (context, state) {
                  return const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
