import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:king/di/setup.dart';
import 'package:king/ui/home/presentation/bloc/home_cubit.dart';

part 'home_provider.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key, required this.id});

  final int id;

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  @override
  void initState() {
    super.initState();
    _getData();
  }

  Future<void> _getData() async {
    context.read<HomeCubit>();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold();

    /*return Scaffold(
      appBar: CustomAppBar(
        title: S.current.registered,
        actions: [
          IconButton(
              onPressed: () => _getData(false), icon: const Icon(Icons.save))
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () => _getData(true),
        child: SafeArea(
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: BlocListener<BaseCubit, BaseState>(listener:
                (context, state) {
              switch (state.status) {
                case BaseStatus.initial:
                  EasyLoading.dismiss();
                  break;
                case BaseStatus.loading:
                  EasyLoading.show(status: state.message);
                  break;
                case BaseStatus.loadingRefresh:
                  EasyLoading.dismiss();
                  break;
                case BaseStatus.success:
                  EasyLoading.dismiss();
                  break;
                case BaseStatus.failed:
                  EasyLoading.dismiss();
                  CustomHelperDialog.showAlertDialog(
                      context: context, message: state.message);
                  break;
              }
            }, child:
                BlocBuilder<BaseCubit, BaseState>(builder: (context, state) {
              final data = state.message;

              if (data.isNotEmpty) {
                return _viewData(data);
              } else {
                switch (state.status) {
                  case BaseStatus.success || BaseStatus.failed:
                    return CustomRefreshButton(
                        onPressed: () => _getData(false),
                        isLoading: state.status == BaseStatus.loading);
                  default:
                    return Container();
                }
              }
            })),
          ),
        ),
      ),
    );*/
  }

  Widget _viewData(String data) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [Text(data)],
      ),
    );
  }
}
