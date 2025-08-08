// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tables.dart';

// ignore_for_file: type=lint
class $DmNotebooksTable extends DmNotebooks
    with TableInfo<$DmNotebooksTable, DmNotebook> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DmNotebooksTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _modifiedDateMeta =
      const VerificationMeta('modifiedDate');
  @override
  late final GeneratedColumn<DateTime> modifiedDate = GeneratedColumn<DateTime>(
      'modified_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _orderRankMeta =
      const VerificationMeta('orderRank');
  @override
  late final GeneratedColumn<int> orderRank = GeneratedColumn<int>(
      'order_rank', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _showInReviewMeta =
      const VerificationMeta('showInReview');
  @override
  late final GeneratedColumn<bool> showInReview = GeneratedColumn<bool>(
      'show_in_review', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("show_in_review" IN (0, 1))'));
  static const VerificationMeta _isDeletedMeta =
      const VerificationMeta('isDeleted');
  @override
  late final GeneratedColumn<bool> isDeleted = GeneratedColumn<bool>(
      'is_deleted', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_deleted" IN (0, 1))'));
  static const VerificationMeta _isNewMeta = const VerificationMeta('isNew');
  @override
  late final GeneratedColumn<bool> isNew = GeneratedColumn<bool>(
      'is_new', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_new" IN (0, 1))'));
  static const VerificationMeta _isChangedMeta =
      const VerificationMeta('isChanged');
  @override
  late final GeneratedColumn<bool> isChanged = GeneratedColumn<bool>(
      'is_changed', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_changed" IN (0, 1))'));
  static const VerificationMeta _sortingTypeMeta =
      const VerificationMeta('sortingType');
  @override
  late final GeneratedColumn<int> sortingType = GeneratedColumn<int>(
      'sorting_type', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        title,
        createdDate,
        modifiedDate,
        orderRank,
        showInReview,
        isDeleted,
        isNew,
        isChanged,
        sortingType
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'dm_notebooks';
  @override
  VerificationContext validateIntegrity(Insertable<DmNotebook> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('created_date')) {
      context.handle(
          _createdDateMeta,
          createdDate.isAcceptableOrUnknown(
              data['created_date']!, _createdDateMeta));
    } else if (isInserting) {
      context.missing(_createdDateMeta);
    }
    if (data.containsKey('modified_date')) {
      context.handle(
          _modifiedDateMeta,
          modifiedDate.isAcceptableOrUnknown(
              data['modified_date']!, _modifiedDateMeta));
    } else if (isInserting) {
      context.missing(_modifiedDateMeta);
    }
    if (data.containsKey('order_rank')) {
      context.handle(_orderRankMeta,
          orderRank.isAcceptableOrUnknown(data['order_rank']!, _orderRankMeta));
    } else if (isInserting) {
      context.missing(_orderRankMeta);
    }
    if (data.containsKey('show_in_review')) {
      context.handle(
          _showInReviewMeta,
          showInReview.isAcceptableOrUnknown(
              data['show_in_review']!, _showInReviewMeta));
    } else if (isInserting) {
      context.missing(_showInReviewMeta);
    }
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta));
    } else if (isInserting) {
      context.missing(_isDeletedMeta);
    }
    if (data.containsKey('is_new')) {
      context.handle(
          _isNewMeta, isNew.isAcceptableOrUnknown(data['is_new']!, _isNewMeta));
    } else if (isInserting) {
      context.missing(_isNewMeta);
    }
    if (data.containsKey('is_changed')) {
      context.handle(_isChangedMeta,
          isChanged.isAcceptableOrUnknown(data['is_changed']!, _isChangedMeta));
    } else if (isInserting) {
      context.missing(_isChangedMeta);
    }
    if (data.containsKey('sorting_type')) {
      context.handle(
          _sortingTypeMeta,
          sortingType.isAcceptableOrUnknown(
              data['sorting_type']!, _sortingTypeMeta));
    } else if (isInserting) {
      context.missing(_sortingTypeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DmNotebook map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DmNotebook(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date'])!,
      modifiedDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}modified_date'])!,
      orderRank: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}order_rank'])!,
      showInReview: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}show_in_review'])!,
      isDeleted: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_deleted'])!,
      isNew: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_new'])!,
      isChanged: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_changed'])!,
      sortingType: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}sorting_type'])!,
    );
  }

  @override
  $DmNotebooksTable createAlias(String alias) {
    return $DmNotebooksTable(attachedDatabase, alias);
  }
}

