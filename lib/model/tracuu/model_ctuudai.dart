class chuongtrinhuudai {
  Null? id;
  Null? status;
  Null? createdBy;
  Null? createdDate;
  Null? lastModifiedBy;
  Null? lastModifiedDate;
  int? numberRowEffect;
  String? name;
  String? fromDate;
  String? toDate;
  String? campaignId;
  String? interestCcy;
  int? interestRate;
  String? interestDuration;
  String? cofCcy;
  int? cofRate;
  String? cofDuration;
  int? totalLimit;
  int? remainLimit;
  Null? cof;
  bool? createNewRecord;
  bool? updateRecord;

  chuongtrinhuudai(
      {this.id,
        this.status,
        this.createdBy,
        this.createdDate,
        this.lastModifiedBy,
        this.lastModifiedDate,
        this.numberRowEffect,
        this.name,
        this.fromDate,
        this.toDate,
        this.campaignId,
        this.interestCcy,
        this.interestRate,
        this.interestDuration,
        this.cofCcy,
        this.cofRate,
        this.cofDuration,
        this.totalLimit,
        this.remainLimit,
        this.cof,
        this.createNewRecord,
        this.updateRecord});

  chuongtrinhuudai.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    status = json['status'];
    createdBy = json['createdBy'];
    createdDate = json['createdDate'];
    lastModifiedBy = json['lastModifiedBy'];
    lastModifiedDate = json['lastModifiedDate'];
    numberRowEffect = json['numberRowEffect'];
    name = json['name'];
    fromDate = json['fromDate'];
    toDate = json['toDate'];
    campaignId = json['campaignId'];
    interestCcy = json['interestCcy'];
    interestRate = json['interestRate'];
    interestDuration = json['interestDuration'];
    cofCcy = json['cofCcy'];
    cofRate = json['cofRate'];
    cofDuration = json['cofDuration'];
    totalLimit = json['totalLimit'];
    remainLimit = json['remainLimit'];
    cof = json['cof'];
    createNewRecord = json['createNewRecord'];
    updateRecord = json['updateRecord'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['status'] = this.status;
    data['createdBy'] = this.createdBy;
    data['createdDate'] = this.createdDate;
    data['lastModifiedBy'] = this.lastModifiedBy;
    data['lastModifiedDate'] = this.lastModifiedDate;
    data['numberRowEffect'] = this.numberRowEffect;
    data['name'] = this.name;
    data['fromDate'] = this.fromDate;
    data['toDate'] = this.toDate;
    data['campaignId'] = this.campaignId;
    data['interestCcy'] = this.interestCcy;
    data['interestRate'] = this.interestRate;
    data['interestDuration'] = this.interestDuration;
    data['cofCcy'] = this.cofCcy;
    data['cofRate'] = this.cofRate;
    data['cofDuration'] = this.cofDuration;
    data['totalLimit'] = this.totalLimit;
    data['remainLimit'] = this.remainLimit;
    data['cof'] = this.cof;
    data['createNewRecord'] = this.createNewRecord;
    data['updateRecord'] = this.updateRecord;
    return data;
  }
}
