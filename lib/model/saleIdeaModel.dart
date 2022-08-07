class saleIdeaModel {
  String? id;
  String? status;
  String? createdBy;
  String? createdDate;
  String? lastModifiedBy;
  String? lastModifiedDate;
  int? numberRowEffect;
  String? title;
  String? content;
  String? description;
  bool? createNewRecord;
  bool? updateRecord;

  saleIdeaModel(
      {this.id,
        this.status,
        this.createdBy,
        this.createdDate,
        this.lastModifiedBy,
        this.lastModifiedDate,
        this.numberRowEffect,
        this.title,
        this.content,
        this.description,
        this.createNewRecord,
        this.updateRecord});

  saleIdeaModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    status = json['status'];
    createdBy = json['createdBy'];
    createdDate = json['createdDate'];
    lastModifiedBy = json['lastModifiedBy'];
    lastModifiedDate = json['lastModifiedDate'];
    numberRowEffect = json['numberRowEffect'];
    title = json['title'];
    content = json['content'];
    description = json['description'];
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
    data['title'] = this.title;
    data['content'] = this.content;
    data['description'] = this.description;
    data['createNewRecord'] = this.createNewRecord;
    data['updateRecord'] = this.updateRecord;
    return data;
  }
}