class DmNotebook extends DataClass implements Insertable<DmNotebook> {
  final String id;
  final String title;
  final DateTime createdDate;
  final DateTime modifiedDate;
  final int orderRank;
  final bool showInReview;
  final bool isDeleted;
  final bool isNew;
  final bool isChanged;
  final int sortingType;
  const DmNotebook(
      {required this.id,
      required this.title,
      required this.createdDate,
      required this.modifiedDate,
      required this.orderRank,
      required this.showInReview,
      required this.isDeleted,
      required this.isNew,
      required this.isChanged,
      required this.sortingType});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['title'] = Variable<String>(title);
    map['created_date'] = Variable<DateTime>(createdDate);
    map['modified_date'] = Variable<DateTime>(modifiedDate);
    map['order_rank'] = Variable<int>(orderRank);
    map['show_in_review'] = Variable<bool>(showInReview);
    map['is_deleted'] = Variable<bool>(isDeleted);
    map['is_new'] = Variable<bool>(isNew);
    map['is_changed'] = Variable<bool>(isChanged);
    map['sorting_type'] = Variable<int>(sortingType);
    return map;
  }

  DmNotebooksCompanion toCompanion(bool nullToAbsent) {
    return DmNotebooksCompanion(
      id: Value(id),
      title: Value(title),
      createdDate: Value(createdDate),
      modifiedDate: Value(modifiedDate),
      orderRank: Value(orderRank),
      showInReview: Value(showInReview),
      isDeleted: Value(isDeleted),
      isNew: Value(isNew),
      isChanged: Value(isChanged),
      sortingType: Value(sortingType),
    );
  }

  factory DmNotebook.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DmNotebook(
      id: serializer.fromJson<String>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
      modifiedDate: serializer.fromJson<DateTime>(json['modifiedDate']),
      orderRank: serializer.fromJson<int>(json['orderRank']),
      showInReview: serializer.fromJson<bool>(json['showInReview']),
      isDeleted: serializer.fromJson<bool>(json['isDeleted']),
      isNew: serializer.fromJson<bool>(json['isNew']),
      isChanged: serializer.fromJson<bool>(json['isChanged']),
      sortingType: serializer.fromJson<int>(json['sortingType']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'title': serializer.toJson<String>(title),
      'createdDate': serializer.toJson<DateTime>(createdDate),
      'modifiedDate': serializer.toJson<DateTime>(modifiedDate),
      'orderRank': serializer.toJson<int>(orderRank),
      'showInReview': serializer.toJson<bool>(showInReview),
      'isDeleted': serializer.toJson<bool>(isDeleted),
      'isNew': serializer.toJson<bool>(isNew),
      'isChanged': serializer.toJson<bool>(isChanged),
      'sortingType': serializer.toJson<int>(sortingType),
    };
  }

  DmNotebook copyWith(
          {String? id,
          String? title,
          DateTime? createdDate,
          DateTime? modifiedDate,
          int? orderRank,
          bool? showInReview,
          bool? isDeleted,
          bool? isNew,
          bool? isChanged,
          int? sortingType}) =>
      DmNotebook(
        id: id ?? this.id,
        title: title ?? this.title,
        createdDate: createdDate ?? this.createdDate,
        modifiedDate: modifiedDate ?? this.modifiedDate,
        orderRank: orderRank ?? this.orderRank,
        showInReview: showInReview ?? this.showInReview,
        isDeleted: isDeleted ?? this.isDeleted,
        isNew: isNew ?? this.isNew,
        isChanged: isChanged ?? this.isChanged,
        sortingType: sortingType ?? this.sortingType,
      );
  DmNotebook copyWithCompanion(DmNotebooksCompanion data) {
    return DmNotebook(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      createdDate:
          data.createdDate.present ? data.createdDate.value : this.createdDate,
      modifiedDate: data.modifiedDate.present
          ? data.modifiedDate.value
          : this.modifiedDate,
      orderRank: data.orderRank.present ? data.orderRank.value : this.orderRank,
      showInReview: data.showInReview.present
          ? data.showInReview.value
          : this.showInReview,
      isDeleted: data.isDeleted.present ? data.isDeleted.value : this.isDeleted,
      isNew: data.isNew.present ? data.isNew.value : this.isNew,
      isChanged: data.isChanged.present ? data.isChanged.value : this.isChanged,
      sortingType:
          data.sortingType.present ? data.sortingType.value : this.sortingType,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DmNotebook(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('createdDate: $createdDate, ')
          ..write('modifiedDate: $modifiedDate, ')
          ..write('orderRank: $orderRank, ')
          ..write('showInReview: $showInReview, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('isNew: $isNew, ')
          ..write('isChanged: $isChanged, ')
          ..write('sortingType: $sortingType')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, title, createdDate, modifiedDate,
      orderRank, showInReview, isDeleted, isNew, isChanged, sortingType);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DmNotebook &&
          other.id == this.id &&
          other.title == this.title &&
          other.createdDate == this.createdDate &&
          other.modifiedDate == this.modifiedDate &&
          other.orderRank == this.orderRank &&
          other.showInReview == this.showInReview &&
          other.isDeleted == this.isDeleted &&
          other.isNew == this.isNew &&
          other.isChanged == this.isChanged &&
          other.sortingType == this.sortingType);
}

class DmNotebooksCompanion extends UpdateCompanion<DmNotebook> {
  final Value<String> id;
  final Value<String> title;
  final Value<DateTime> createdDate;
  final Value<DateTime> modifiedDate;
  final Value<int> orderRank;
  final Value<bool> showInReview;
  final Value<bool> isDeleted;
  final Value<bool> isNew;
  final Value<bool> isChanged;
  final Value<int> sortingType;
  final Value<int> rowid;
  const DmNotebooksCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.modifiedDate = const Value.absent(),
    this.orderRank = const Value.absent(),
    this.showInReview = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.isNew = const Value.absent(),
    this.isChanged = const Value.absent(),
    this.sortingType = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DmNotebooksCompanion.insert({
    required String id,
    required String title,
    required DateTime createdDate,
    required DateTime modifiedDate,
    required int orderRank,
    required bool showInReview,
    required bool isDeleted,
    required bool isNew,
    required bool isChanged,
    required int sortingType,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        title = Value(title),
        createdDate = Value(createdDate),
        modifiedDate = Value(modifiedDate),
        orderRank = Value(orderRank),
        showInReview = Value(showInReview),
        isDeleted = Value(isDeleted),
        isNew = Value(isNew),
        isChanged = Value(isChanged),
        sortingType = Value(sortingType);
  static Insertable<DmNotebook> custom({
    Expression<String>? id,
    Expression<String>? title,
    Expression<DateTime>? createdDate,
    Expression<DateTime>? modifiedDate,
    Expression<int>? orderRank,
    Expression<bool>? showInReview,
    Expression<bool>? isDeleted,
    Expression<bool>? isNew,
    Expression<bool>? isChanged,
    Expression<int>? sortingType,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (createdDate != null) 'created_date': createdDate,
      if (modifiedDate != null) 'modified_date': modifiedDate,
      if (orderRank != null) 'order_rank': orderRank,
      if (showInReview != null) 'show_in_review': showInReview,
      if (isDeleted != null) 'is_deleted': isDeleted,
      if (isNew != null) 'is_new': isNew,
      if (isChanged != null) 'is_changed': isChanged,
      if (sortingType != null) 'sorting_type': sortingType,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DmNotebooksCompanion copyWith(
      {Value<String>? id,
      Value<String>? title,
      Value<DateTime>? createdDate,
      Value<DateTime>? modifiedDate,
      Value<int>? orderRank,
      Value<bool>? showInReview,
      Value<bool>? isDeleted,
      Value<bool>? isNew,
      Value<bool>? isChanged,
      Value<int>? sortingType,
      Value<int>? rowid}) {
    return DmNotebooksCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      createdDate: createdDate ?? this.createdDate,
      modifiedDate: modifiedDate ?? this.modifiedDate,
      orderRank: orderRank ?? this.orderRank,
      showInReview: showInReview ?? this.showInReview,
      isDeleted: isDeleted ?? this.isDeleted,
      isNew: isNew ?? this.isNew,
      isChanged: isChanged ?? this.isChanged,
      sortingType: sortingType ?? this.sortingType,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (modifiedDate.present) {
      map['modified_date'] = Variable<DateTime>(modifiedDate.value);
    }
    if (orderRank.present) {
      map['order_rank'] = Variable<int>(orderRank.value);
    }
    if (showInReview.present) {
      map['show_in_review'] = Variable<bool>(showInReview.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool>(isDeleted.value);
    }
    if (isNew.present) {
      map['is_new'] = Variable<bool>(isNew.value);
    }
    if (isChanged.present) {
      map['is_changed'] = Variable<bool>(isChanged.value);
    }
    if (sortingType.present) {
      map['sorting_type'] = Variable<int>(sortingType.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DmNotebooksCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('createdDate: $createdDate, ')
          ..write('modifiedDate: $modifiedDate, ')
          ..write('orderRank: $orderRank, ')
          ..write('showInReview: $showInReview, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('isNew: $isNew, ')
          ..write('isChanged: $isChanged, ')
          ..write('sortingType: $sortingType, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $DmLocationsTable extends DmLocations
    with TableInfo<$DmLocationsTable, DmLocation> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DmLocationsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _addressMeta =
      const VerificationMeta('address');
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
      'address', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _latitudeMeta =
      const VerificationMeta('latitude');
  @override
  late final GeneratedColumn<double> latitude = GeneratedColumn<double>(
      'latitude', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _longitudeMeta =
      const VerificationMeta('longitude');
  @override
  late final GeneratedColumn<double> longitude = GeneratedColumn<double>(
      'longitude', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, address, latitude, longitude, createdDate];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'dm_locations';
  @override
  VerificationContext validateIntegrity(Insertable<DmLocation> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('address')) {
      context.handle(_addressMeta,
          address.isAcceptableOrUnknown(data['address']!, _addressMeta));
    } else if (isInserting) {
      context.missing(_addressMeta);
    }
    if (data.containsKey('latitude')) {
      context.handle(_latitudeMeta,
          latitude.isAcceptableOrUnknown(data['latitude']!, _latitudeMeta));
    } else if (isInserting) {
      context.missing(_latitudeMeta);
    }
    if (data.containsKey('longitude')) {
      context.handle(_longitudeMeta,
          longitude.isAcceptableOrUnknown(data['longitude']!, _longitudeMeta));
    } else if (isInserting) {
      context.missing(_longitudeMeta);
    }
    if (data.containsKey('created_date')) {
      context.handle(
          _createdDateMeta,
          createdDate.isAcceptableOrUnknown(
              data['created_date']!, _createdDateMeta));
    } else if (isInserting) {
      context.missing(_createdDateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DmLocation map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DmLocation(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      address: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}address'])!,
      latitude: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}latitude'])!,
      longitude: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}longitude'])!,
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date'])!,
    );
  }

  @override
  $DmLocationsTable createAlias(String alias) {
    return $DmLocationsTable(attachedDatabase, alias);
  }
}

class DmLocation extends DataClass implements Insertable<DmLocation> {
  final String id;
  final String address;
  final double latitude;
  final double longitude;
  final DateTime createdDate;
  const DmLocation(
      {required this.id,
      required this.address,
      required this.latitude,
      required this.longitude,
      required this.createdDate});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['address'] = Variable<String>(address);
    map['latitude'] = Variable<double>(latitude);
    map['longitude'] = Variable<double>(longitude);
    map['created_date'] = Variable<DateTime>(createdDate);
    return map;
  }

  DmLocationsCompanion toCompanion(bool nullToAbsent) {
    return DmLocationsCompanion(
      id: Value(id),
      address: Value(address),
      latitude: Value(latitude),
      longitude: Value(longitude),
      createdDate: Value(createdDate),
    );
  }

  factory DmLocation.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DmLocation(
      id: serializer.fromJson<String>(json['id']),
      address: serializer.fromJson<String>(json['address']),
      latitude: serializer.fromJson<double>(json['latitude']),
      longitude: serializer.fromJson<double>(json['longitude']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'address': serializer.toJson<String>(address),
      'latitude': serializer.toJson<double>(latitude),
      'longitude': serializer.toJson<double>(longitude),
      'createdDate': serializer.toJson<DateTime>(createdDate),
    };
  }

  DmLocation copyWith(
          {String? id,
          String? address,
          double? latitude,
          double? longitude,
          DateTime? createdDate}) =>
      DmLocation(
        id: id ?? this.id,
        address: address ?? this.address,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
        createdDate: createdDate ?? this.createdDate,
      );
  DmLocation copyWithCompanion(DmLocationsCompanion data) {
    return DmLocation(
      id: data.id.present ? data.id.value : this.id,
      address: data.address.present ? data.address.value : this.address,
      latitude: data.latitude.present ? data.latitude.value : this.latitude,
      longitude: data.longitude.present ? data.longitude.value : this.longitude,
      createdDate:
          data.createdDate.present ? data.createdDate.value : this.createdDate,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DmLocation(')
          ..write('id: $id, ')
          ..write('address: $address, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('createdDate: $createdDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, address, latitude, longitude, createdDate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DmLocation &&
          other.id == this.id &&
          other.address == this.address &&
          other.latitude == this.latitude &&
          other.longitude == this.longitude &&
          other.createdDate == this.createdDate);
}

class DmLocationsCompanion extends UpdateCompanion<DmLocation> {
  final Value<String> id;
  final Value<String> address;
  final Value<double> latitude;
  final Value<double> longitude;
  final Value<DateTime> createdDate;
  final Value<int> rowid;
  const DmLocationsCompanion({
    this.id = const Value.absent(),
    this.address = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DmLocationsCompanion.insert({
    required String id,
    required String address,
    required double latitude,
    required double longitude,
    required DateTime createdDate,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        address = Value(address),
        latitude = Value(latitude),
        longitude = Value(longitude),
        createdDate = Value(createdDate);
  static Insertable<DmLocation> custom({
    Expression<String>? id,
    Expression<String>? address,
    Expression<double>? latitude,
    Expression<double>? longitude,
    Expression<DateTime>? createdDate,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (address != null) 'address': address,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (createdDate != null) 'created_date': createdDate,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DmLocationsCompanion copyWith(
      {Value<String>? id,
      Value<String>? address,
      Value<double>? latitude,
      Value<double>? longitude,
      Value<DateTime>? createdDate,
      Value<int>? rowid}) {
    return DmLocationsCompanion(
      id: id ?? this.id,
      address: address ?? this.address,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      createdDate: createdDate ?? this.createdDate,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (latitude.present) {
      map['latitude'] = Variable<double>(latitude.value);
    }
    if (longitude.present) {
      map['longitude'] = Variable<double>(longitude.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DmLocationsCompanion(')
          ..write('id: $id, ')
          ..write('address: $address, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('createdDate: $createdDate, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $DmNotesTable extends DmNotes with TableInfo<$DmNotesTable, DmNote> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DmNotesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _notebookIdMeta =
      const VerificationMeta('notebookId');
  @override
  late final GeneratedColumn<String> notebookId = GeneratedColumn<String>(
      'notebook_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES dm_notebooks (id) ON DELETE NO ACTION'));
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'text', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
      'date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _locationIdMeta =
      const VerificationMeta('locationId');
  @override
  late final GeneratedColumn<String> locationId = GeneratedColumn<String>(
      'location_id', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES dm_locations (id) ON DELETE NO ACTION'));
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _modifiedDateMeta =
      const VerificationMeta('modifiedDate');
  @override
  late final GeneratedColumn<DateTime> modifiedDate = GeneratedColumn<DateTime>(
      'modified_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _isNewMeta = const VerificationMeta('isNew');
  @override
  late final GeneratedColumn<bool> isNew = GeneratedColumn<bool>(
      'is_new', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_new" IN (0, 1))'));
  static const VerificationMeta _isChangedMeta =
      const VerificationMeta('isChanged');
  @override
  late final GeneratedColumn<bool> isChanged = GeneratedColumn<bool>(
      'is_changed', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_changed" IN (0, 1))'));
  static const VerificationMeta _isDeletedMeta =
      const VerificationMeta('isDeleted');
  @override
  late final GeneratedColumn<bool> isDeleted = GeneratedColumn<bool>(
      'is_deleted', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_deleted" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        notebookId,
        content,
        date,
        locationId,
        createdDate,
        modifiedDate,
        isNew,
        isChanged,
        isDeleted
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'dm_notes';
  @override
  VerificationContext validateIntegrity(Insertable<DmNote> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('notebook_id')) {
      context.handle(
          _notebookIdMeta,
          notebookId.isAcceptableOrUnknown(
              data['notebook_id']!, _notebookIdMeta));
    } else if (isInserting) {
      context.missing(_notebookIdMeta);
    }
    if (data.containsKey('text')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['text']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('location_id')) {
      context.handle(
          _locationIdMeta,
          locationId.isAcceptableOrUnknown(
              data['location_id']!, _locationIdMeta));
    }
    if (data.containsKey('created_date')) {
      context.handle(
          _createdDateMeta,
          createdDate.isAcceptableOrUnknown(
              data['created_date']!, _createdDateMeta));
    } else if (isInserting) {
      context.missing(_createdDateMeta);
    }
    if (data.containsKey('modified_date')) {
      context.handle(
          _modifiedDateMeta,
          modifiedDate.isAcceptableOrUnknown(
              data['modified_date']!, _modifiedDateMeta));
    } else if (isInserting) {
      context.missing(_modifiedDateMeta);
    }
    if (data.containsKey('is_new')) {
      context.handle(
          _isNewMeta, isNew.isAcceptableOrUnknown(data['is_new']!, _isNewMeta));
    } else if (isInserting) {
      context.missing(_isNewMeta);
    }
    if (data.containsKey('is_changed')) {
      context.handle(_isChangedMeta,
          isChanged.isAcceptableOrUnknown(data['is_changed']!, _isChangedMeta));
    } else if (isInserting) {
      context.missing(_isChangedMeta);
    }
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta));
    } else if (isInserting) {
      context.missing(_isDeletedMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DmNote map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DmNote(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      notebookId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notebook_id'])!,
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}text'])!,
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}date'])!,
      locationId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}location_id']),
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date'])!,
      modifiedDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}modified_date'])!,
      isNew: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_new'])!,
      isChanged: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_changed'])!,
      isDeleted: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_deleted'])!,
    );
  }

  @override
  $DmNotesTable createAlias(String alias) {
    return $DmNotesTable(attachedDatabase, alias);
  }
}

class DmNote extends DataClass implements Insertable<DmNote> {
  final String id;
  final String notebookId;
  final String content;
  final DateTime date;
  final String? locationId;
  final DateTime createdDate;
  final DateTime modifiedDate;
  final bool isNew;
  final bool isChanged;
  final bool isDeleted;
  const DmNote(
      {required this.id,
      required this.notebookId,
      required this.content,
      required this.date,
      this.locationId,
      required this.createdDate,
      required this.modifiedDate,
      required this.isNew,
      required this.isChanged,
      required this.isDeleted});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['notebook_id'] = Variable<String>(notebookId);
    map['text'] = Variable<String>(content);
    map['date'] = Variable<DateTime>(date);
    if (!nullToAbsent || locationId != null) {
      map['location_id'] = Variable<String>(locationId);
    }
    map['created_date'] = Variable<DateTime>(createdDate);
    map['modified_date'] = Variable<DateTime>(modifiedDate);
    map['is_new'] = Variable<bool>(isNew);
    map['is_changed'] = Variable<bool>(isChanged);
    map['is_deleted'] = Variable<bool>(isDeleted);
    return map;
  }

  DmNotesCompanion toCompanion(bool nullToAbsent) {
    return DmNotesCompanion(
      id: Value(id),
      notebookId: Value(notebookId),
      content: Value(content),
      date: Value(date),
      locationId: locationId == null && nullToAbsent
          ? const Value.absent()
          : Value(locationId),
      createdDate: Value(createdDate),
      modifiedDate: Value(modifiedDate),
      isNew: Value(isNew),
      isChanged: Value(isChanged),
      isDeleted: Value(isDeleted),
    );
  }

  factory DmNote.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DmNote(
      id: serializer.fromJson<String>(json['id']),
      notebookId: serializer.fromJson<String>(json['notebookId']),
      content: serializer.fromJson<String>(json['content']),
      date: serializer.fromJson<DateTime>(json['date']),
      locationId: serializer.fromJson<String?>(json['locationId']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
      modifiedDate: serializer.fromJson<DateTime>(json['modifiedDate']),
      isNew: serializer.fromJson<bool>(json['isNew']),
      isChanged: serializer.fromJson<bool>(json['isChanged']),
      isDeleted: serializer.fromJson<bool>(json['isDeleted']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'notebookId': serializer.toJson<String>(notebookId),
      'content': serializer.toJson<String>(content),
      'date': serializer.toJson<DateTime>(date),
      'locationId': serializer.toJson<String?>(locationId),
      'createdDate': serializer.toJson<DateTime>(createdDate),
      'modifiedDate': serializer.toJson<DateTime>(modifiedDate),
      'isNew': serializer.toJson<bool>(isNew),
      'isChanged': serializer.toJson<bool>(isChanged),
      'isDeleted': serializer.toJson<bool>(isDeleted),
    };
  }

  DmNote copyWith(
          {String? id,
          String? notebookId,
          String? content,
          DateTime? date,
          Value<String?> locationId = const Value.absent(),
          DateTime? createdDate,
          DateTime? modifiedDate,
          bool? isNew,
          bool? isChanged,
          bool? isDeleted}) =>
      DmNote(
        id: id ?? this.id,
        notebookId: notebookId ?? this.notebookId,
        content: content ?? this.content,
        date: date ?? this.date,
        locationId: locationId.present ? locationId.value : this.locationId,
        createdDate: createdDate ?? this.createdDate,
        modifiedDate: modifiedDate ?? this.modifiedDate,
        isNew: isNew ?? this.isNew,
        isChanged: isChanged ?? this.isChanged,
        isDeleted: isDeleted ?? this.isDeleted,
      );
  DmNote copyWithCompanion(DmNotesCompanion data) {
    return DmNote(
      id: data.id.present ? data.id.value : this.id,
      notebookId:
          data.notebookId.present ? data.notebookId.value : this.notebookId,
      content: data.content.present ? data.content.value : this.content,
      date: data.date.present ? data.date.value : this.date,
      locationId:
          data.locationId.present ? data.locationId.value : this.locationId,
      createdDate:
          data.createdDate.present ? data.createdDate.value : this.createdDate,
      modifiedDate: data.modifiedDate.present
          ? data.modifiedDate.value
          : this.modifiedDate,
      isNew: data.isNew.present ? data.isNew.value : this.isNew,
      isChanged: data.isChanged.present ? data.isChanged.value : this.isChanged,
      isDeleted: data.isDeleted.present ? data.isDeleted.value : this.isDeleted,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DmNote(')
          ..write('id: $id, ')
          ..write('notebookId: $notebookId, ')
          ..write('content: $content, ')
          ..write('date: $date, ')
          ..write('locationId: $locationId, ')
          ..write('createdDate: $createdDate, ')
          ..write('modifiedDate: $modifiedDate, ')
          ..write('isNew: $isNew, ')
          ..write('isChanged: $isChanged, ')
          ..write('isDeleted: $isDeleted')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, notebookId, content, date, locationId,
      createdDate, modifiedDate, isNew, isChanged, isDeleted);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DmNote &&
          other.id == this.id &&
          other.notebookId == this.notebookId &&
          other.content == this.content &&
          other.date == this.date &&
          other.locationId == this.locationId &&
          other.createdDate == this.createdDate &&
          other.modifiedDate == this.modifiedDate &&
          other.isNew == this.isNew &&
          other.isChanged == this.isChanged &&
          other.isDeleted == this.isDeleted);
}

class DmNotesCompanion extends UpdateCompanion<DmNote> {
  final Value<String> id;
  final Value<String> notebookId;
  final Value<String> content;
  final Value<DateTime> date;
  final Value<String?> locationId;
  final Value<DateTime> createdDate;
  final Value<DateTime> modifiedDate;
  final Value<bool> isNew;
  final Value<bool> isChanged;
  final Value<bool> isDeleted;
  final Value<int> rowid;
  const DmNotesCompanion({
    this.id = const Value.absent(),
    this.notebookId = const Value.absent(),
    this.content = const Value.absent(),
    this.date = const Value.absent(),
    this.locationId = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.modifiedDate = const Value.absent(),
    this.isNew = const Value.absent(),
    this.isChanged = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DmNotesCompanion.insert({
    required String id,
    required String notebookId,
    required String content,
    required DateTime date,
    this.locationId = const Value.absent(),
    required DateTime createdDate,
    required DateTime modifiedDate,
    required bool isNew,
    required bool isChanged,
    required bool isDeleted,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        notebookId = Value(notebookId),
        content = Value(content),
        date = Value(date),
        createdDate = Value(createdDate),
        modifiedDate = Value(modifiedDate),
        isNew = Value(isNew),
        isChanged = Value(isChanged),
        isDeleted = Value(isDeleted);
  static Insertable<DmNote> custom({
    Expression<String>? id,
    Expression<String>? notebookId,
    Expression<String>? content,
    Expression<DateTime>? date,
    Expression<String>? locationId,
    Expression<DateTime>? createdDate,
    Expression<DateTime>? modifiedDate,
    Expression<bool>? isNew,
    Expression<bool>? isChanged,
    Expression<bool>? isDeleted,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (notebookId != null) 'notebook_id': notebookId,
      if (content != null) 'text': content,
      if (date != null) 'date': date,
      if (locationId != null) 'location_id': locationId,
      if (createdDate != null) 'created_date': createdDate,
      if (modifiedDate != null) 'modified_date': modifiedDate,
      if (isNew != null) 'is_new': isNew,
      if (isChanged != null) 'is_changed': isChanged,
      if (isDeleted != null) 'is_deleted': isDeleted,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DmNotesCompanion copyWith(
      {Value<String>? id,
      Value<String>? notebookId,
      Value<String>? content,
      Value<DateTime>? date,
      Value<String?>? locationId,
      Value<DateTime>? createdDate,
      Value<DateTime>? modifiedDate,
      Value<bool>? isNew,
      Value<bool>? isChanged,
      Value<bool>? isDeleted,
      Value<int>? rowid}) {
    return DmNotesCompanion(
      id: id ?? this.id,
      notebookId: notebookId ?? this.notebookId,
      content: content ?? this.content,
      date: date ?? this.date,
      locationId: locationId ?? this.locationId,
      createdDate: createdDate ?? this.createdDate,
      modifiedDate: modifiedDate ?? this.modifiedDate,
      isNew: isNew ?? this.isNew,
      isChanged: isChanged ?? this.isChanged,
      isDeleted: isDeleted ?? this.isDeleted,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (notebookId.present) {
      map['notebook_id'] = Variable<String>(notebookId.value);
    }
    if (content.present) {
      map['text'] = Variable<String>(content.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    if (locationId.present) {
      map['location_id'] = Variable<String>(locationId.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (modifiedDate.present) {
      map['modified_date'] = Variable<DateTime>(modifiedDate.value);
    }
    if (isNew.present) {
      map['is_new'] = Variable<bool>(isNew.value);
    }
    if (isChanged.present) {
      map['is_changed'] = Variable<bool>(isChanged.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool>(isDeleted.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DmNotesCompanion(')
          ..write('id: $id, ')
          ..write('notebookId: $notebookId, ')
          ..write('content: $content, ')
          ..write('date: $date, ')
          ..write('locationId: $locationId, ')
          ..write('createdDate: $createdDate, ')
          ..write('modifiedDate: $modifiedDate, ')
          ..write('isNew: $isNew, ')
          ..write('isChanged: $isChanged, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $DmTagsTable extends DmTags with TableInfo<$DmTagsTable, DmTag> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DmTagsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'text', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _orderRankMeta =
      const VerificationMeta('orderRank');
  @override
  late final GeneratedColumn<int> orderRank = GeneratedColumn<int>(
      'order_rank', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _modifiedDateMeta =
      const VerificationMeta('modifiedDate');
  @override
  late final GeneratedColumn<DateTime> modifiedDate = GeneratedColumn<DateTime>(
      'modified_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _isNewMeta = const VerificationMeta('isNew');
  @override
  late final GeneratedColumn<bool> isNew = GeneratedColumn<bool>(
      'is_new', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_new" IN (0, 1))'));
  static const VerificationMeta _isChangedMeta =
      const VerificationMeta('isChanged');
  @override
  late final GeneratedColumn<bool> isChanged = GeneratedColumn<bool>(
      'is_changed', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_changed" IN (0, 1))'));
  static const VerificationMeta _isDeletedMeta =
      const VerificationMeta('isDeleted');
  @override
  late final GeneratedColumn<bool> isDeleted = GeneratedColumn<bool>(
      'is_deleted', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_deleted" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        content,
        orderRank,
        createdDate,
        modifiedDate,
        isNew,
        isChanged,
        isDeleted
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'dm_tags';
  @override
  VerificationContext validateIntegrity(Insertable<DmTag> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('text')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['text']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    if (data.containsKey('order_rank')) {
      context.handle(_orderRankMeta,
          orderRank.isAcceptableOrUnknown(data['order_rank']!, _orderRankMeta));
    } else if (isInserting) {
      context.missing(_orderRankMeta);
    }
    if (data.containsKey('created_date')) {
      context.handle(
          _createdDateMeta,
          createdDate.isAcceptableOrUnknown(
              data['created_date']!, _createdDateMeta));
    } else if (isInserting) {
      context.missing(_createdDateMeta);
    }
    if (data.containsKey('modified_date')) {
      context.handle(
          _modifiedDateMeta,
          modifiedDate.isAcceptableOrUnknown(
              data['modified_date']!, _modifiedDateMeta));
    } else if (isInserting) {
      context.missing(_modifiedDateMeta);
    }
    if (data.containsKey('is_new')) {
      context.handle(
          _isNewMeta, isNew.isAcceptableOrUnknown(data['is_new']!, _isNewMeta));
    } else if (isInserting) {
      context.missing(_isNewMeta);
    }
    if (data.containsKey('is_changed')) {
      context.handle(_isChangedMeta,
          isChanged.isAcceptableOrUnknown(data['is_changed']!, _isChangedMeta));
    } else if (isInserting) {
      context.missing(_isChangedMeta);
    }
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta));
    } else if (isInserting) {
      context.missing(_isDeletedMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DmTag map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DmTag(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}text'])!,
      orderRank: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}order_rank'])!,
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date'])!,
      modifiedDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}modified_date'])!,
      isNew: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_new'])!,
      isChanged: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_changed'])!,
      isDeleted: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_deleted'])!,
    );
  }

  @override
  $DmTagsTable createAlias(String alias) {
    return $DmTagsTable(attachedDatabase, alias);
  }
}

class DmTag extends DataClass implements Insertable<DmTag> {
  final String id;
  final String content;
  final int orderRank;
  final DateTime createdDate;
  final DateTime modifiedDate;
  final bool isNew;
  final bool isChanged;
  final bool isDeleted;
  const DmTag(
      {required this.id,
      required this.content,
      required this.orderRank,
      required this.createdDate,
      required this.modifiedDate,
      required this.isNew,
      required this.isChanged,
      required this.isDeleted});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['text'] = Variable<String>(content);
    map['order_rank'] = Variable<int>(orderRank);
    map['created_date'] = Variable<DateTime>(createdDate);
    map['modified_date'] = Variable<DateTime>(modifiedDate);
    map['is_new'] = Variable<bool>(isNew);
    map['is_changed'] = Variable<bool>(isChanged);
    map['is_deleted'] = Variable<bool>(isDeleted);
    return map;
  }

  DmTagsCompanion toCompanion(bool nullToAbsent) {
    return DmTagsCompanion(
      id: Value(id),
      content: Value(content),
      orderRank: Value(orderRank),
      createdDate: Value(createdDate),
      modifiedDate: Value(modifiedDate),
      isNew: Value(isNew),
      isChanged: Value(isChanged),
      isDeleted: Value(isDeleted),
    );
  }

  factory DmTag.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DmTag(
      id: serializer.fromJson<String>(json['id']),
      content: serializer.fromJson<String>(json['content']),
      orderRank: serializer.fromJson<int>(json['orderRank']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
      modifiedDate: serializer.fromJson<DateTime>(json['modifiedDate']),
      isNew: serializer.fromJson<bool>(json['isNew']),
      isChanged: serializer.fromJson<bool>(json['isChanged']),
      isDeleted: serializer.fromJson<bool>(json['isDeleted']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'content': serializer.toJson<String>(content),
      'orderRank': serializer.toJson<int>(orderRank),
      'createdDate': serializer.toJson<DateTime>(createdDate),
      'modifiedDate': serializer.toJson<DateTime>(modifiedDate),
      'isNew': serializer.toJson<bool>(isNew),
      'isChanged': serializer.toJson<bool>(isChanged),
      'isDeleted': serializer.toJson<bool>(isDeleted),
    };
  }

  DmTag copyWith(
          {String? id,
          String? content,
          int? orderRank,
          DateTime? createdDate,
          DateTime? modifiedDate,
          bool? isNew,
          bool? isChanged,
          bool? isDeleted}) =>
      DmTag(
        id: id ?? this.id,
        content: content ?? this.content,
        orderRank: orderRank ?? this.orderRank,
        createdDate: createdDate ?? this.createdDate,
        modifiedDate: modifiedDate ?? this.modifiedDate,
        isNew: isNew ?? this.isNew,
        isChanged: isChanged ?? this.isChanged,
        isDeleted: isDeleted ?? this.isDeleted,
      );
  DmTag copyWithCompanion(DmTagsCompanion data) {
    return DmTag(
      id: data.id.present ? data.id.value : this.id,
      content: data.content.present ? data.content.value : this.content,
      orderRank: data.orderRank.present ? data.orderRank.value : this.orderRank,
      createdDate:
          data.createdDate.present ? data.createdDate.value : this.createdDate,
      modifiedDate: data.modifiedDate.present
          ? data.modifiedDate.value
          : this.modifiedDate,
      isNew: data.isNew.present ? data.isNew.value : this.isNew,
      isChanged: data.isChanged.present ? data.isChanged.value : this.isChanged,
      isDeleted: data.isDeleted.present ? data.isDeleted.value : this.isDeleted,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DmTag(')
          ..write('id: $id, ')
          ..write('content: $content, ')
          ..write('orderRank: $orderRank, ')
          ..write('createdDate: $createdDate, ')
          ..write('modifiedDate: $modifiedDate, ')
          ..write('isNew: $isNew, ')
          ..write('isChanged: $isChanged, ')
          ..write('isDeleted: $isDeleted')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, content, orderRank, createdDate,
      modifiedDate, isNew, isChanged, isDeleted);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DmTag &&
          other.id == this.id &&
          other.content == this.content &&
          other.orderRank == this.orderRank &&
          other.createdDate == this.createdDate &&
          other.modifiedDate == this.modifiedDate &&
          other.isNew == this.isNew &&
          other.isChanged == this.isChanged &&
          other.isDeleted == this.isDeleted);
}

class DmTagsCompanion extends UpdateCompanion<DmTag> {
  final Value<String> id;
  final Value<String> content;
  final Value<int> orderRank;
  final Value<DateTime> createdDate;
  final Value<DateTime> modifiedDate;
  final Value<bool> isNew;
  final Value<bool> isChanged;
  final Value<bool> isDeleted;
  final Value<int> rowid;
  const DmTagsCompanion({
    this.id = const Value.absent(),
    this.content = const Value.absent(),
    this.orderRank = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.modifiedDate = const Value.absent(),
    this.isNew = const Value.absent(),
    this.isChanged = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DmTagsCompanion.insert({
    required String id,
    required String content,
    required int orderRank,
    required DateTime createdDate,
    required DateTime modifiedDate,
    required bool isNew,
    required bool isChanged,
    required bool isDeleted,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        content = Value(content),
        orderRank = Value(orderRank),
        createdDate = Value(createdDate),
        modifiedDate = Value(modifiedDate),
        isNew = Value(isNew),
        isChanged = Value(isChanged),
        isDeleted = Value(isDeleted);
  static Insertable<DmTag> custom({
    Expression<String>? id,
    Expression<String>? content,
    Expression<int>? orderRank,
    Expression<DateTime>? createdDate,
    Expression<DateTime>? modifiedDate,
    Expression<bool>? isNew,
    Expression<bool>? isChanged,
    Expression<bool>? isDeleted,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (content != null) 'text': content,
      if (orderRank != null) 'order_rank': orderRank,
      if (createdDate != null) 'created_date': createdDate,
      if (modifiedDate != null) 'modified_date': modifiedDate,
      if (isNew != null) 'is_new': isNew,
      if (isChanged != null) 'is_changed': isChanged,
      if (isDeleted != null) 'is_deleted': isDeleted,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DmTagsCompanion copyWith(
      {Value<String>? id,
      Value<String>? content,
      Value<int>? orderRank,
      Value<DateTime>? createdDate,
      Value<DateTime>? modifiedDate,
      Value<bool>? isNew,
      Value<bool>? isChanged,
      Value<bool>? isDeleted,
      Value<int>? rowid}) {
    return DmTagsCompanion(
      id: id ?? this.id,
      content: content ?? this.content,
      orderRank: orderRank ?? this.orderRank,
      createdDate: createdDate ?? this.createdDate,
      modifiedDate: modifiedDate ?? this.modifiedDate,
      isNew: isNew ?? this.isNew,
      isChanged: isChanged ?? this.isChanged,
      isDeleted: isDeleted ?? this.isDeleted,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (content.present) {
      map['text'] = Variable<String>(content.value);
    }
    if (orderRank.present) {
      map['order_rank'] = Variable<int>(orderRank.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (modifiedDate.present) {
      map['modified_date'] = Variable<DateTime>(modifiedDate.value);
    }
    if (isNew.present) {
      map['is_new'] = Variable<bool>(isNew.value);
    }
    if (isChanged.present) {
      map['is_changed'] = Variable<bool>(isChanged.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool>(isDeleted.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DmTagsCompanion(')
          ..write('id: $id, ')
          ..write('content: $content, ')
          ..write('orderRank: $orderRank, ')
          ..write('createdDate: $createdDate, ')
          ..write('modifiedDate: $modifiedDate, ')
          ..write('isNew: $isNew, ')
          ..write('isChanged: $isChanged, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $DmNoteTagsTable extends DmNoteTags
    with TableInfo<$DmNoteTagsTable, DmNoteTag> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DmNoteTagsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _noteIdMeta = const VerificationMeta('noteId');
  @override
  late final GeneratedColumn<String> noteId = GeneratedColumn<String>(
      'note_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES dm_notes (id) ON DELETE NO ACTION'));
  static const VerificationMeta _tagIdMeta = const VerificationMeta('tagId');
  @override
  late final GeneratedColumn<String> tagId = GeneratedColumn<String>(
      'tag_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES dm_tags (id) ON DELETE NO ACTION'));
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, noteId, tagId, createdDate];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'dm_note_tags';
  @override
  VerificationContext validateIntegrity(Insertable<DmNoteTag> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('note_id')) {
      context.handle(_noteIdMeta,
          noteId.isAcceptableOrUnknown(data['note_id']!, _noteIdMeta));
    } else if (isInserting) {
      context.missing(_noteIdMeta);
    }
    if (data.containsKey('tag_id')) {
      context.handle(
          _tagIdMeta, tagId.isAcceptableOrUnknown(data['tag_id']!, _tagIdMeta));
    } else if (isInserting) {
      context.missing(_tagIdMeta);
    }
    if (data.containsKey('created_date')) {
      context.handle(
          _createdDateMeta,
          createdDate.isAcceptableOrUnknown(
              data['created_date']!, _createdDateMeta));
    } else if (isInserting) {
      context.missing(_createdDateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DmNoteTag map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DmNoteTag(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      noteId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}note_id'])!,
      tagId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tag_id'])!,
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date'])!,
    );
  }

  @override
  $DmNoteTagsTable createAlias(String alias) {
    return $DmNoteTagsTable(attachedDatabase, alias);
  }
}

class DmNoteTag extends DataClass implements Insertable<DmNoteTag> {
  final String id;
  final String noteId;
  final String tagId;
  final DateTime createdDate;
  const DmNoteTag(
      {required this.id,
      required this.noteId,
      required this.tagId,
      required this.createdDate});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['note_id'] = Variable<String>(noteId);
    map['tag_id'] = Variable<String>(tagId);
    map['created_date'] = Variable<DateTime>(createdDate);
    return map;
  }

  DmNoteTagsCompanion toCompanion(bool nullToAbsent) {
    return DmNoteTagsCompanion(
      id: Value(id),
      noteId: Value(noteId),
      tagId: Value(tagId),
      createdDate: Value(createdDate),
    );
  }

  factory DmNoteTag.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DmNoteTag(
      id: serializer.fromJson<String>(json['id']),
      noteId: serializer.fromJson<String>(json['noteId']),
      tagId: serializer.fromJson<String>(json['tagId']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'noteId': serializer.toJson<String>(noteId),
      'tagId': serializer.toJson<String>(tagId),
      'createdDate': serializer.toJson<DateTime>(createdDate),
    };
  }

  DmNoteTag copyWith(
          {String? id, String? noteId, String? tagId, DateTime? createdDate}) =>
      DmNoteTag(
        id: id ?? this.id,
        noteId: noteId ?? this.noteId,
        tagId: tagId ?? this.tagId,
        createdDate: createdDate ?? this.createdDate,
      );
  DmNoteTag copyWithCompanion(DmNoteTagsCompanion data) {
    return DmNoteTag(
      id: data.id.present ? data.id.value : this.id,
      noteId: data.noteId.present ? data.noteId.value : this.noteId,
      tagId: data.tagId.present ? data.tagId.value : this.tagId,
      createdDate:
          data.createdDate.present ? data.createdDate.value : this.createdDate,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DmNoteTag(')
          ..write('id: $id, ')
          ..write('noteId: $noteId, ')
          ..write('tagId: $tagId, ')
          ..write('createdDate: $createdDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, noteId, tagId, createdDate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DmNoteTag &&
          other.id == this.id &&
          other.noteId == this.noteId &&
          other.tagId == this.tagId &&
          other.createdDate == this.createdDate);
}

class DmNoteTagsCompanion extends UpdateCompanion<DmNoteTag> {
  final Value<String> id;
  final Value<String> noteId;
  final Value<String> tagId;
  final Value<DateTime> createdDate;
  final Value<int> rowid;
  const DmNoteTagsCompanion({
    this.id = const Value.absent(),
    this.noteId = const Value.absent(),
    this.tagId = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DmNoteTagsCompanion.insert({
    required String id,
    required String noteId,
    required String tagId,
    required DateTime createdDate,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        noteId = Value(noteId),
        tagId = Value(tagId),
        createdDate = Value(createdDate);
  static Insertable<DmNoteTag> custom({
    Expression<String>? id,
    Expression<String>? noteId,
    Expression<String>? tagId,
    Expression<DateTime>? createdDate,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (noteId != null) 'note_id': noteId,
      if (tagId != null) 'tag_id': tagId,
      if (createdDate != null) 'created_date': createdDate,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DmNoteTagsCompanion copyWith(
      {Value<String>? id,
      Value<String>? noteId,
      Value<String>? tagId,
      Value<DateTime>? createdDate,
      Value<int>? rowid}) {
    return DmNoteTagsCompanion(
      id: id ?? this.id,
      noteId: noteId ?? this.noteId,
      tagId: tagId ?? this.tagId,
      createdDate: createdDate ?? this.createdDate,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (noteId.present) {
      map['note_id'] = Variable<String>(noteId.value);
    }
    if (tagId.present) {
      map['tag_id'] = Variable<String>(tagId.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DmNoteTagsCompanion(')
          ..write('id: $id, ')
          ..write('noteId: $noteId, ')
          ..write('tagId: $tagId, ')
          ..write('createdDate: $createdDate, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $DmQuestionListsTable extends DmQuestionLists
    with TableInfo<$DmQuestionListsTable, DmQuestionList> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DmQuestionListsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'text', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _orderRankMeta =
      const VerificationMeta('orderRank');
  @override
  late final GeneratedColumn<int> orderRank = GeneratedColumn<int>(
      'order_rank', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _modifiedDateMeta =
      const VerificationMeta('modifiedDate');
  @override
  late final GeneratedColumn<DateTime> modifiedDate = GeneratedColumn<DateTime>(
      'modified_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _isChangedMeta =
      const VerificationMeta('isChanged');
  @override
  late final GeneratedColumn<bool> isChanged = GeneratedColumn<bool>(
      'is_changed', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_changed" IN (0, 1))'));
  static const VerificationMeta _isDeletedMeta =
      const VerificationMeta('isDeleted');
  @override
  late final GeneratedColumn<bool> isDeleted = GeneratedColumn<bool>(
      'is_deleted', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_deleted" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns =>
      [id, content, orderRank, createdDate, modifiedDate, isChanged, isDeleted];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'dm_question_lists';
  @override
  VerificationContext validateIntegrity(Insertable<DmQuestionList> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('text')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['text']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    if (data.containsKey('order_rank')) {
      context.handle(_orderRankMeta,
          orderRank.isAcceptableOrUnknown(data['order_rank']!, _orderRankMeta));
    } else if (isInserting) {
      context.missing(_orderRankMeta);
    }
    if (data.containsKey('created_date')) {
      context.handle(
          _createdDateMeta,
          createdDate.isAcceptableOrUnknown(
              data['created_date']!, _createdDateMeta));
    } else if (isInserting) {
      context.missing(_createdDateMeta);
    }
    if (data.containsKey('modified_date')) {
      context.handle(
          _modifiedDateMeta,
          modifiedDate.isAcceptableOrUnknown(
              data['modified_date']!, _modifiedDateMeta));
    } else if (isInserting) {
      context.missing(_modifiedDateMeta);
    }
    if (data.containsKey('is_changed')) {
      context.handle(_isChangedMeta,
          isChanged.isAcceptableOrUnknown(data['is_changed']!, _isChangedMeta));
    } else if (isInserting) {
      context.missing(_isChangedMeta);
    }
    if (data.containsKey('is_deleted')) {
      context.handle(_isDeletedMeta,
          isDeleted.isAcceptableOrUnknown(data['is_deleted']!, _isDeletedMeta));
    } else if (isInserting) {
      context.missing(_isDeletedMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DmQuestionList map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DmQuestionList(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}text'])!,
      orderRank: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}order_rank'])!,
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date'])!,
      modifiedDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}modified_date'])!,
      isChanged: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_changed'])!,
      isDeleted: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_deleted'])!,
    );
  }

  @override
  $DmQuestionListsTable createAlias(String alias) {
    return $DmQuestionListsTable(attachedDatabase, alias);
  }
}

class DmQuestionList extends DataClass implements Insertable<DmQuestionList> {
  final String id;
  final String content;
  final int orderRank;
  final DateTime createdDate;
  final DateTime modifiedDate;
  final bool isChanged;
  final bool isDeleted;
  const DmQuestionList(
      {required this.id,
      required this.content,
      required this.orderRank,
      required this.createdDate,
      required this.modifiedDate,
      required this.isChanged,
      required this.isDeleted});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['text'] = Variable<String>(content);
    map['order_rank'] = Variable<int>(orderRank);
    map['created_date'] = Variable<DateTime>(createdDate);
    map['modified_date'] = Variable<DateTime>(modifiedDate);
    map['is_changed'] = Variable<bool>(isChanged);
    map['is_deleted'] = Variable<bool>(isDeleted);
    return map;
  }

  DmQuestionListsCompanion toCompanion(bool nullToAbsent) {
    return DmQuestionListsCompanion(
      id: Value(id),
      content: Value(content),
      orderRank: Value(orderRank),
      createdDate: Value(createdDate),
      modifiedDate: Value(modifiedDate),
      isChanged: Value(isChanged),
      isDeleted: Value(isDeleted),
    );
  }

  factory DmQuestionList.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DmQuestionList(
      id: serializer.fromJson<String>(json['id']),
      content: serializer.fromJson<String>(json['content']),
      orderRank: serializer.fromJson<int>(json['orderRank']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
      modifiedDate: serializer.fromJson<DateTime>(json['modifiedDate']),
      isChanged: serializer.fromJson<bool>(json['isChanged']),
      isDeleted: serializer.fromJson<bool>(json['isDeleted']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'content': serializer.toJson<String>(content),
      'orderRank': serializer.toJson<int>(orderRank),
      'createdDate': serializer.toJson<DateTime>(createdDate),
      'modifiedDate': serializer.toJson<DateTime>(modifiedDate),
      'isChanged': serializer.toJson<bool>(isChanged),
      'isDeleted': serializer.toJson<bool>(isDeleted),
    };
  }

  DmQuestionList copyWith(
          {String? id,
          String? content,
          int? orderRank,
          DateTime? createdDate,
          DateTime? modifiedDate,
          bool? isChanged,
          bool? isDeleted}) =>
      DmQuestionList(
        id: id ?? this.id,
        content: content ?? this.content,
        orderRank: orderRank ?? this.orderRank,
        createdDate: createdDate ?? this.createdDate,
        modifiedDate: modifiedDate ?? this.modifiedDate,
        isChanged: isChanged ?? this.isChanged,
        isDeleted: isDeleted ?? this.isDeleted,
      );
  DmQuestionList copyWithCompanion(DmQuestionListsCompanion data) {
    return DmQuestionList(
      id: data.id.present ? data.id.value : this.id,
      content: data.content.present ? data.content.value : this.content,
      orderRank: data.orderRank.present ? data.orderRank.value : this.orderRank,
      createdDate:
          data.createdDate.present ? data.createdDate.value : this.createdDate,
      modifiedDate: data.modifiedDate.present
          ? data.modifiedDate.value
          : this.modifiedDate,
      isChanged: data.isChanged.present ? data.isChanged.value : this.isChanged,
      isDeleted: data.isDeleted.present ? data.isDeleted.value : this.isDeleted,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DmQuestionList(')
          ..write('id: $id, ')
          ..write('content: $content, ')
          ..write('orderRank: $orderRank, ')
          ..write('createdDate: $createdDate, ')
          ..write('modifiedDate: $modifiedDate, ')
          ..write('isChanged: $isChanged, ')
          ..write('isDeleted: $isDeleted')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, content, orderRank, createdDate, modifiedDate, isChanged, isDeleted);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DmQuestionList &&
          other.id == this.id &&
          other.content == this.content &&
          other.orderRank == this.orderRank &&
          other.createdDate == this.createdDate &&
          other.modifiedDate == this.modifiedDate &&
          other.isChanged == this.isChanged &&
          other.isDeleted == this.isDeleted);
}

class DmQuestionListsCompanion extends UpdateCompanion<DmQuestionList> {
  final Value<String> id;
  final Value<String> content;
  final Value<int> orderRank;
  final Value<DateTime> createdDate;
  final Value<DateTime> modifiedDate;
  final Value<bool> isChanged;
  final Value<bool> isDeleted;
  final Value<int> rowid;
  const DmQuestionListsCompanion({
    this.id = const Value.absent(),
    this.content = const Value.absent(),
    this.orderRank = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.modifiedDate = const Value.absent(),
    this.isChanged = const Value.absent(),
    this.isDeleted = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DmQuestionListsCompanion.insert({
    required String id,
    required String content,
    required int orderRank,
    required DateTime createdDate,
    required DateTime modifiedDate,
    required bool isChanged,
    required bool isDeleted,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        content = Value(content),
        orderRank = Value(orderRank),
        createdDate = Value(createdDate),
        modifiedDate = Value(modifiedDate),
        isChanged = Value(isChanged),
        isDeleted = Value(isDeleted);
  static Insertable<DmQuestionList> custom({
    Expression<String>? id,
    Expression<String>? content,
    Expression<int>? orderRank,
    Expression<DateTime>? createdDate,
    Expression<DateTime>? modifiedDate,
    Expression<bool>? isChanged,
    Expression<bool>? isDeleted,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (content != null) 'text': content,
      if (orderRank != null) 'order_rank': orderRank,
      if (createdDate != null) 'created_date': createdDate,
      if (modifiedDate != null) 'modified_date': modifiedDate,
      if (isChanged != null) 'is_changed': isChanged,
      if (isDeleted != null) 'is_deleted': isDeleted,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DmQuestionListsCompanion copyWith(
      {Value<String>? id,
      Value<String>? content,
      Value<int>? orderRank,
      Value<DateTime>? createdDate,
      Value<DateTime>? modifiedDate,
      Value<bool>? isChanged,
      Value<bool>? isDeleted,
      Value<int>? rowid}) {
    return DmQuestionListsCompanion(
      id: id ?? this.id,
      content: content ?? this.content,
      orderRank: orderRank ?? this.orderRank,
      createdDate: createdDate ?? this.createdDate,
      modifiedDate: modifiedDate ?? this.modifiedDate,
      isChanged: isChanged ?? this.isChanged,
      isDeleted: isDeleted ?? this.isDeleted,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (content.present) {
      map['text'] = Variable<String>(content.value);
    }
    if (orderRank.present) {
      map['order_rank'] = Variable<int>(orderRank.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (modifiedDate.present) {
      map['modified_date'] = Variable<DateTime>(modifiedDate.value);
    }
    if (isChanged.present) {
      map['is_changed'] = Variable<bool>(isChanged.value);
    }
    if (isDeleted.present) {
      map['is_deleted'] = Variable<bool>(isDeleted.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DmQuestionListsCompanion(')
          ..write('id: $id, ')
          ..write('content: $content, ')
          ..write('orderRank: $orderRank, ')
          ..write('createdDate: $createdDate, ')
          ..write('modifiedDate: $modifiedDate, ')
          ..write('isChanged: $isChanged, ')
          ..write('isDeleted: $isDeleted, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $DmQuestionsTable extends DmQuestions
    with TableInfo<$DmQuestionsTable, DmQuestion> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DmQuestionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'text', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _orderRankMeta =
      const VerificationMeta('orderRank');
  @override
  late final GeneratedColumn<int> orderRank = GeneratedColumn<int>(
      'order_rank', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _questionListMeta =
      const VerificationMeta('questionList');
  @override
  late final GeneratedColumn<String> questionList = GeneratedColumn<String>(
      'question_list', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES dm_question_lists (id) ON DELETE NO ACTION'));
  @override
  List<GeneratedColumn> get $columns =>
      [id, content, orderRank, createdDate, questionList];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'dm_questions';
  @override
  VerificationContext validateIntegrity(Insertable<DmQuestion> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('text')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['text']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    if (data.containsKey('order_rank')) {
      context.handle(_orderRankMeta,
          orderRank.isAcceptableOrUnknown(data['order_rank']!, _orderRankMeta));
    } else if (isInserting) {
      context.missing(_orderRankMeta);
    }
    if (data.containsKey('created_date')) {
      context.handle(
          _createdDateMeta,
          createdDate.isAcceptableOrUnknown(
              data['created_date']!, _createdDateMeta));
    } else if (isInserting) {
      context.missing(_createdDateMeta);
    }
    if (data.containsKey('question_list')) {
      context.handle(
          _questionListMeta,
          questionList.isAcceptableOrUnknown(
              data['question_list']!, _questionListMeta));
    } else if (isInserting) {
      context.missing(_questionListMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DmQuestion map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DmQuestion(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}text'])!,
      orderRank: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}order_rank'])!,
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date'])!,
      questionList: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}question_list'])!,
    );
  }

  @override
  $DmQuestionsTable createAlias(String alias) {
    return $DmQuestionsTable(attachedDatabase, alias);
  }
}

class DmQuestion extends DataClass implements Insertable<DmQuestion> {
  final String id;
  final String content;
  final int orderRank;
  final DateTime createdDate;
  final String questionList;
  const DmQuestion(
      {required this.id,
      required this.content,
      required this.orderRank,
      required this.createdDate,
      required this.questionList});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['text'] = Variable<String>(content);
    map['order_rank'] = Variable<int>(orderRank);
    map['created_date'] = Variable<DateTime>(createdDate);
    map['question_list'] = Variable<String>(questionList);
    return map;
  }

  DmQuestionsCompanion toCompanion(bool nullToAbsent) {
    return DmQuestionsCompanion(
      id: Value(id),
      content: Value(content),
      orderRank: Value(orderRank),
      createdDate: Value(createdDate),
      questionList: Value(questionList),
    );
  }

  factory DmQuestion.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DmQuestion(
      id: serializer.fromJson<String>(json['id']),
      content: serializer.fromJson<String>(json['content']),
      orderRank: serializer.fromJson<int>(json['orderRank']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
      questionList: serializer.fromJson<String>(json['questionList']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'content': serializer.toJson<String>(content),
      'orderRank': serializer.toJson<int>(orderRank),
      'createdDate': serializer.toJson<DateTime>(createdDate),
      'questionList': serializer.toJson<String>(questionList),
    };
  }

  DmQuestion copyWith(
          {String? id,
          String? content,
          int? orderRank,
          DateTime? createdDate,
          String? questionList}) =>
      DmQuestion(
        id: id ?? this.id,
        content: content ?? this.content,
        orderRank: orderRank ?? this.orderRank,
        createdDate: createdDate ?? this.createdDate,
        questionList: questionList ?? this.questionList,
      );
  DmQuestion copyWithCompanion(DmQuestionsCompanion data) {
    return DmQuestion(
      id: data.id.present ? data.id.value : this.id,
      content: data.content.present ? data.content.value : this.content,
      orderRank: data.orderRank.present ? data.orderRank.value : this.orderRank,
      createdDate:
          data.createdDate.present ? data.createdDate.value : this.createdDate,
      questionList: data.questionList.present
          ? data.questionList.value
          : this.questionList,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DmQuestion(')
          ..write('id: $id, ')
          ..write('content: $content, ')
          ..write('orderRank: $orderRank, ')
          ..write('createdDate: $createdDate, ')
          ..write('questionList: $questionList')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, content, orderRank, createdDate, questionList);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DmQuestion &&
          other.id == this.id &&
          other.content == this.content &&
          other.orderRank == this.orderRank &&
          other.createdDate == this.createdDate &&
          other.questionList == this.questionList);
}

class DmQuestionsCompanion extends UpdateCompanion<DmQuestion> {
  final Value<String> id;
  final Value<String> content;
  final Value<int> orderRank;
  final Value<DateTime> createdDate;
  final Value<String> questionList;
  final Value<int> rowid;
  const DmQuestionsCompanion({
    this.id = const Value.absent(),
    this.content = const Value.absent(),
    this.orderRank = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.questionList = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DmQuestionsCompanion.insert({
    required String id,
    required String content,
    required int orderRank,
    required DateTime createdDate,
    required String questionList,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        content = Value(content),
        orderRank = Value(orderRank),
        createdDate = Value(createdDate),
        questionList = Value(questionList);
  static Insertable<DmQuestion> custom({
    Expression<String>? id,
    Expression<String>? content,
    Expression<int>? orderRank,
    Expression<DateTime>? createdDate,
    Expression<String>? questionList,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (content != null) 'text': content,
      if (orderRank != null) 'order_rank': orderRank,
      if (createdDate != null) 'created_date': createdDate,
      if (questionList != null) 'question_list': questionList,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DmQuestionsCompanion copyWith(
      {Value<String>? id,
      Value<String>? content,
      Value<int>? orderRank,
      Value<DateTime>? createdDate,
      Value<String>? questionList,
      Value<int>? rowid}) {
    return DmQuestionsCompanion(
      id: id ?? this.id,
      content: content ?? this.content,
      orderRank: orderRank ?? this.orderRank,
      createdDate: createdDate ?? this.createdDate,
      questionList: questionList ?? this.questionList,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (content.present) {
      map['text'] = Variable<String>(content.value);
    }
    if (orderRank.present) {
      map['order_rank'] = Variable<int>(orderRank.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (questionList.present) {
      map['question_list'] = Variable<String>(questionList.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DmQuestionsCompanion(')
          ..write('id: $id, ')
          ..write('content: $content, ')
          ..write('orderRank: $orderRank, ')
          ..write('createdDate: $createdDate, ')
          ..write('questionList: $questionList, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $DmFilesTable extends DmFiles with TableInfo<$DmFilesTable, DmFile> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DmFilesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _fileNameMeta =
      const VerificationMeta('fileName');
  @override
  late final GeneratedColumn<String> fileName = GeneratedColumn<String>(
      'file_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _fileSizeMeta =
      const VerificationMeta('fileSize');
  @override
  late final GeneratedColumn<int> fileSize = GeneratedColumn<int>(
      'file_size', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _fileTypeMeta =
      const VerificationMeta('fileType');
  @override
  late final GeneratedColumn<int> fileType = GeneratedColumn<int>(
      'file_type', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _widthMeta = const VerificationMeta('width');
  @override
  late final GeneratedColumn<int> width = GeneratedColumn<int>(
      'width', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _heightMeta = const VerificationMeta('height');
  @override
  late final GeneratedColumn<int> height = GeneratedColumn<int>(
      'height', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _noteIdMeta = const VerificationMeta('noteId');
  @override
  late final GeneratedColumn<String> noteId = GeneratedColumn<String>(
      'note_id', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'REFERENCES dm_notes (id) ON DELETE NO ACTION'));
  static const VerificationMeta _orderRankMeta =
      const VerificationMeta('orderRank');
  @override
  late final GeneratedColumn<int> orderRank = GeneratedColumn<int>(
      'order_rank', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _createdDateMeta =
      const VerificationMeta('createdDate');
  @override
  late final GeneratedColumn<DateTime> createdDate = GeneratedColumn<DateTime>(
      'created_date', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        fileName,
        fileSize,
        fileType,
        width,
        height,
        noteId,
        orderRank,
        createdDate
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'dm_files';
  @override
  VerificationContext validateIntegrity(Insertable<DmFile> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('file_name')) {
      context.handle(_fileNameMeta,
          fileName.isAcceptableOrUnknown(data['file_name']!, _fileNameMeta));
    } else if (isInserting) {
      context.missing(_fileNameMeta);
    }
    if (data.containsKey('file_size')) {
      context.handle(_fileSizeMeta,
          fileSize.isAcceptableOrUnknown(data['file_size']!, _fileSizeMeta));
    } else if (isInserting) {
      context.missing(_fileSizeMeta);
    }
    if (data.containsKey('file_type')) {
      context.handle(_fileTypeMeta,
          fileType.isAcceptableOrUnknown(data['file_type']!, _fileTypeMeta));
    } else if (isInserting) {
      context.missing(_fileTypeMeta);
    }
    if (data.containsKey('width')) {
      context.handle(
          _widthMeta, width.isAcceptableOrUnknown(data['width']!, _widthMeta));
    } else if (isInserting) {
      context.missing(_widthMeta);
    }
    if (data.containsKey('height')) {
      context.handle(_heightMeta,
          height.isAcceptableOrUnknown(data['height']!, _heightMeta));
    } else if (isInserting) {
      context.missing(_heightMeta);
    }
    if (data.containsKey('note_id')) {
      context.handle(_noteIdMeta,
          noteId.isAcceptableOrUnknown(data['note_id']!, _noteIdMeta));
    }
    if (data.containsKey('order_rank')) {
      context.handle(_orderRankMeta,
          orderRank.isAcceptableOrUnknown(data['order_rank']!, _orderRankMeta));
    } else if (isInserting) {
      context.missing(_orderRankMeta);
    }
    if (data.containsKey('created_date')) {
      context.handle(
          _createdDateMeta,
          createdDate.isAcceptableOrUnknown(
              data['created_date']!, _createdDateMeta));
    } else if (isInserting) {
      context.missing(_createdDateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DmFile map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DmFile(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      fileName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}file_name'])!,
      fileSize: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}file_size'])!,
      fileType: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}file_type'])!,
      width: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}width'])!,
      height: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}height'])!,
      noteId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}note_id']),
      orderRank: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}order_rank'])!,
      createdDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_date'])!,
    );
  }

  @override
  $DmFilesTable createAlias(String alias) {
    return $DmFilesTable(attachedDatabase, alias);
  }
}

class DmFile extends DataClass implements Insertable<DmFile> {
  final String id;
  final String fileName;
  final int fileSize;
  final int fileType;
  final int width;
  final int height;
  final String? noteId;
  final int orderRank;
  final DateTime createdDate;
  const DmFile(
      {required this.id,
      required this.fileName,
      required this.fileSize,
      required this.fileType,
      required this.width,
      required this.height,
      this.noteId,
      required this.orderRank,
      required this.createdDate});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['file_name'] = Variable<String>(fileName);
    map['file_size'] = Variable<int>(fileSize);
    map['file_type'] = Variable<int>(fileType);
    map['width'] = Variable<int>(width);
    map['height'] = Variable<int>(height);
    if (!nullToAbsent || noteId != null) {
      map['note_id'] = Variable<String>(noteId);
    }
    map['order_rank'] = Variable<int>(orderRank);
    map['created_date'] = Variable<DateTime>(createdDate);
    return map;
  }

  DmFilesCompanion toCompanion(bool nullToAbsent) {
    return DmFilesCompanion(
      id: Value(id),
      fileName: Value(fileName),
      fileSize: Value(fileSize),
      fileType: Value(fileType),
      width: Value(width),
      height: Value(height),
      noteId:
          noteId == null && nullToAbsent ? const Value.absent() : Value(noteId),
      orderRank: Value(orderRank),
      createdDate: Value(createdDate),
    );
  }

  factory DmFile.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DmFile(
      id: serializer.fromJson<String>(json['id']),
      fileName: serializer.fromJson<String>(json['fileName']),
      fileSize: serializer.fromJson<int>(json['fileSize']),
      fileType: serializer.fromJson<int>(json['fileType']),
      width: serializer.fromJson<int>(json['width']),
      height: serializer.fromJson<int>(json['height']),
      noteId: serializer.fromJson<String?>(json['noteId']),
      orderRank: serializer.fromJson<int>(json['orderRank']),
      createdDate: serializer.fromJson<DateTime>(json['createdDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'fileName': serializer.toJson<String>(fileName),
      'fileSize': serializer.toJson<int>(fileSize),
      'fileType': serializer.toJson<int>(fileType),
      'width': serializer.toJson<int>(width),
      'height': serializer.toJson<int>(height),
      'noteId': serializer.toJson<String?>(noteId),
      'orderRank': serializer.toJson<int>(orderRank),
      'createdDate': serializer.toJson<DateTime>(createdDate),
    };
  }

  DmFile copyWith(
          {String? id,
          String? fileName,
          int? fileSize,
          int? fileType,
          int? width,
          int? height,
          Value<String?> noteId = const Value.absent(),
          int? orderRank,
          DateTime? createdDate}) =>
      DmFile(
        id: id ?? this.id,
        fileName: fileName ?? this.fileName,
        fileSize: fileSize ?? this.fileSize,
        fileType: fileType ?? this.fileType,
        width: width ?? this.width,
        height: height ?? this.height,
        noteId: noteId.present ? noteId.value : this.noteId,
        orderRank: orderRank ?? this.orderRank,
        createdDate: createdDate ?? this.createdDate,
      );
  DmFile copyWithCompanion(DmFilesCompanion data) {
    return DmFile(
      id: data.id.present ? data.id.value : this.id,
      fileName: data.fileName.present ? data.fileName.value : this.fileName,
      fileSize: data.fileSize.present ? data.fileSize.value : this.fileSize,
      fileType: data.fileType.present ? data.fileType.value : this.fileType,
      width: data.width.present ? data.width.value : this.width,
      height: data.height.present ? data.height.value : this.height,
      noteId: data.noteId.present ? data.noteId.value : this.noteId,
      orderRank: data.orderRank.present ? data.orderRank.value : this.orderRank,
      createdDate:
          data.createdDate.present ? data.createdDate.value : this.createdDate,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DmFile(')
          ..write('id: $id, ')
          ..write('fileName: $fileName, ')
          ..write('fileSize: $fileSize, ')
          ..write('fileType: $fileType, ')
          ..write('width: $width, ')
          ..write('height: $height, ')
          ..write('noteId: $noteId, ')
          ..write('orderRank: $orderRank, ')
          ..write('createdDate: $createdDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, fileName, fileSize, fileType, width,
      height, noteId, orderRank, createdDate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DmFile &&
          other.id == this.id &&
          other.fileName == this.fileName &&
          other.fileSize == this.fileSize &&
          other.fileType == this.fileType &&
          other.width == this.width &&
          other.height == this.height &&
          other.noteId == this.noteId &&
          other.orderRank == this.orderRank &&
          other.createdDate == this.createdDate);
}

class DmFilesCompanion extends UpdateCompanion<DmFile> {
  final Value<String> id;
  final Value<String> fileName;
  final Value<int> fileSize;
  final Value<int> fileType;
  final Value<int> width;
  final Value<int> height;
  final Value<String?> noteId;
  final Value<int> orderRank;
  final Value<DateTime> createdDate;
  final Value<int> rowid;
  const DmFilesCompanion({
    this.id = const Value.absent(),
    this.fileName = const Value.absent(),
    this.fileSize = const Value.absent(),
    this.fileType = const Value.absent(),
    this.width = const Value.absent(),
    this.height = const Value.absent(),
    this.noteId = const Value.absent(),
    this.orderRank = const Value.absent(),
    this.createdDate = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DmFilesCompanion.insert({
    required String id,
    required String fileName,
    required int fileSize,
    required int fileType,
    required int width,
    required int height,
    this.noteId = const Value.absent(),
    required int orderRank,
    required DateTime createdDate,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        fileName = Value(fileName),
        fileSize = Value(fileSize),
        fileType = Value(fileType),
        width = Value(width),
        height = Value(height),
        orderRank = Value(orderRank),
        createdDate = Value(createdDate);
  static Insertable<DmFile> custom({
    Expression<String>? id,
    Expression<String>? fileName,
    Expression<int>? fileSize,
    Expression<int>? fileType,
    Expression<int>? width,
    Expression<int>? height,
    Expression<String>? noteId,
    Expression<int>? orderRank,
    Expression<DateTime>? createdDate,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (fileName != null) 'file_name': fileName,
      if (fileSize != null) 'file_size': fileSize,
      if (fileType != null) 'file_type': fileType,
      if (width != null) 'width': width,
      if (height != null) 'height': height,
      if (noteId != null) 'note_id': noteId,
      if (orderRank != null) 'order_rank': orderRank,
      if (createdDate != null) 'created_date': createdDate,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DmFilesCompanion copyWith(
      {Value<String>? id,
      Value<String>? fileName,
      Value<int>? fileSize,
      Value<int>? fileType,
      Value<int>? width,
      Value<int>? height,
      Value<String?>? noteId,
      Value<int>? orderRank,
      Value<DateTime>? createdDate,
      Value<int>? rowid}) {
    return DmFilesCompanion(
      id: id ?? this.id,
      fileName: fileName ?? this.fileName,
      fileSize: fileSize ?? this.fileSize,
      fileType: fileType ?? this.fileType,
      width: width ?? this.width,
      height: height ?? this.height,
      noteId: noteId ?? this.noteId,
      orderRank: orderRank ?? this.orderRank,
      createdDate: createdDate ?? this.createdDate,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (fileName.present) {
      map['file_name'] = Variable<String>(fileName.value);
    }
    if (fileSize.present) {
      map['file_size'] = Variable<int>(fileSize.value);
    }
    if (fileType.present) {
      map['file_type'] = Variable<int>(fileType.value);
    }
    if (width.present) {
      map['width'] = Variable<int>(width.value);
    }
    if (height.present) {
      map['height'] = Variable<int>(height.value);
    }
    if (noteId.present) {
      map['note_id'] = Variable<String>(noteId.value);
    }
    if (orderRank.present) {
      map['order_rank'] = Variable<int>(orderRank.value);
    }
    if (createdDate.present) {
      map['created_date'] = Variable<DateTime>(createdDate.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DmFilesCompanion(')
          ..write('id: $id, ')
          ..write('fileName: $fileName, ')
          ..write('fileSize: $fileSize, ')
          ..write('fileType: $fileType, ')
          ..write('width: $width, ')
          ..write('height: $height, ')
          ..write('noteId: $noteId, ')
          ..write('orderRank: $orderRank, ')
          ..write('createdDate: $createdDate, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$DayMemoryDb extends GeneratedDatabase {
  _$DayMemoryDb(QueryExecutor e) : super(e);
  $DayMemoryDbManager get managers => $DayMemoryDbManager(this);
  late final $DmNotebooksTable dmNotebooks = $DmNotebooksTable(this);
  late final $DmLocationsTable dmLocations = $DmLocationsTable(this);
  late final $DmNotesTable dmNotes = $DmNotesTable(this);
  late final $DmTagsTable dmTags = $DmTagsTable(this);
  late final $DmNoteTagsTable dmNoteTags = $DmNoteTagsTable(this);
  late final $DmQuestionListsTable dmQuestionLists =
      $DmQuestionListsTable(this);
  late final $DmQuestionsTable dmQuestions = $DmQuestionsTable(this);
  late final $DmFilesTable dmFiles = $DmFilesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        dmNotebooks,
        dmLocations,
        dmNotes,
        dmTags,
        dmNoteTags,
        dmQuestionLists,
        dmQuestions,
        dmFiles
      ];
}

typedef $$DmNotebooksTableCreateCompanionBuilder = DmNotebooksCompanion
    Function({
  required String id,
  required String title,
  required DateTime createdDate,
  required DateTime modifiedDate,
  required int orderRank,
  required bool showInReview,
  required bool isDeleted,
  required bool isNew,
  required bool isChanged,
  required int sortingType,
  Value<int> rowid,
});
typedef $$DmNotebooksTableUpdateCompanionBuilder = DmNotebooksCompanion
    Function({
  Value<String> id,
  Value<String> title,
  Value<DateTime> createdDate,
  Value<DateTime> modifiedDate,
  Value<int> orderRank,
  Value<bool> showInReview,
  Value<bool> isDeleted,
  Value<bool> isNew,
  Value<bool> isChanged,
  Value<int> sortingType,
  Value<int> rowid,
});

final class $$DmNotebooksTableReferences
    extends BaseReferences<_$DayMemoryDb, $DmNotebooksTable, DmNotebook> {
  $$DmNotebooksTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$DmNotesTable, List<DmNote>> _dmNotesRefsTable(
          _$DayMemoryDb db) =>
      MultiTypedResultKey.fromTable(db.dmNotes,
          aliasName:
              $_aliasNameGenerator(db.dmNotebooks.id, db.dmNotes.notebookId));

  $$DmNotesTableProcessedTableManager get dmNotesRefs {
    final manager = $$DmNotesTableTableManager($_db, $_db.dmNotes)
        .filter((f) => f.notebookId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_dmNotesRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$DmNotebooksTableFilterComposer
    extends Composer<_$DayMemoryDb, $DmNotebooksTable> {
  $$DmNotebooksTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get modifiedDate => $composableBuilder(
      column: $table.modifiedDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get orderRank => $composableBuilder(
      column: $table.orderRank, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get showInReview => $composableBuilder(
      column: $table.showInReview, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isDeleted => $composableBuilder(
      column: $table.isDeleted, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isNew => $composableBuilder(
      column: $table.isNew, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isChanged => $composableBuilder(
      column: $table.isChanged, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get sortingType => $composableBuilder(
      column: $table.sortingType, builder: (column) => ColumnFilters(column));

  Expression<bool> dmNotesRefs(
      Expression<bool> Function($$DmNotesTableFilterComposer f) f) {
    final $$DmNotesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dmNotes,
        getReferencedColumn: (t) => t.notebookId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DmNotesTableFilterComposer(
              $db: $db,
              $table: $db.dmNotes,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$DmNotebooksTableOrderingComposer
    extends Composer<_$DayMemoryDb, $DmNotebooksTable> {
  $$DmNotebooksTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get modifiedDate => $composableBuilder(
      column: $table.modifiedDate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get orderRank => $composableBuilder(
      column: $table.orderRank, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get showInReview => $composableBuilder(
      column: $table.showInReview,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isDeleted => $composableBuilder(
      column: $table.isDeleted, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isNew => $composableBuilder(
      column: $table.isNew, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isChanged => $composableBuilder(
      column: $table.isChanged, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get sortingType => $composableBuilder(
      column: $table.sortingType, builder: (column) => ColumnOrderings(column));
}

class $$DmNotebooksTableAnnotationComposer
    extends Composer<_$DayMemoryDb, $DmNotebooksTable> {
  $$DmNotebooksTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => column);

  GeneratedColumn<DateTime> get modifiedDate => $composableBuilder(
      column: $table.modifiedDate, builder: (column) => column);

  GeneratedColumn<int> get orderRank =>
      $composableBuilder(column: $table.orderRank, builder: (column) => column);

  GeneratedColumn<bool> get showInReview => $composableBuilder(
      column: $table.showInReview, builder: (column) => column);

  GeneratedColumn<bool> get isDeleted =>
      $composableBuilder(column: $table.isDeleted, builder: (column) => column);

  GeneratedColumn<bool> get isNew =>
      $composableBuilder(column: $table.isNew, builder: (column) => column);

  GeneratedColumn<bool> get isChanged =>
      $composableBuilder(column: $table.isChanged, builder: (column) => column);

  GeneratedColumn<int> get sortingType => $composableBuilder(
      column: $table.sortingType, builder: (column) => column);

  Expression<T> dmNotesRefs<T extends Object>(
      Expression<T> Function($$DmNotesTableAnnotationComposer a) f) {
    final $$DmNotesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dmNotes,
        getReferencedColumn: (t) => t.notebookId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DmNotesTableAnnotationComposer(
              $db: $db,
              $table: $db.dmNotes,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$DmNotebooksTableTableManager extends RootTableManager<
    _$DayMemoryDb,
    $DmNotebooksTable,
    DmNotebook,
    $$DmNotebooksTableFilterComposer,
    $$DmNotebooksTableOrderingComposer,
    $$DmNotebooksTableAnnotationComposer,
    $$DmNotebooksTableCreateCompanionBuilder,
    $$DmNotebooksTableUpdateCompanionBuilder,
    (DmNotebook, $$DmNotebooksTableReferences),
    DmNotebook,
    PrefetchHooks Function({bool dmNotesRefs})> {
  $$DmNotebooksTableTableManager(_$DayMemoryDb db, $DmNotebooksTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DmNotebooksTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DmNotebooksTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DmNotebooksTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<DateTime> createdDate = const Value.absent(),
            Value<DateTime> modifiedDate = const Value.absent(),
            Value<int> orderRank = const Value.absent(),
            Value<bool> showInReview = const Value.absent(),
            Value<bool> isDeleted = const Value.absent(),
            Value<bool> isNew = const Value.absent(),
            Value<bool> isChanged = const Value.absent(),
            Value<int> sortingType = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DmNotebooksCompanion(
            id: id,
            title: title,
            createdDate: createdDate,
            modifiedDate: modifiedDate,
            orderRank: orderRank,
            showInReview: showInReview,
            isDeleted: isDeleted,
            isNew: isNew,
            isChanged: isChanged,
            sortingType: sortingType,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String title,
            required DateTime createdDate,
            required DateTime modifiedDate,
            required int orderRank,
            required bool showInReview,
            required bool isDeleted,
            required bool isNew,
            required bool isChanged,
            required int sortingType,
            Value<int> rowid = const Value.absent(),
          }) =>
              DmNotebooksCompanion.insert(
            id: id,
            title: title,
            createdDate: createdDate,
            modifiedDate: modifiedDate,
            orderRank: orderRank,
            showInReview: showInReview,
            isDeleted: isDeleted,
            isNew: isNew,
            isChanged: isChanged,
            sortingType: sortingType,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$DmNotebooksTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({dmNotesRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (dmNotesRefs) db.dmNotes],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (dmNotesRefs)
                    await $_getPrefetchedData<DmNotebook, $DmNotebooksTable,
                            DmNote>(
                        currentTable: table,
                        referencedTable:
                            $$DmNotebooksTableReferences._dmNotesRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$DmNotebooksTableReferences(db, table, p0)
                                .dmNotesRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.notebookId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$DmNotebooksTableProcessedTableManager = ProcessedTableManager<
    _$DayMemoryDb,
    $DmNotebooksTable,
    DmNotebook,
    $$DmNotebooksTableFilterComposer,
    $$DmNotebooksTableOrderingComposer,
    $$DmNotebooksTableAnnotationComposer,
    $$DmNotebooksTableCreateCompanionBuilder,
    $$DmNotebooksTableUpdateCompanionBuilder,
    (DmNotebook, $$DmNotebooksTableReferences),
    DmNotebook,
    PrefetchHooks Function({bool dmNotesRefs})>;
typedef $$DmLocationsTableCreateCompanionBuilder = DmLocationsCompanion
    Function({
  required String id,
  required String address,
  required double latitude,
  required double longitude,
  required DateTime createdDate,
  Value<int> rowid,
});
typedef $$DmLocationsTableUpdateCompanionBuilder = DmLocationsCompanion
    Function({
  Value<String> id,
  Value<String> address,
  Value<double> latitude,
  Value<double> longitude,
  Value<DateTime> createdDate,
  Value<int> rowid,
});

final class $$DmLocationsTableReferences
    extends BaseReferences<_$DayMemoryDb, $DmLocationsTable, DmLocation> {
  $$DmLocationsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$DmNotesTable, List<DmNote>> _dmNotesRefsTable(
          _$DayMemoryDb db) =>
      MultiTypedResultKey.fromTable(db.dmNotes,
          aliasName:
              $_aliasNameGenerator(db.dmLocations.id, db.dmNotes.locationId));

  $$DmNotesTableProcessedTableManager get dmNotesRefs {
    final manager = $$DmNotesTableTableManager($_db, $_db.dmNotes)
        .filter((f) => f.locationId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_dmNotesRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$DmLocationsTableFilterComposer
    extends Composer<_$DayMemoryDb, $DmLocationsTable> {
  $$DmLocationsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get address => $composableBuilder(
      column: $table.address, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get latitude => $composableBuilder(
      column: $table.latitude, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get longitude => $composableBuilder(
      column: $table.longitude, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnFilters(column));

  Expression<bool> dmNotesRefs(
      Expression<bool> Function($$DmNotesTableFilterComposer f) f) {
    final $$DmNotesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dmNotes,
        getReferencedColumn: (t) => t.locationId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DmNotesTableFilterComposer(
              $db: $db,
              $table: $db.dmNotes,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$DmLocationsTableOrderingComposer
    extends Composer<_$DayMemoryDb, $DmLocationsTable> {
  $$DmLocationsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get address => $composableBuilder(
      column: $table.address, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get latitude => $composableBuilder(
      column: $table.latitude, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get longitude => $composableBuilder(
      column: $table.longitude, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnOrderings(column));
}

class $$DmLocationsTableAnnotationComposer
    extends Composer<_$DayMemoryDb, $DmLocationsTable> {
  $$DmLocationsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get address =>
      $composableBuilder(column: $table.address, builder: (column) => column);

  GeneratedColumn<double> get latitude =>
      $composableBuilder(column: $table.latitude, builder: (column) => column);

  GeneratedColumn<double> get longitude =>
      $composableBuilder(column: $table.longitude, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => column);

  Expression<T> dmNotesRefs<T extends Object>(
      Expression<T> Function($$DmNotesTableAnnotationComposer a) f) {
    final $$DmNotesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dmNotes,
        getReferencedColumn: (t) => t.locationId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DmNotesTableAnnotationComposer(
              $db: $db,
              $table: $db.dmNotes,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$DmLocationsTableTableManager extends RootTableManager<
    _$DayMemoryDb,
    $DmLocationsTable,
    DmLocation,
    $$DmLocationsTableFilterComposer,
    $$DmLocationsTableOrderingComposer,
    $$DmLocationsTableAnnotationComposer,
    $$DmLocationsTableCreateCompanionBuilder,
    $$DmLocationsTableUpdateCompanionBuilder,
    (DmLocation, $$DmLocationsTableReferences),
    DmLocation,
    PrefetchHooks Function({bool dmNotesRefs})> {
  $$DmLocationsTableTableManager(_$DayMemoryDb db, $DmLocationsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DmLocationsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DmLocationsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DmLocationsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> address = const Value.absent(),
            Value<double> latitude = const Value.absent(),
            Value<double> longitude = const Value.absent(),
            Value<DateTime> createdDate = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DmLocationsCompanion(
            id: id,
            address: address,
            latitude: latitude,
            longitude: longitude,
            createdDate: createdDate,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String address,
            required double latitude,
            required double longitude,
            required DateTime createdDate,
            Value<int> rowid = const Value.absent(),
          }) =>
              DmLocationsCompanion.insert(
            id: id,
            address: address,
            latitude: latitude,
            longitude: longitude,
            createdDate: createdDate,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$DmLocationsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({dmNotesRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (dmNotesRefs) db.dmNotes],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (dmNotesRefs)
                    await $_getPrefetchedData<DmLocation, $DmLocationsTable,
                            DmNote>(
                        currentTable: table,
                        referencedTable:
                            $$DmLocationsTableReferences._dmNotesRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$DmLocationsTableReferences(db, table, p0)
                                .dmNotesRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.locationId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$DmLocationsTableProcessedTableManager = ProcessedTableManager<
    _$DayMemoryDb,
    $DmLocationsTable,
    DmLocation,
    $$DmLocationsTableFilterComposer,
    $$DmLocationsTableOrderingComposer,
    $$DmLocationsTableAnnotationComposer,
    $$DmLocationsTableCreateCompanionBuilder,
    $$DmLocationsTableUpdateCompanionBuilder,
    (DmLocation, $$DmLocationsTableReferences),
    DmLocation,
    PrefetchHooks Function({bool dmNotesRefs})>;
typedef $$DmNotesTableCreateCompanionBuilder = DmNotesCompanion Function({
  required String id,
  required String notebookId,
  required String content,
  required DateTime date,
  Value<String?> locationId,
  required DateTime createdDate,
  required DateTime modifiedDate,
  required bool isNew,
  required bool isChanged,
  required bool isDeleted,
  Value<int> rowid,
});
typedef $$DmNotesTableUpdateCompanionBuilder = DmNotesCompanion Function({
  Value<String> id,
  Value<String> notebookId,
  Value<String> content,
  Value<DateTime> date,
  Value<String?> locationId,
  Value<DateTime> createdDate,
  Value<DateTime> modifiedDate,
  Value<bool> isNew,
  Value<bool> isChanged,
  Value<bool> isDeleted,
  Value<int> rowid,
});

final class $$DmNotesTableReferences
    extends BaseReferences<_$DayMemoryDb, $DmNotesTable, DmNote> {
  $$DmNotesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $DmNotebooksTable _notebookIdTable(_$DayMemoryDb db) =>
      db.dmNotebooks.createAlias(
          $_aliasNameGenerator(db.dmNotes.notebookId, db.dmNotebooks.id));

  $$DmNotebooksTableProcessedTableManager get notebookId {
    final $_column = $_itemColumn<String>('notebook_id')!;

    final manager = $$DmNotebooksTableTableManager($_db, $_db.dmNotebooks)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_notebookIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $DmLocationsTable _locationIdTable(_$DayMemoryDb db) =>
      db.dmLocations.createAlias(
          $_aliasNameGenerator(db.dmNotes.locationId, db.dmLocations.id));

  $$DmLocationsTableProcessedTableManager? get locationId {
    final $_column = $_itemColumn<String>('location_id');
    if ($_column == null) return null;
    final manager = $$DmLocationsTableTableManager($_db, $_db.dmLocations)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_locationIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static MultiTypedResultKey<$DmNoteTagsTable, List<DmNoteTag>>
      _dmNoteTagsRefsTable(_$DayMemoryDb db) => MultiTypedResultKey.fromTable(
          db.dmNoteTags,
          aliasName: $_aliasNameGenerator(db.dmNotes.id, db.dmNoteTags.noteId));

  $$DmNoteTagsTableProcessedTableManager get dmNoteTagsRefs {
    final manager = $$DmNoteTagsTableTableManager($_db, $_db.dmNoteTags)
        .filter((f) => f.noteId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_dmNoteTagsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$DmFilesTable, List<DmFile>> _dmFilesRefsTable(
          _$DayMemoryDb db) =>
      MultiTypedResultKey.fromTable(db.dmFiles,
          aliasName: $_aliasNameGenerator(db.dmNotes.id, db.dmFiles.noteId));

  $$DmFilesTableProcessedTableManager get dmFilesRefs {
    final manager = $$DmFilesTableTableManager($_db, $_db.dmFiles)
        .filter((f) => f.noteId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_dmFilesRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$DmNotesTableFilterComposer
    extends Composer<_$DayMemoryDb, $DmNotesTable> {
  $$DmNotesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get content => $composableBuilder(
      column: $table.content, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get modifiedDate => $composableBuilder(
      column: $table.modifiedDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isNew => $composableBuilder(
      column: $table.isNew, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isChanged => $composableBuilder(
      column: $table.isChanged, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isDeleted => $composableBuilder(
      column: $table.isDeleted, builder: (column) => ColumnFilters(column));

  $$DmNotebooksTableFilterComposer get notebookId {
    final $$DmNotebooksTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.notebookId,
        referencedTable: $db.dmNotebooks,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DmNotebooksTableFilterComposer(
              $db: $db,
              $table: $db.dmNotebooks,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$DmLocationsTableFilterComposer get locationId {
    final $$DmLocationsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.locationId,
        referencedTable: $db.dmLocations,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DmLocationsTableFilterComposer(
              $db: $db,
              $table: $db.dmLocations,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<bool> dmNoteTagsRefs(
      Expression<bool> Function($$DmNoteTagsTableFilterComposer f) f) {
    final $$DmNoteTagsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dmNoteTags,
        getReferencedColumn: (t) => t.noteId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DmNoteTagsTableFilterComposer(
              $db: $db,
              $table: $db.dmNoteTags,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> dmFilesRefs(
      Expression<bool> Function($$DmFilesTableFilterComposer f) f) {
    final $$DmFilesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dmFiles,
        getReferencedColumn: (t) => t.noteId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DmFilesTableFilterComposer(
              $db: $db,
              $table: $db.dmFiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$DmNotesTableOrderingComposer
    extends Composer<_$DayMemoryDb, $DmNotesTable> {
  $$DmNotesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get content => $composableBuilder(
      column: $table.content, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get date => $composableBuilder(
      column: $table.date, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get modifiedDate => $composableBuilder(
      column: $table.modifiedDate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isNew => $composableBuilder(
      column: $table.isNew, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isChanged => $composableBuilder(
      column: $table.isChanged, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isDeleted => $composableBuilder(
      column: $table.isDeleted, builder: (column) => ColumnOrderings(column));

  $$DmNotebooksTableOrderingComposer get notebookId {
    final $$DmNotebooksTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.notebookId,
        referencedTable: $db.dmNotebooks,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DmNotebooksTableOrderingComposer(
              $db: $db,
              $table: $db.dmNotebooks,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$DmLocationsTableOrderingComposer get locationId {
    final $$DmLocationsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.locationId,
        referencedTable: $db.dmLocations,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DmLocationsTableOrderingComposer(
              $db: $db,
              $table: $db.dmLocations,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$DmNotesTableAnnotationComposer
    extends Composer<_$DayMemoryDb, $DmNotesTable> {
  $$DmNotesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get content =>
      $composableBuilder(column: $table.content, builder: (column) => column);

  GeneratedColumn<DateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => column);

  GeneratedColumn<DateTime> get modifiedDate => $composableBuilder(
      column: $table.modifiedDate, builder: (column) => column);

  GeneratedColumn<bool> get isNew =>
      $composableBuilder(column: $table.isNew, builder: (column) => column);

  GeneratedColumn<bool> get isChanged =>
      $composableBuilder(column: $table.isChanged, builder: (column) => column);

  GeneratedColumn<bool> get isDeleted =>
      $composableBuilder(column: $table.isDeleted, builder: (column) => column);

  $$DmNotebooksTableAnnotationComposer get notebookId {
    final $$DmNotebooksTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.notebookId,
        referencedTable: $db.dmNotebooks,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DmNotebooksTableAnnotationComposer(
              $db: $db,
              $table: $db.dmNotebooks,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$DmLocationsTableAnnotationComposer get locationId {
    final $$DmLocationsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.locationId,
        referencedTable: $db.dmLocations,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DmLocationsTableAnnotationComposer(
              $db: $db,
              $table: $db.dmLocations,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  Expression<T> dmNoteTagsRefs<T extends Object>(
      Expression<T> Function($$DmNoteTagsTableAnnotationComposer a) f) {
    final $$DmNoteTagsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dmNoteTags,
        getReferencedColumn: (t) => t.noteId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DmNoteTagsTableAnnotationComposer(
              $db: $db,
              $table: $db.dmNoteTags,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> dmFilesRefs<T extends Object>(
      Expression<T> Function($$DmFilesTableAnnotationComposer a) f) {
    final $$DmFilesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dmFiles,
        getReferencedColumn: (t) => t.noteId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DmFilesTableAnnotationComposer(
              $db: $db,
              $table: $db.dmFiles,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$DmNotesTableTableManager extends RootTableManager<
    _$DayMemoryDb,
    $DmNotesTable,
    DmNote,
    $$DmNotesTableFilterComposer,
    $$DmNotesTableOrderingComposer,
    $$DmNotesTableAnnotationComposer,
    $$DmNotesTableCreateCompanionBuilder,
    $$DmNotesTableUpdateCompanionBuilder,
    (DmNote, $$DmNotesTableReferences),
    DmNote,
    PrefetchHooks Function(
        {bool notebookId,
        bool locationId,
        bool dmNoteTagsRefs,
        bool dmFilesRefs})> {
  $$DmNotesTableTableManager(_$DayMemoryDb db, $DmNotesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DmNotesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DmNotesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DmNotesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> notebookId = const Value.absent(),
            Value<String> content = const Value.absent(),
            Value<DateTime> date = const Value.absent(),
            Value<String?> locationId = const Value.absent(),
            Value<DateTime> createdDate = const Value.absent(),
            Value<DateTime> modifiedDate = const Value.absent(),
            Value<bool> isNew = const Value.absent(),
            Value<bool> isChanged = const Value.absent(),
            Value<bool> isDeleted = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DmNotesCompanion(
            id: id,
            notebookId: notebookId,
            content: content,
            date: date,
            locationId: locationId,
            createdDate: createdDate,
            modifiedDate: modifiedDate,
            isNew: isNew,
            isChanged: isChanged,
            isDeleted: isDeleted,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String notebookId,
            required String content,
            required DateTime date,
            Value<String?> locationId = const Value.absent(),
            required DateTime createdDate,
            required DateTime modifiedDate,
            required bool isNew,
            required bool isChanged,
            required bool isDeleted,
            Value<int> rowid = const Value.absent(),
          }) =>
              DmNotesCompanion.insert(
            id: id,
            notebookId: notebookId,
            content: content,
            date: date,
            locationId: locationId,
            createdDate: createdDate,
            modifiedDate: modifiedDate,
            isNew: isNew,
            isChanged: isChanged,
            isDeleted: isDeleted,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$DmNotesTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: (
              {notebookId = false,
              locationId = false,
              dmNoteTagsRefs = false,
              dmFilesRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (dmNoteTagsRefs) db.dmNoteTags,
                if (dmFilesRefs) db.dmFiles
              ],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (notebookId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.notebookId,
                    referencedTable:
                        $$DmNotesTableReferences._notebookIdTable(db),
                    referencedColumn:
                        $$DmNotesTableReferences._notebookIdTable(db).id,
                  ) as T;
                }
                if (locationId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.locationId,
                    referencedTable:
                        $$DmNotesTableReferences._locationIdTable(db),
                    referencedColumn:
                        $$DmNotesTableReferences._locationIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (dmNoteTagsRefs)
                    await $_getPrefetchedData<DmNote, $DmNotesTable, DmNoteTag>(
                        currentTable: table,
                        referencedTable:
                            $$DmNotesTableReferences._dmNoteTagsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$DmNotesTableReferences(db, table, p0)
                                .dmNoteTagsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.noteId == item.id),
                        typedResults: items),
                  if (dmFilesRefs)
                    await $_getPrefetchedData<DmNote, $DmNotesTable, DmFile>(
                        currentTable: table,
                        referencedTable:
                            $$DmNotesTableReferences._dmFilesRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$DmNotesTableReferences(db, table, p0).dmFilesRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.noteId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$DmNotesTableProcessedTableManager = ProcessedTableManager<
    _$DayMemoryDb,
    $DmNotesTable,
    DmNote,
    $$DmNotesTableFilterComposer,
    $$DmNotesTableOrderingComposer,
    $$DmNotesTableAnnotationComposer,
    $$DmNotesTableCreateCompanionBuilder,
    $$DmNotesTableUpdateCompanionBuilder,
    (DmNote, $$DmNotesTableReferences),
    DmNote,
    PrefetchHooks Function(
        {bool notebookId,
        bool locationId,
        bool dmNoteTagsRefs,
        bool dmFilesRefs})>;
typedef $$DmTagsTableCreateCompanionBuilder = DmTagsCompanion Function({
  required String id,
  required String content,
  required int orderRank,
  required DateTime createdDate,
  required DateTime modifiedDate,
  required bool isNew,
  required bool isChanged,
  required bool isDeleted,
  Value<int> rowid,
});
typedef $$DmTagsTableUpdateCompanionBuilder = DmTagsCompanion Function({
  Value<String> id,
  Value<String> content,
  Value<int> orderRank,
  Value<DateTime> createdDate,
  Value<DateTime> modifiedDate,
  Value<bool> isNew,
  Value<bool> isChanged,
  Value<bool> isDeleted,
  Value<int> rowid,
});

final class $$DmTagsTableReferences
    extends BaseReferences<_$DayMemoryDb, $DmTagsTable, DmTag> {
  $$DmTagsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$DmNoteTagsTable, List<DmNoteTag>>
      _dmNoteTagsRefsTable(_$DayMemoryDb db) => MultiTypedResultKey.fromTable(
          db.dmNoteTags,
          aliasName: $_aliasNameGenerator(db.dmTags.id, db.dmNoteTags.tagId));

  $$DmNoteTagsTableProcessedTableManager get dmNoteTagsRefs {
    final manager = $$DmNoteTagsTableTableManager($_db, $_db.dmNoteTags)
        .filter((f) => f.tagId.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_dmNoteTagsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$DmTagsTableFilterComposer
    extends Composer<_$DayMemoryDb, $DmTagsTable> {
  $$DmTagsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get content => $composableBuilder(
      column: $table.content, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get orderRank => $composableBuilder(
      column: $table.orderRank, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get modifiedDate => $composableBuilder(
      column: $table.modifiedDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isNew => $composableBuilder(
      column: $table.isNew, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isChanged => $composableBuilder(
      column: $table.isChanged, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isDeleted => $composableBuilder(
      column: $table.isDeleted, builder: (column) => ColumnFilters(column));

  Expression<bool> dmNoteTagsRefs(
      Expression<bool> Function($$DmNoteTagsTableFilterComposer f) f) {
    final $$DmNoteTagsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dmNoteTags,
        getReferencedColumn: (t) => t.tagId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DmNoteTagsTableFilterComposer(
              $db: $db,
              $table: $db.dmNoteTags,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$DmTagsTableOrderingComposer
    extends Composer<_$DayMemoryDb, $DmTagsTable> {
  $$DmTagsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get content => $composableBuilder(
      column: $table.content, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get orderRank => $composableBuilder(
      column: $table.orderRank, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get modifiedDate => $composableBuilder(
      column: $table.modifiedDate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isNew => $composableBuilder(
      column: $table.isNew, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isChanged => $composableBuilder(
      column: $table.isChanged, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isDeleted => $composableBuilder(
      column: $table.isDeleted, builder: (column) => ColumnOrderings(column));
}

class $$DmTagsTableAnnotationComposer
    extends Composer<_$DayMemoryDb, $DmTagsTable> {
  $$DmTagsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get content =>
      $composableBuilder(column: $table.content, builder: (column) => column);

  GeneratedColumn<int> get orderRank =>
      $composableBuilder(column: $table.orderRank, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => column);

  GeneratedColumn<DateTime> get modifiedDate => $composableBuilder(
      column: $table.modifiedDate, builder: (column) => column);

  GeneratedColumn<bool> get isNew =>
      $composableBuilder(column: $table.isNew, builder: (column) => column);

  GeneratedColumn<bool> get isChanged =>
      $composableBuilder(column: $table.isChanged, builder: (column) => column);

  GeneratedColumn<bool> get isDeleted =>
      $composableBuilder(column: $table.isDeleted, builder: (column) => column);

  Expression<T> dmNoteTagsRefs<T extends Object>(
      Expression<T> Function($$DmNoteTagsTableAnnotationComposer a) f) {
    final $$DmNoteTagsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dmNoteTags,
        getReferencedColumn: (t) => t.tagId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DmNoteTagsTableAnnotationComposer(
              $db: $db,
              $table: $db.dmNoteTags,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$DmTagsTableTableManager extends RootTableManager<
    _$DayMemoryDb,
    $DmTagsTable,
    DmTag,
    $$DmTagsTableFilterComposer,
    $$DmTagsTableOrderingComposer,
    $$DmTagsTableAnnotationComposer,
    $$DmTagsTableCreateCompanionBuilder,
    $$DmTagsTableUpdateCompanionBuilder,
    (DmTag, $$DmTagsTableReferences),
    DmTag,
    PrefetchHooks Function({bool dmNoteTagsRefs})> {
  $$DmTagsTableTableManager(_$DayMemoryDb db, $DmTagsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DmTagsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DmTagsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DmTagsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> content = const Value.absent(),
            Value<int> orderRank = const Value.absent(),
            Value<DateTime> createdDate = const Value.absent(),
            Value<DateTime> modifiedDate = const Value.absent(),
            Value<bool> isNew = const Value.absent(),
            Value<bool> isChanged = const Value.absent(),
            Value<bool> isDeleted = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DmTagsCompanion(
            id: id,
            content: content,
            orderRank: orderRank,
            createdDate: createdDate,
            modifiedDate: modifiedDate,
            isNew: isNew,
            isChanged: isChanged,
            isDeleted: isDeleted,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String content,
            required int orderRank,
            required DateTime createdDate,
            required DateTime modifiedDate,
            required bool isNew,
            required bool isChanged,
            required bool isDeleted,
            Value<int> rowid = const Value.absent(),
          }) =>
              DmTagsCompanion.insert(
            id: id,
            content: content,
            orderRank: orderRank,
            createdDate: createdDate,
            modifiedDate: modifiedDate,
            isNew: isNew,
            isChanged: isChanged,
            isDeleted: isDeleted,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$DmTagsTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({dmNoteTagsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (dmNoteTagsRefs) db.dmNoteTags],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (dmNoteTagsRefs)
                    await $_getPrefetchedData<DmTag, $DmTagsTable, DmNoteTag>(
                        currentTable: table,
                        referencedTable:
                            $$DmTagsTableReferences._dmNoteTagsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$DmTagsTableReferences(db, table, p0)
                                .dmNoteTagsRefs,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.tagId == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$DmTagsTableProcessedTableManager = ProcessedTableManager<
    _$DayMemoryDb,
    $DmTagsTable,
    DmTag,
    $$DmTagsTableFilterComposer,
    $$DmTagsTableOrderingComposer,
    $$DmTagsTableAnnotationComposer,
    $$DmTagsTableCreateCompanionBuilder,
    $$DmTagsTableUpdateCompanionBuilder,
    (DmTag, $$DmTagsTableReferences),
    DmTag,
    PrefetchHooks Function({bool dmNoteTagsRefs})>;
typedef $$DmNoteTagsTableCreateCompanionBuilder = DmNoteTagsCompanion Function({
  required String id,
  required String noteId,
  required String tagId,
  required DateTime createdDate,
  Value<int> rowid,
});
typedef $$DmNoteTagsTableUpdateCompanionBuilder = DmNoteTagsCompanion Function({
  Value<String> id,
  Value<String> noteId,
  Value<String> tagId,
  Value<DateTime> createdDate,
  Value<int> rowid,
});

final class $$DmNoteTagsTableReferences
    extends BaseReferences<_$DayMemoryDb, $DmNoteTagsTable, DmNoteTag> {
  $$DmNoteTagsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $DmNotesTable _noteIdTable(_$DayMemoryDb db) => db.dmNotes
      .createAlias($_aliasNameGenerator(db.dmNoteTags.noteId, db.dmNotes.id));

  $$DmNotesTableProcessedTableManager get noteId {
    final $_column = $_itemColumn<String>('note_id')!;

    final manager = $$DmNotesTableTableManager($_db, $_db.dmNotes)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_noteIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $DmTagsTable _tagIdTable(_$DayMemoryDb db) => db.dmTags
      .createAlias($_aliasNameGenerator(db.dmNoteTags.tagId, db.dmTags.id));

  $$DmTagsTableProcessedTableManager get tagId {
    final $_column = $_itemColumn<String>('tag_id')!;

    final manager = $$DmTagsTableTableManager($_db, $_db.dmTags)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_tagIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$DmNoteTagsTableFilterComposer
    extends Composer<_$DayMemoryDb, $DmNoteTagsTable> {
  $$DmNoteTagsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnFilters(column));

  $$DmNotesTableFilterComposer get noteId {
    final $$DmNotesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.noteId,
        referencedTable: $db.dmNotes,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DmNotesTableFilterComposer(
              $db: $db,
              $table: $db.dmNotes,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$DmTagsTableFilterComposer get tagId {
    final $$DmTagsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.tagId,
        referencedTable: $db.dmTags,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DmTagsTableFilterComposer(
              $db: $db,
              $table: $db.dmTags,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$DmNoteTagsTableOrderingComposer
    extends Composer<_$DayMemoryDb, $DmNoteTagsTable> {
  $$DmNoteTagsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnOrderings(column));

  $$DmNotesTableOrderingComposer get noteId {
    final $$DmNotesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.noteId,
        referencedTable: $db.dmNotes,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DmNotesTableOrderingComposer(
              $db: $db,
              $table: $db.dmNotes,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$DmTagsTableOrderingComposer get tagId {
    final $$DmTagsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.tagId,
        referencedTable: $db.dmTags,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DmTagsTableOrderingComposer(
              $db: $db,
              $table: $db.dmTags,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$DmNoteTagsTableAnnotationComposer
    extends Composer<_$DayMemoryDb, $DmNoteTagsTable> {
  $$DmNoteTagsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => column);

  $$DmNotesTableAnnotationComposer get noteId {
    final $$DmNotesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.noteId,
        referencedTable: $db.dmNotes,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DmNotesTableAnnotationComposer(
              $db: $db,
              $table: $db.dmNotes,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$DmTagsTableAnnotationComposer get tagId {
    final $$DmTagsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.tagId,
        referencedTable: $db.dmTags,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DmTagsTableAnnotationComposer(
              $db: $db,
              $table: $db.dmTags,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$DmNoteTagsTableTableManager extends RootTableManager<
    _$DayMemoryDb,
    $DmNoteTagsTable,
    DmNoteTag,
    $$DmNoteTagsTableFilterComposer,
    $$DmNoteTagsTableOrderingComposer,
    $$DmNoteTagsTableAnnotationComposer,
    $$DmNoteTagsTableCreateCompanionBuilder,
    $$DmNoteTagsTableUpdateCompanionBuilder,
    (DmNoteTag, $$DmNoteTagsTableReferences),
    DmNoteTag,
    PrefetchHooks Function({bool noteId, bool tagId})> {
  $$DmNoteTagsTableTableManager(_$DayMemoryDb db, $DmNoteTagsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DmNoteTagsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DmNoteTagsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DmNoteTagsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> noteId = const Value.absent(),
            Value<String> tagId = const Value.absent(),
            Value<DateTime> createdDate = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DmNoteTagsCompanion(
            id: id,
            noteId: noteId,
            tagId: tagId,
            createdDate: createdDate,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String noteId,
            required String tagId,
            required DateTime createdDate,
            Value<int> rowid = const Value.absent(),
          }) =>
              DmNoteTagsCompanion.insert(
            id: id,
            noteId: noteId,
            tagId: tagId,
            createdDate: createdDate,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$DmNoteTagsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({noteId = false, tagId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (noteId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.noteId,
                    referencedTable:
                        $$DmNoteTagsTableReferences._noteIdTable(db),
                    referencedColumn:
                        $$DmNoteTagsTableReferences._noteIdTable(db).id,
                  ) as T;
                }
                if (tagId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.tagId,
                    referencedTable:
                        $$DmNoteTagsTableReferences._tagIdTable(db),
                    referencedColumn:
                        $$DmNoteTagsTableReferences._tagIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$DmNoteTagsTableProcessedTableManager = ProcessedTableManager<
    _$DayMemoryDb,
    $DmNoteTagsTable,
    DmNoteTag,
    $$DmNoteTagsTableFilterComposer,
    $$DmNoteTagsTableOrderingComposer,
    $$DmNoteTagsTableAnnotationComposer,
    $$DmNoteTagsTableCreateCompanionBuilder,
    $$DmNoteTagsTableUpdateCompanionBuilder,
    (DmNoteTag, $$DmNoteTagsTableReferences),
    DmNoteTag,
    PrefetchHooks Function({bool noteId, bool tagId})>;
typedef $$DmQuestionListsTableCreateCompanionBuilder = DmQuestionListsCompanion
    Function({
  required String id,
  required String content,
  required int orderRank,
  required DateTime createdDate,
  required DateTime modifiedDate,
  required bool isChanged,
  required bool isDeleted,
  Value<int> rowid,
});
typedef $$DmQuestionListsTableUpdateCompanionBuilder = DmQuestionListsCompanion
    Function({
  Value<String> id,
  Value<String> content,
  Value<int> orderRank,
  Value<DateTime> createdDate,
  Value<DateTime> modifiedDate,
  Value<bool> isChanged,
  Value<bool> isDeleted,
  Value<int> rowid,
});

final class $$DmQuestionListsTableReferences extends BaseReferences<
    _$DayMemoryDb, $DmQuestionListsTable, DmQuestionList> {
  $$DmQuestionListsTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$DmQuestionsTable, List<DmQuestion>>
      _dmQuestionsRefsTable(_$DayMemoryDb db) =>
          MultiTypedResultKey.fromTable(db.dmQuestions,
              aliasName: $_aliasNameGenerator(
                  db.dmQuestionLists.id, db.dmQuestions.questionList));

  $$DmQuestionsTableProcessedTableManager get dmQuestionsRefs {
    final manager = $$DmQuestionsTableTableManager($_db, $_db.dmQuestions)
        .filter(
            (f) => f.questionList.id.sqlEquals($_itemColumn<String>('id')!));

    final cache = $_typedResult.readTableOrNull(_dmQuestionsRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$DmQuestionListsTableFilterComposer
    extends Composer<_$DayMemoryDb, $DmQuestionListsTable> {
  $$DmQuestionListsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get content => $composableBuilder(
      column: $table.content, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get orderRank => $composableBuilder(
      column: $table.orderRank, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get modifiedDate => $composableBuilder(
      column: $table.modifiedDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isChanged => $composableBuilder(
      column: $table.isChanged, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isDeleted => $composableBuilder(
      column: $table.isDeleted, builder: (column) => ColumnFilters(column));

  Expression<bool> dmQuestionsRefs(
      Expression<bool> Function($$DmQuestionsTableFilterComposer f) f) {
    final $$DmQuestionsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dmQuestions,
        getReferencedColumn: (t) => t.questionList,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DmQuestionsTableFilterComposer(
              $db: $db,
              $table: $db.dmQuestions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$DmQuestionListsTableOrderingComposer
    extends Composer<_$DayMemoryDb, $DmQuestionListsTable> {
  $$DmQuestionListsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get content => $composableBuilder(
      column: $table.content, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get orderRank => $composableBuilder(
      column: $table.orderRank, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get modifiedDate => $composableBuilder(
      column: $table.modifiedDate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isChanged => $composableBuilder(
      column: $table.isChanged, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isDeleted => $composableBuilder(
      column: $table.isDeleted, builder: (column) => ColumnOrderings(column));
}

class $$DmQuestionListsTableAnnotationComposer
    extends Composer<_$DayMemoryDb, $DmQuestionListsTable> {
  $$DmQuestionListsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get content =>
      $composableBuilder(column: $table.content, builder: (column) => column);

  GeneratedColumn<int> get orderRank =>
      $composableBuilder(column: $table.orderRank, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => column);

  GeneratedColumn<DateTime> get modifiedDate => $composableBuilder(
      column: $table.modifiedDate, builder: (column) => column);

  GeneratedColumn<bool> get isChanged =>
      $composableBuilder(column: $table.isChanged, builder: (column) => column);

  GeneratedColumn<bool> get isDeleted =>
      $composableBuilder(column: $table.isDeleted, builder: (column) => column);

  Expression<T> dmQuestionsRefs<T extends Object>(
      Expression<T> Function($$DmQuestionsTableAnnotationComposer a) f) {
    final $$DmQuestionsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.dmQuestions,
        getReferencedColumn: (t) => t.questionList,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DmQuestionsTableAnnotationComposer(
              $db: $db,
              $table: $db.dmQuestions,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$DmQuestionListsTableTableManager extends RootTableManager<
    _$DayMemoryDb,
    $DmQuestionListsTable,
    DmQuestionList,
    $$DmQuestionListsTableFilterComposer,
    $$DmQuestionListsTableOrderingComposer,
    $$DmQuestionListsTableAnnotationComposer,
    $$DmQuestionListsTableCreateCompanionBuilder,
    $$DmQuestionListsTableUpdateCompanionBuilder,
    (DmQuestionList, $$DmQuestionListsTableReferences),
    DmQuestionList,
    PrefetchHooks Function({bool dmQuestionsRefs})> {
  $$DmQuestionListsTableTableManager(
      _$DayMemoryDb db, $DmQuestionListsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DmQuestionListsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DmQuestionListsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DmQuestionListsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> content = const Value.absent(),
            Value<int> orderRank = const Value.absent(),
            Value<DateTime> createdDate = const Value.absent(),
            Value<DateTime> modifiedDate = const Value.absent(),
            Value<bool> isChanged = const Value.absent(),
            Value<bool> isDeleted = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DmQuestionListsCompanion(
            id: id,
            content: content,
            orderRank: orderRank,
            createdDate: createdDate,
            modifiedDate: modifiedDate,
            isChanged: isChanged,
            isDeleted: isDeleted,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String content,
            required int orderRank,
            required DateTime createdDate,
            required DateTime modifiedDate,
            required bool isChanged,
            required bool isDeleted,
            Value<int> rowid = const Value.absent(),
          }) =>
              DmQuestionListsCompanion.insert(
            id: id,
            content: content,
            orderRank: orderRank,
            createdDate: createdDate,
            modifiedDate: modifiedDate,
            isChanged: isChanged,
            isDeleted: isDeleted,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$DmQuestionListsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({dmQuestionsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (dmQuestionsRefs) db.dmQuestions],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (dmQuestionsRefs)
                    await $_getPrefetchedData<DmQuestionList, $DmQuestionListsTable,
                            DmQuestion>(
                        currentTable: table,
                        referencedTable: $$DmQuestionListsTableReferences
                            ._dmQuestionsRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$DmQuestionListsTableReferences(db, table, p0)
                                .dmQuestionsRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) => referencedItems
                                .where((e) => e.questionList == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$DmQuestionListsTableProcessedTableManager = ProcessedTableManager<
    _$DayMemoryDb,
    $DmQuestionListsTable,
    DmQuestionList,
    $$DmQuestionListsTableFilterComposer,
    $$DmQuestionListsTableOrderingComposer,
    $$DmQuestionListsTableAnnotationComposer,
    $$DmQuestionListsTableCreateCompanionBuilder,
    $$DmQuestionListsTableUpdateCompanionBuilder,
    (DmQuestionList, $$DmQuestionListsTableReferences),
    DmQuestionList,
    PrefetchHooks Function({bool dmQuestionsRefs})>;
typedef $$DmQuestionsTableCreateCompanionBuilder = DmQuestionsCompanion
    Function({
  required String id,
  required String content,
  required int orderRank,
  required DateTime createdDate,
  required String questionList,
  Value<int> rowid,
});
typedef $$DmQuestionsTableUpdateCompanionBuilder = DmQuestionsCompanion
    Function({
  Value<String> id,
  Value<String> content,
  Value<int> orderRank,
  Value<DateTime> createdDate,
  Value<String> questionList,
  Value<int> rowid,
});

final class $$DmQuestionsTableReferences
    extends BaseReferences<_$DayMemoryDb, $DmQuestionsTable, DmQuestion> {
  $$DmQuestionsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $DmQuestionListsTable _questionListTable(_$DayMemoryDb db) =>
      db.dmQuestionLists.createAlias($_aliasNameGenerator(
          db.dmQuestions.questionList, db.dmQuestionLists.id));

  $$DmQuestionListsTableProcessedTableManager get questionList {
    final $_column = $_itemColumn<String>('question_list')!;

    final manager =
        $$DmQuestionListsTableTableManager($_db, $_db.dmQuestionLists)
            .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_questionListTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$DmQuestionsTableFilterComposer
    extends Composer<_$DayMemoryDb, $DmQuestionsTable> {
  $$DmQuestionsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get content => $composableBuilder(
      column: $table.content, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get orderRank => $composableBuilder(
      column: $table.orderRank, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnFilters(column));

  $$DmQuestionListsTableFilterComposer get questionList {
    final $$DmQuestionListsTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.questionList,
        referencedTable: $db.dmQuestionLists,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DmQuestionListsTableFilterComposer(
              $db: $db,
              $table: $db.dmQuestionLists,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$DmQuestionsTableOrderingComposer
    extends Composer<_$DayMemoryDb, $DmQuestionsTable> {
  $$DmQuestionsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get content => $composableBuilder(
      column: $table.content, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get orderRank => $composableBuilder(
      column: $table.orderRank, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnOrderings(column));

  $$DmQuestionListsTableOrderingComposer get questionList {
    final $$DmQuestionListsTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.questionList,
        referencedTable: $db.dmQuestionLists,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DmQuestionListsTableOrderingComposer(
              $db: $db,
              $table: $db.dmQuestionLists,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$DmQuestionsTableAnnotationComposer
    extends Composer<_$DayMemoryDb, $DmQuestionsTable> {
  $$DmQuestionsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get content =>
      $composableBuilder(column: $table.content, builder: (column) => column);

  GeneratedColumn<int> get orderRank =>
      $composableBuilder(column: $table.orderRank, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => column);

  $$DmQuestionListsTableAnnotationComposer get questionList {
    final $$DmQuestionListsTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.questionList,
        referencedTable: $db.dmQuestionLists,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DmQuestionListsTableAnnotationComposer(
              $db: $db,
              $table: $db.dmQuestionLists,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$DmQuestionsTableTableManager extends RootTableManager<
    _$DayMemoryDb,
    $DmQuestionsTable,
    DmQuestion,
    $$DmQuestionsTableFilterComposer,
    $$DmQuestionsTableOrderingComposer,
    $$DmQuestionsTableAnnotationComposer,
    $$DmQuestionsTableCreateCompanionBuilder,
    $$DmQuestionsTableUpdateCompanionBuilder,
    (DmQuestion, $$DmQuestionsTableReferences),
    DmQuestion,
    PrefetchHooks Function({bool questionList})> {
  $$DmQuestionsTableTableManager(_$DayMemoryDb db, $DmQuestionsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DmQuestionsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DmQuestionsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DmQuestionsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> content = const Value.absent(),
            Value<int> orderRank = const Value.absent(),
            Value<DateTime> createdDate = const Value.absent(),
            Value<String> questionList = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DmQuestionsCompanion(
            id: id,
            content: content,
            orderRank: orderRank,
            createdDate: createdDate,
            questionList: questionList,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String content,
            required int orderRank,
            required DateTime createdDate,
            required String questionList,
            Value<int> rowid = const Value.absent(),
          }) =>
              DmQuestionsCompanion.insert(
            id: id,
            content: content,
            orderRank: orderRank,
            createdDate: createdDate,
            questionList: questionList,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$DmQuestionsTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({questionList = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (questionList) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.questionList,
                    referencedTable:
                        $$DmQuestionsTableReferences._questionListTable(db),
                    referencedColumn:
                        $$DmQuestionsTableReferences._questionListTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$DmQuestionsTableProcessedTableManager = ProcessedTableManager<
    _$DayMemoryDb,
    $DmQuestionsTable,
    DmQuestion,
    $$DmQuestionsTableFilterComposer,
    $$DmQuestionsTableOrderingComposer,
    $$DmQuestionsTableAnnotationComposer,
    $$DmQuestionsTableCreateCompanionBuilder,
    $$DmQuestionsTableUpdateCompanionBuilder,
    (DmQuestion, $$DmQuestionsTableReferences),
    DmQuestion,
    PrefetchHooks Function({bool questionList})>;
typedef $$DmFilesTableCreateCompanionBuilder = DmFilesCompanion Function({
  required String id,
  required String fileName,
  required int fileSize,
  required int fileType,
  required int width,
  required int height,
  Value<String?> noteId,
  required int orderRank,
  required DateTime createdDate,
  Value<int> rowid,
});
typedef $$DmFilesTableUpdateCompanionBuilder = DmFilesCompanion Function({
  Value<String> id,
  Value<String> fileName,
  Value<int> fileSize,
  Value<int> fileType,
  Value<int> width,
  Value<int> height,
  Value<String?> noteId,
  Value<int> orderRank,
  Value<DateTime> createdDate,
  Value<int> rowid,
});

final class $$DmFilesTableReferences
    extends BaseReferences<_$DayMemoryDb, $DmFilesTable, DmFile> {
  $$DmFilesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $DmNotesTable _noteIdTable(_$DayMemoryDb db) => db.dmNotes
      .createAlias($_aliasNameGenerator(db.dmFiles.noteId, db.dmNotes.id));

  $$DmNotesTableProcessedTableManager? get noteId {
    final $_column = $_itemColumn<String>('note_id');
    if ($_column == null) return null;
    final manager = $$DmNotesTableTableManager($_db, $_db.dmNotes)
        .filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_noteIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$DmFilesTableFilterComposer
    extends Composer<_$DayMemoryDb, $DmFilesTable> {
  $$DmFilesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get fileName => $composableBuilder(
      column: $table.fileName, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get fileSize => $composableBuilder(
      column: $table.fileSize, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get fileType => $composableBuilder(
      column: $table.fileType, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get width => $composableBuilder(
      column: $table.width, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get height => $composableBuilder(
      column: $table.height, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get orderRank => $composableBuilder(
      column: $table.orderRank, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnFilters(column));

  $$DmNotesTableFilterComposer get noteId {
    final $$DmNotesTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.noteId,
        referencedTable: $db.dmNotes,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DmNotesTableFilterComposer(
              $db: $db,
              $table: $db.dmNotes,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$DmFilesTableOrderingComposer
    extends Composer<_$DayMemoryDb, $DmFilesTable> {
  $$DmFilesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get fileName => $composableBuilder(
      column: $table.fileName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get fileSize => $composableBuilder(
      column: $table.fileSize, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get fileType => $composableBuilder(
      column: $table.fileType, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get width => $composableBuilder(
      column: $table.width, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get height => $composableBuilder(
      column: $table.height, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get orderRank => $composableBuilder(
      column: $table.orderRank, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => ColumnOrderings(column));

  $$DmNotesTableOrderingComposer get noteId {
    final $$DmNotesTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.noteId,
        referencedTable: $db.dmNotes,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DmNotesTableOrderingComposer(
              $db: $db,
              $table: $db.dmNotes,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$DmFilesTableAnnotationComposer
    extends Composer<_$DayMemoryDb, $DmFilesTable> {
  $$DmFilesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get fileName =>
      $composableBuilder(column: $table.fileName, builder: (column) => column);

  GeneratedColumn<int> get fileSize =>
      $composableBuilder(column: $table.fileSize, builder: (column) => column);

  GeneratedColumn<int> get fileType =>
      $composableBuilder(column: $table.fileType, builder: (column) => column);

  GeneratedColumn<int> get width =>
      $composableBuilder(column: $table.width, builder: (column) => column);

  GeneratedColumn<int> get height =>
      $composableBuilder(column: $table.height, builder: (column) => column);

  GeneratedColumn<int> get orderRank =>
      $composableBuilder(column: $table.orderRank, builder: (column) => column);

  GeneratedColumn<DateTime> get createdDate => $composableBuilder(
      column: $table.createdDate, builder: (column) => column);

  $$DmNotesTableAnnotationComposer get noteId {
    final $$DmNotesTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.noteId,
        referencedTable: $db.dmNotes,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$DmNotesTableAnnotationComposer(
              $db: $db,
              $table: $db.dmNotes,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$DmFilesTableTableManager extends RootTableManager<
    _$DayMemoryDb,
    $DmFilesTable,
    DmFile,
    $$DmFilesTableFilterComposer,
    $$DmFilesTableOrderingComposer,
    $$DmFilesTableAnnotationComposer,
    $$DmFilesTableCreateCompanionBuilder,
    $$DmFilesTableUpdateCompanionBuilder,
    (DmFile, $$DmFilesTableReferences),
    DmFile,
    PrefetchHooks Function({bool noteId})> {
  $$DmFilesTableTableManager(_$DayMemoryDb db, $DmFilesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DmFilesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DmFilesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DmFilesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> fileName = const Value.absent(),
            Value<int> fileSize = const Value.absent(),
            Value<int> fileType = const Value.absent(),
            Value<int> width = const Value.absent(),
            Value<int> height = const Value.absent(),
            Value<String?> noteId = const Value.absent(),
            Value<int> orderRank = const Value.absent(),
            Value<DateTime> createdDate = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DmFilesCompanion(
            id: id,
            fileName: fileName,
            fileSize: fileSize,
            fileType: fileType,
            width: width,
            height: height,
            noteId: noteId,
            orderRank: orderRank,
            createdDate: createdDate,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String fileName,
            required int fileSize,
            required int fileType,
            required int width,
            required int height,
            Value<String?> noteId = const Value.absent(),
            required int orderRank,
            required DateTime createdDate,
            Value<int> rowid = const Value.absent(),
          }) =>
              DmFilesCompanion.insert(
            id: id,
            fileName: fileName,
            fileSize: fileSize,
            fileType: fileType,
            width: width,
            height: height,
            noteId: noteId,
            orderRank: orderRank,
            createdDate: createdDate,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$DmFilesTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({noteId = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (noteId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.noteId,
                    referencedTable: $$DmFilesTableReferences._noteIdTable(db),
                    referencedColumn:
                        $$DmFilesTableReferences._noteIdTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$DmFilesTableProcessedTableManager = ProcessedTableManager<
    _$DayMemoryDb,
    $DmFilesTable,
    DmFile,
    $$DmFilesTableFilterComposer,
    $$DmFilesTableOrderingComposer,
    $$DmFilesTableAnnotationComposer,
    $$DmFilesTableCreateCompanionBuilder,
    $$DmFilesTableUpdateCompanionBuilder,
    (DmFile, $$DmFilesTableReferences),
    DmFile,
    PrefetchHooks Function({bool noteId})>;

class $DayMemoryDbManager {
  final _$DayMemoryDb _db;
  $DayMemoryDbManager(this._db);
  $$DmNotebooksTableTableManager get dmNotebooks =>
      $$DmNotebooksTableTableManager(_db, _db.dmNotebooks);
  $$DmLocationsTableTableManager get dmLocations =>
      $$DmLocationsTableTableManager(_db, _db.dmLocations);
  $$DmNotesTableTableManager get dmNotes =>
      $$DmNotesTableTableManager(_db, _db.dmNotes);
  $$DmTagsTableTableManager get dmTags =>
      $$DmTagsTableTableManager(_db, _db.dmTags);
  $$DmNoteTagsTableTableManager get dmNoteTags =>
      $$DmNoteTagsTableTableManager(_db, _db.dmNoteTags);
  $$DmQuestionListsTableTableManager get dmQuestionLists =>
      $$DmQuestionListsTableTableManager(_db, _db.dmQuestionLists);
  $$DmQuestionsTableTableManager get dmQuestions =>
      $$DmQuestionsTableTableManager(_db, _db.dmQuestions);
  $$DmFilesTableTableManager get dmFiles =>
      $$DmFilesTableTableManager(_db, _db.dmFiles);
}
