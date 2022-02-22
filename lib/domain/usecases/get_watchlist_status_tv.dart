import 'package:ditonton/domain/repositories/tv_repository.dart';

class GetWatchListStatusTV {
  final TvRepository repository;

  GetWatchListStatusTV(this.repository);

  Future<bool> execute(int id) async {
    return repository.isAddedToWatchlistTv(id);
  }
}
