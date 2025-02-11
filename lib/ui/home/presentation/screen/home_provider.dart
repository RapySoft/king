part of 'home_screen.dart';

class HomeProvider extends StatelessWidget {
  const HomeProvider({super.key});

  @override
  Widget build(BuildContext context) {
    final data = (ModalRoute.of(context)?.settings.arguments ?? 0) as int;

    return BlocProvider<HomeCubit>(
        create: (_) => getIt.get(), child: BaseScreen(id: data));
  }
}
