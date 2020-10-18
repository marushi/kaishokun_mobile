
import 'package:kaishokunmobile/api/repository/repository.dart';
import 'package:kaishokunmobile/components/trouble_collection_view/trouble_collection_state.dart';
import 'package:state_notifier/state_notifier.dart';

class TroubleCollectionController extends StateNotifier<TroubleCollectionState> with LocatorMixin {

  Repository get troubleRepository => read<Repository>();

  TroubleCollectionController() : super(const TroubleCollectionState());

  @override
  void initState() {
    super.initState();
    fetchTroubleData();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> fetchTroubleData() async {
    await troubleRepository.fetchTroubleData().then((troubles) => {
      print(troubles[0].username),
      state = state.copyWith(troubles: troubles)
    });
  }
}