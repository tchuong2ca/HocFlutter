class menu_homepage {
  String? id;
  String? status;
  String? createdBy;
  String? createdDate;
  String? lastModifiedBy;
  String? lastModifiedDate;
  int? numberRowEffect;
  String? name;
  Null? parentId;
  String? screenCode;
  Null? recordId;
  Null? url;
  Null? iconClass;
  String? icon;
  String? showTopMenu;
  String? showMainMenu;
  String? showGrantRole;
  String? showMenuManage;
  int? sort;
  int? sortHomeMobile;
  Null? elmType;
  Null? treeNodeAction;
  bool? createNewRecord;
  bool? updateRecord;

  menu_homepage(
      {this.id,
        this.status,
        this.createdBy,
        this.createdDate,
        this.lastModifiedBy,
        this.lastModifiedDate,
        this.numberRowEffect,
        this.name,
        this.parentId,
        this.screenCode,
        this.recordId,
        this.url,
        this.iconClass,
        this.icon,
        this.showTopMenu,
        this.showMainMenu,
        this.showGrantRole,
        this.showMenuManage,
        this.sort,
        this.sortHomeMobile,
        this.elmType,
        this.treeNodeAction,
        this.createNewRecord,
        this.updateRecord});
  menu_homepage.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    status = json['status'];
    createdBy = json['createdBy'];
    createdDate = json['createdDate'];
    lastModifiedBy = json['lastModifiedBy'];
    lastModifiedDate = json['lastModifiedDate'];
    numberRowEffect = json['numberRowEffect'];
    name = json['name'];
    parentId = json['parentId'];
    screenCode = json['screenCode'];
    recordId = json['recordId'];
    url = json['url'];
    iconClass = json['iconClass'];
    icon = json['icon'];
    showTopMenu = json['showTopMenu'];
    showMainMenu = json['showMainMenu'];
    showGrantRole = json['showGrantRole'];
    showMenuManage = json['showMenuManage'];
    sort = json['sort'];
    sortHomeMobile = json['sortHomeMobile'];
    elmType = json['elmType'];
    treeNodeAction = json['treeNodeAction'];
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
    data['parentId'] = this.parentId;
    data['screenCode'] = this.screenCode;
    data['recordId'] = this.recordId;
    data['url'] = this.url;
    data['iconClass'] = this.iconClass;
    data['icon'] = this.icon;
    data['showTopMenu'] = this.showTopMenu;
    data['showMainMenu'] = this.showMainMenu;
    data['showGrantRole'] = this.showGrantRole;
    data['showMenuManage'] = this.showMenuManage;
    data['sort'] = this.sort;
    data['sortHomeMobile'] = this.sortHomeMobile;
    data['elmType'] = this.elmType;
    data['treeNodeAction'] = this.treeNodeAction;
    data['createNewRecord'] = this.createNewRecord;
    data['updateRecord'] = this.updateRecord;
    return data;
  }
}