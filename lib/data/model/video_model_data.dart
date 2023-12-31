class VideoModelData {
  dynamic links;
  dynamic total;
  dynamic page;
  dynamic pageSize;
  List<VideoDataResults>? results;

  VideoModelData({links, total, page, pageSize, results});

  VideoModelData.fromJson(Map<String, dynamic> json) {
    links = json['links'] != null ? Links.fromJson(json['links']) : null;
    total = json['total'];
    page = json['page'];
    pageSize = json['page_size'];
    if (json['results'] != null) {
      results = <VideoDataResults>[];
      json['results'].forEach((v) {
        results!.add(VideoDataResults.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (links != null) {
      data['links'] = links!.toJson();
    }
    data['total'] = total;
    data['page'] = page;
    data['page_size'] = pageSize;
    if (results != null) {
      data['results'] = results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Links {
  dynamic next;
  dynamic previous;

  Links({next, previous});

  Links.fromJson(Map<String, dynamic> json) {
    next = json['next'];
    previous = json['previous'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['next'] = next;
    data['previous'] = previous;
    return data;
  }
}

class VideoDataResults {
  dynamic thumbnail;
  dynamic id;
  dynamic title;
  dynamic dateAndTime;
  dynamic slug;
  dynamic createdAt;
  dynamic manifest;
  dynamic liveStatus;
  dynamic liveManifest;
  dynamic isLive;
  dynamic channelImage;
  dynamic channelName;
  dynamic channelUsername;
  dynamic isVerified;
  dynamic channelSlug;
  dynamic channelSubscriber;
  dynamic channelId;
  dynamic type;
  dynamic viewers;
  dynamic duration;
  dynamic objectType;

  VideoDataResults(
      {thumbnail,
      id,
      title,
      dateAndTime,
      slug,
      createdAt,
      manifest,
      liveStatus,
      liveManifest,
      isLive,
      channelImage,
      channelName,
      channelUsername,
      isVerified,
      channelSlug,
      channelSubscriber,
      channelId,
      type,
      viewers,
      duration,
      objectType});

  VideoDataResults.fromJson(Map<String, dynamic> json) {
    thumbnail = json['thumbnail'];
    id = json['id'];
    title = json['title'];
    dateAndTime = json['date_and_time'];
    slug = json['slug'];
    createdAt = json['created_at'];
    manifest = json['manifest'];
    liveStatus = json['live_status'];
    liveManifest = json['live_manifest'];
    isLive = json['is_live'];
    channelImage = json['channel_image'];
    channelName = json['channel_name'];
    channelUsername = json['channel_username'];
    isVerified = json['is_verified'];
    channelSlug = json['channel_slug'];
    channelSubscriber = json['channel_subscriber'];
    channelId = json['channel_id'];
    type = json['type'];
    viewers = json['viewers'];
    duration = json['duration'];
    objectType = json['object_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['thumbnail'] = thumbnail;
    data['id'] = id;
    data['title'] = title;
    data['date_and_time'] = dateAndTime;
    data['slug'] = slug;
    data['created_at'] = createdAt;
    data['manifest'] = manifest;
    data['live_status'] = liveStatus;
    data['live_manifest'] = liveManifest;
    data['is_live'] = isLive;
    data['channel_image'] = channelImage;
    data['channel_name'] = channelName;
    data['channel_username'] = channelUsername;
    data['is_verified'] = isVerified;
    data['channel_slug'] = channelSlug;
    data['channel_subscriber'] = channelSubscriber;
    data['channel_id'] = channelId;
    data['type'] = type;
    data['viewers'] = viewers;
    data['duration'] = duration;
    data['object_type'] = objectType;
    return data;
  }
}
