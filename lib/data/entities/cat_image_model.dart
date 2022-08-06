class CatImage {
    CatImage({
        this.id,
        this.width,
        this.height,
        this.url,
    });

    String? id;
    int? width;
    int? height;
    String? url;

    factory CatImage.fromJson(Map<String, dynamic> json) => CatImage(
        id: json["id"],
        width: json["width"],
        height: json["height"],
        url: json["url"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "width": width,
        "height": height,
        "url": url,
    };
}