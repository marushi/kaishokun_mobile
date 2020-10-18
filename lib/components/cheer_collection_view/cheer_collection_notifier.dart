
import 'package:kaishokunmobile/api/repository/repository.dart';
import 'package:state_notifier/state_notifier.dart';
import 'cheer_collection_state.dart';

class CheerCollectionNotifier extends StateNotifier<CheerCollectionState> with LocatorMixin {

  Repository get cheerRepository => read<Repository>();

  CheerCollectionNotifier() : super(const CheerCollectionState()) {}

  @override
  void initState() {
    super.initState();
    fetchCheers();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void fetchCheers() {
    cheerRepository.fetchCheerData(1).then((cheers) => {
      state = state.copyWith(cheers: cheers)
    });
  }
}