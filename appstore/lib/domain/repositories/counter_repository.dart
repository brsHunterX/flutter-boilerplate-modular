abstract class CountRepository {
  Future<int> getCount();
  Future<void> saveCount(int count);
}