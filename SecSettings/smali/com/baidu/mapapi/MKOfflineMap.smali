.class public Lcom/baidu/mapapi/MKOfflineMap;
.super Ljava/lang/Object;


# static fields
.field public static final TYPE_DOWNLOAD_UPDATE:I = 0x0

.field public static final TYPE_NEW_OFFLINE:I = 0x6

.field public static final TYPE_VER_UPDATE:I = 0x4


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    return-void
.end method

.method private a()Z
    .locals 3

    const/4 v0, 0x1

    sget-object v1, Lcom/baidu/mapapi/Mj;->f:Ljava/net/ServerSocket;

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/ServerSocket;

    const v2, 0xc820

    invoke-direct {v1, v2}, Ljava/net/ServerSocket;-><init>(I)V

    sput-object v1, Lcom/baidu/mapapi/Mj;->f:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "baidumap"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAllUpdateInfo()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/MKOLUpdateElement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    :goto_0
    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    const-string v1, "act"

    const v2, 0xf44ca0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/baidu/mapapi/Mj;->sendBundle(Landroid/os/Bundle;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    const-string v1, "size"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    const-string v1, "ratio"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    const-string v1, "cityptx"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v6

    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    const-string v1, "citypty"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v7

    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    const-string v1, "serversize"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v8

    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_2
    array-length v10, v2

    if-ge v0, v10, :cond_3

    new-instance v10, Lcom/baidu/mapapi/MKOLUpdateElement;

    invoke-direct {v10}, Lcom/baidu/mapapi/MKOLUpdateElement;-><init>()V

    aget-object v11, v2, v0

    iput-object v11, v10, Lcom/baidu/mapapi/MKOLUpdateElement;->cityName:Ljava/lang/String;

    aget v11, v3, v0

    iput v11, v10, Lcom/baidu/mapapi/MKOLUpdateElement;->cityID:I

    aget v11, v4, v0

    iput v11, v10, Lcom/baidu/mapapi/MKOLUpdateElement;->size:I

    aget v11, v5, v0

    iput v11, v10, Lcom/baidu/mapapi/MKOLUpdateElement;->ratio:I

    iget v11, v10, Lcom/baidu/mapapi/MKOLUpdateElement;->ratio:I

    const/16 v12, 0x2710

    if-ne v11, v12, :cond_2

    const/16 v11, 0x64

    iput v11, v10, Lcom/baidu/mapapi/MKOLUpdateElement;->ratio:I

    :cond_2
    new-instance v11, Lcom/baidu/mapapi/GeoPoint;

    aget v12, v7, v0

    aget v13, v6, v0

    invoke-direct {v11, v12, v13}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    iput-object v11, v10, Lcom/baidu/mapapi/MKOLUpdateElement;->geoPt:Lcom/baidu/mapapi/GeoPoint;

    aget v11, v9, v0

    iput v11, v10, Lcom/baidu/mapapi/MKOLUpdateElement;->status:I

    aget v11, v8, v0

    iput v11, v10, Lcom/baidu/mapapi/MKOLUpdateElement;->serversize:I

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public getHotCityList()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/MKOLSearchRecord;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    :goto_0
    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    const-string v1, "act"

    const v2, 0xf44ef8

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/baidu/mapapi/Mj;->sendBundle(Landroid/os/Bundle;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    const-string v1, "size"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_2
    array-length v5, v2

    if-ge v0, v5, :cond_2

    new-instance v5, Lcom/baidu/mapapi/MKOLSearchRecord;

    invoke-direct {v5}, Lcom/baidu/mapapi/MKOLSearchRecord;-><init>()V

    aget-object v6, v2, v0

    iput-object v6, v5, Lcom/baidu/mapapi/MKOLSearchRecord;->cityName:Ljava/lang/String;

    aget v6, v3, v0

    iput v6, v5, Lcom/baidu/mapapi/MKOLSearchRecord;->cityID:I

    aget v6, v4, v0

    iput v6, v5, Lcom/baidu/mapapi/MKOLSearchRecord;->size:I

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public getOfflineCityList()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/MKOLSearchRecord;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    :goto_0
    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    const-string v1, "act"

    const v2, 0xf44f5c

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/baidu/mapapi/Mj;->sendBundle(Landroid/os/Bundle;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    const-string v1, "size"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_2
    array-length v5, v2

    if-ge v0, v5, :cond_2

    new-instance v5, Lcom/baidu/mapapi/MKOLSearchRecord;

    invoke-direct {v5}, Lcom/baidu/mapapi/MKOLSearchRecord;-><init>()V

    aget-object v6, v2, v0

    iput-object v6, v5, Lcom/baidu/mapapi/MKOLSearchRecord;->cityName:Ljava/lang/String;

    aget v6, v3, v0

    iput v6, v5, Lcom/baidu/mapapi/MKOLSearchRecord;->cityID:I

    aget v6, v4, v0

    iput v6, v5, Lcom/baidu/mapapi/MKOLSearchRecord;->size:I

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public getUpdateInfo(I)Lcom/baidu/mapapi/MKOLUpdateElement;
    .locals 5

    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    :goto_0
    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    const-string v1, "act"

    const v2, 0xf44d04

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    const-string v1, "opt"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/baidu/mapapi/Mj;->sendBundle(Landroid/os/Bundle;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/baidu/mapapi/MKOLUpdateElement;

    invoke-direct {v0}, Lcom/baidu/mapapi/MKOLUpdateElement;-><init>()V

    iget-object v1, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    const-string v2, "name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/mapapi/MKOLUpdateElement;->cityName:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    const-string v2, "id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/mapapi/MKOLUpdateElement;->cityID:I

    iget-object v1, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    const-string v2, "size"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/mapapi/MKOLUpdateElement;->size:I

    iget-object v1, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    const-string v2, "ratio"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/mapapi/MKOLUpdateElement;->ratio:I

    iget v1, v0, Lcom/baidu/mapapi/MKOLUpdateElement;->ratio:I

    const/16 v2, 0x2710

    if-ne v1, v2, :cond_2

    const/16 v1, 0x64

    iput v1, v0, Lcom/baidu/mapapi/MKOLUpdateElement;->ratio:I

    :cond_2
    new-instance v1, Lcom/baidu/mapapi/GeoPoint;

    iget-object v2, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    const-string v3, "citypty"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    const-string v4, "cityptx"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    iput-object v1, v0, Lcom/baidu/mapapi/MKOLUpdateElement;->geoPt:Lcom/baidu/mapapi/GeoPoint;

    iget-object v1, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    const-string v2, "serversize"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/mapapi/MKOLUpdateElement;->serversize:I

    iget-object v1, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    const-string v2, "state"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/mapapi/MKOLUpdateElement;->status:I

    goto :goto_1
.end method

.method public init(Lcom/baidu/mapapi/BMapManager;Lcom/baidu/mapapi/MKOfflineMapListener;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/baidu/mapapi/MKOfflineMap;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_2

    iget-object v2, p1, Lcom/baidu/mapapi/BMapManager;->a:Lcom/baidu/mapapi/Mj;

    invoke-virtual {v2, p2}, Lcom/baidu/mapapi/Mj;->a(Lcom/baidu/mapapi/MKOfflineMapListener;)V

    :cond_2
    invoke-static {}, Lcom/baidu/mapapi/Mj;->initOfflineCC()I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public pause(I)Z
    .locals 3

    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    :goto_0
    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    const-string v1, "act"

    const v2, 0xf44bd8

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    const-string v1, "opt"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/baidu/mapapi/Mj;->sendBundle(Landroid/os/Bundle;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public remove(I)Z
    .locals 3

    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    :goto_0
    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    const-string v1, "act"

    const v2, 0xf44c3c

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    const-string v1, "opt"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/baidu/mapapi/Mj;->sendBundle(Landroid/os/Bundle;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public scan()I
    .locals 3

    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    :goto_0
    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    const-string v1, "act"

    const v2, 0xf450ec

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/baidu/mapapi/Mj;->sendBundle(Landroid/os/Bundle;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    const-string v1, "num"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1
.end method

.method public searchCity(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/MKOLSearchRecord;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    :goto_0
    iget-object v1, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    const-string v2, "act"

    const v3, 0xf44f5c

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    const-string v2, "key"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/baidu/mapapi/Mj;->sendBundle(Landroid/os/Bundle;)I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    const-string v2, "name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    const-string v3, "id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    iget-object v1, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    const-string v4, "size"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_2
    array-length v5, v2

    if-ge v0, v5, :cond_3

    new-instance v5, Lcom/baidu/mapapi/MKOLSearchRecord;

    invoke-direct {v5}, Lcom/baidu/mapapi/MKOLSearchRecord;-><init>()V

    aget-object v6, v2, v0

    iput-object v6, v5, Lcom/baidu/mapapi/MKOLSearchRecord;->cityName:Ljava/lang/String;

    aget v6, v3, v0

    iput v6, v5, Lcom/baidu/mapapi/MKOLSearchRecord;->cityID:I

    aget v6, v4, v0

    iput v6, v5, Lcom/baidu/mapapi/MKOLSearchRecord;->size:I

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public start(I)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    :goto_0
    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    const-string v3, "act"

    const v4, 0xf44d04

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    const-string v3, "opt"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/baidu/mapapi/Mj;->sendBundle(Landroid/os/Bundle;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    const-string v3, "state"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    :goto_1
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->clear()V

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    const-string v3, "opt"

    const v4, 0xa8003c

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    const-string v3, "act"

    const v4, 0xa8009b

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    const-string v3, "cityid"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_2
    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/baidu/mapapi/Mj;->sendBundle(Landroid/os/Bundle;)I

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    :goto_3
    return v1

    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    const-string v1, "act"

    const v3, 0xf45088

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/baidu/mapapi/Mj;->sendBundle(Landroid/os/Bundle;)I

    move v1, v2

    goto :goto_3

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    const-string v3, "act"

    const v4, 0xf45024

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    const-string v3, "opt"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/baidu/mapapi/Mj;->sendBundle(Landroid/os/Bundle;)I

    move-result v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    const-string v3, "act"

    const v4, 0xf44b74

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/MKOfflineMap;->a:Landroid/os/Bundle;

    const-string v3, "opt"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
