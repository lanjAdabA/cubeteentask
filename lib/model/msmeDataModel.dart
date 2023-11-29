// ignore_for_file: file_names

import 'dart:convert';

MsmeModel msmeModelFromJson(String str) => MsmeModel.fromJson(json.decode(str));

String msmeModelToJson(MsmeModel data) => json.encode(data.toJson());

class MsmeModel {
    final String indexName;
    final String title;
    final String desc;
    final String orgType;
    final List<String> org;
    final List<String> sector;
    final String source;
    final String catalogUuid;
    final String visualizable;
    final String active;
    final int created;
    final int updated;
    final DateTime createdDate;
    final DateTime updatedDate;
    final int externalWs;
    final String externalWsUrl;
    final TargetBucket targetBucket;
    final List<Field> field;
    final String message;
    final String version;
    final String status;
    final int total;
    final int count;
    final String limit;
    final String offset;
    final List<RecordFile> recordFiles;

    MsmeModel({
        required this.indexName,
        required this.title,
        required this.desc,
        required this.orgType,
        required this.org,
        required this.sector,
        required this.source,
        required this.catalogUuid,
        required this.visualizable,
        required this.active,
        required this.created,
        required this.updated,
        required this.createdDate,
        required this.updatedDate,
        required this.externalWs,
        required this.externalWsUrl,
        required this.targetBucket,
        required this.field,
        required this.message,
        required this.version,
        required this.status,
        required this.total,
        required this.count,
        required this.limit,
        required this.offset,
        required this.recordFiles,
    });

    factory MsmeModel.fromJson(Map<String, dynamic> json) => MsmeModel(
        indexName: json["index_name"],
        title: json["title"],
        desc: json["desc"],
        orgType: json["org_type"],
        org: List<String>.from(json["org"].map((x) => x)),
        sector: List<String>.from(json["sector"].map((x) => x)),
        source: json["source"],
        catalogUuid: json["catalog_uuid"],
        visualizable: json["visualizable"],
        active: json["active"],
        created: json["created"],
        updated: json["updated"],
        createdDate: DateTime.parse(json["created_date"]),
        updatedDate: DateTime.parse(json["updated_date"]),
        externalWs: json["external_ws"],
        externalWsUrl: json["external_ws_url"],
        targetBucket: TargetBucket.fromJson(json["target_bucket"]),
        field: List<Field>.from(json["field"].map((x) => Field.fromJson(x))),
        message: json["message"],
        version: json["version"],
        status: json["status"],
        total: json["total"],
        count: json["count"],
        limit: json["limit"],
        offset: json["offset"],
        recordFiles: List<RecordFile>.from(json["recordFiles"].map((x) => RecordFile.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "index_name": indexName,
        "title": title,
        "desc": desc,
        "org_type": orgType,
        "org": List<dynamic>.from(org.map((x) => x)),
        "sector": List<dynamic>.from(sector.map((x) => x)),
        "source": source,
        "catalog_uuid": catalogUuid,
        "visualizable": visualizable,
        "active": active,
        "created": created,
        "updated": updated,
        "created_date": createdDate.toIso8601String(),
        "updated_date": updatedDate.toIso8601String(),
        "external_ws": externalWs,
        "external_ws_url": externalWsUrl,
        "target_bucket": targetBucket.toJson(),
        "field": List<dynamic>.from(field.map((x) => x.toJson())),
        "message": message,
        "version": version,
        "status": status,
        "total": total,
        "count": count,
        "limit": limit,
        "offset": offset,
        "recordFiles": List<dynamic>.from(recordFiles.map((x) => x.toJson())),
    };
}

class Field {
    final String id;
    final String name;
    final String type;

    Field({
        required this.id,
        required this.name,
        required this.type,
    });

    factory Field.fromJson(Map<String, dynamic> json) => Field(
        id: json["id"],
        name: json["name"],
        type: json["type"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "type": type,
    };
}

class RecordFile {
    final String slNo;
    final String stateUt;
    final int working;
    final dynamic closed;
    final dynamic nonTraceable;
    final int total;

    RecordFile({
        required this.slNo,
        required this.stateUt,
        required this.working,
        required this.closed,
        required this.nonTraceable,
        required this.total,
    });

    factory RecordFile.fromJson(Map<String, dynamic> json) => RecordFile(
        slNo: json["sl_no_"],
        stateUt: json["state_ut"],
        working: json["working"],
        closed: json["closed"],
        nonTraceable: json["non_traceable"],
        total: json["_total"],
    );

    Map<String, dynamic> toJson() => {
        "sl_no_": slNo,
        "state_ut": stateUt,
        "working": working,
        "closed": closed,
        "non_traceable": nonTraceable,
        "_total": total,
    };
}

class TargetBucket {
    final String index;
    final String type;
    final String field;

    TargetBucket({
        required this.index,
        required this.type,
        required this.field,
    });

    factory TargetBucket.fromJson(Map<String, dynamic> json) => TargetBucket(
        index: json["index"],
        type: json["type"],
        field: json["field"],
    );

    Map<String, dynamic> toJson() => {
        "index": index,
        "type": type,
        "field": field,
    };
}
