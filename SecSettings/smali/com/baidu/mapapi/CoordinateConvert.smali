.class public Lcom/baidu/mapapi/CoordinateConvert;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/baidu/mapapi/GeoPoint;I)Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "act"

    const v2, 0xe509ca

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "x"

    invoke-virtual {p0}, Lcom/baidu/mapapi/GeoPoint;->getLongitudeE6()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "y"

    invoke-virtual {p0}, Lcom/baidu/mapapi/GeoPoint;->getLatitudeE6()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "t"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/baidu/mapapi/Mj;->sendBundle(Landroid/os/Bundle;)I

    const-string v1, "x"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "y"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mapapi/c;->a([C)[C

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    const-string v3, "x"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v3, "x"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mapapi/c;->a([C)[C

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    const-string v2, "y"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v2, "y"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static bundleDecode(Landroid/os/Bundle;)Lcom/baidu/mapapi/GeoPoint;
    .locals 3

    const/4 v1, 0x0

    new-instance v0, Lcom/baidu/mapapi/GeoPoint;

    invoke-direct {v0, v1, v1}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    const-string v1, "x"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "y"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mapapi/c;->b([C)[C

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mapapi/c;->b([C)[C

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/GeoPoint;->setLongitudeE6(I)V

    invoke-virtual {v0, v2}, Lcom/baidu/mapapi/GeoPoint;->setLatitudeE6(I)V

    return-object v0
.end method

.method public static fromGcjToBaidu(Lcom/baidu/mapapi/GeoPoint;)Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/baidu/mapapi/CoordinateConvert;->a(Lcom/baidu/mapapi/GeoPoint;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static fromWgs84ToBaidu(Lcom/baidu/mapapi/GeoPoint;)Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/baidu/mapapi/CoordinateConvert;->a(Lcom/baidu/mapapi/GeoPoint;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
