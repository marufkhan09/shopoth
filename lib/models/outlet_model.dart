class OutletModel {
  String name;
  String storeId;
  String address;
  int numOfRating;
  double rating;
  int comments;
  String ownerName;
  String phoneNum;

  OutletModel({
    required this.name,
    required this.storeId,
    required this.address,
    required this.numOfRating,
    required this.rating,
    required this.comments,
    required this.ownerName,
    required this.phoneNum,
  });
}

final List<OutletModel> outletDetail = [
  OutletModel(
    name: 'Zamal Store',
    storeId: '#ASFJG21',
    address: 'Amborkhna Bus stand,SYHLET',
    numOfRating: 133,
    rating: 4.5,
    comments: 100,
    ownerName: 'Md. Zamal Hossain',
    phoneNum: '01992494981',
  ),
  OutletModel(
      name: 'Zamal Store',
      storeId: '#ASFJG21',
      address: 'Amborkhna Bus stand,SYHLET',
      numOfRating: 133,
      rating: 4.5,
      comments: 100,
      ownerName: 'Md. Zamal Hossain',
      phoneNum: '01992494981'),
  OutletModel(
      name: 'Zamal Store',
      storeId: '#ASFJG21',
      address: 'Amborkhna Bus stand,SYHLET',
      numOfRating: 133,
      rating: 4.5,
      comments: 100,
      ownerName: 'Md. Zamal Hossain',
      phoneNum: '01992494981'),
];
