class StoreForm {
  dynamic _data = {};
  StoreForm(data) {}

  setKeyData(String key, dynamic value) {
    this._data[key] = value;
  }

  setData(dynamic value) {
    this._data = value;
  }

  getData() {
    return this._data;
  }

  getKeyData(String key) {
    return this._data[key];
  }
}