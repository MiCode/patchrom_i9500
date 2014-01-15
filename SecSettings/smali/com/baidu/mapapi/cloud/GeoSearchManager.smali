.class public Lcom/baidu/mapapi/cloud/GeoSearchManager;
.super Ljava/lang/Object;


# static fields
.field public static final GEO_SEARCH:I = 0x32

.field public static final GEO_SEARCH_DETAILS:I = 0x33

.field private static b:Lcom/baidu/mapapi/cloud/GeoSearchManager;


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->a:Landroid/os/Bundle;

    return-void
.end method

.method public static getInstance()Lcom/baidu/mapapi/cloud/GeoSearchManager;
    .locals 1

    sget-object v0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->b:Lcom/baidu/mapapi/cloud/GeoSearchManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/mapapi/cloud/GeoSearchManager;

    invoke-direct {v0}, Lcom/baidu/mapapi/cloud/GeoSearchManager;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->b:Lcom/baidu/mapapi/cloud/GeoSearchManager;

    :cond_0
    sget-object v0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->b:Lcom/baidu/mapapi/cloud/GeoSearchManager;

    return-object v0
.end method


# virtual methods
.method public init(Lcom/baidu/mapapi/BMapManager;Lcom/baidu/mapapi/cloud/GeoSearchListener;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    if-eqz p2, :cond_2

    :try_start_0
    const-string v0, "com.baidu.mapapi.BMapManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getMj"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_1
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/Mj;

    invoke-virtual {v0, p2}, Lcom/baidu/mapapi/Mj;->initGeoListener(Lcom/baidu/mapapi/cloud/GeoSearchListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    :cond_2
    :goto_1
    invoke-static {}, Lcom/baidu/mapapi/Mj;->initSearchCC()I

    move-result v0

    if-ne v0, v2, :cond_3

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public searchBounds(Lcom/baidu/mapapi/cloud/BoundsSearchInfo;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/baidu/mapapi/cloud/BoundsSearchInfo;->ak:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->a:Landroid/os/Bundle;

    if-nez v1, :cond_2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->a:Landroid/os/Bundle;

    :goto_1
    iget-object v1, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->a:Landroid/os/Bundle;

    const-string v2, "act"

    const v3, 0xa8009e

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->a:Landroid/os/Bundle;

    const-string v2, "opt"

    const v3, 0xa8004b

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->a:Landroid/os/Bundle;

    const-string v2, "postdata"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget-object v1, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->a:Landroid/os/Bundle;

    const-string v2, "url"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://api.map.baidu.com/geosearch/poi"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/baidu/mapapi/cloud/BoundsSearchInfo;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->a:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/baidu/mapapi/Mj;->sendBundle(Landroid/os/Bundle;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->a:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    goto :goto_1
.end method

.method public searchDetail(Lcom/baidu/mapapi/cloud/DetailSearchInfo;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/baidu/mapapi/cloud/DetailSearchInfo;->ak:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->a:Landroid/os/Bundle;

    if-nez v1, :cond_2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->a:Landroid/os/Bundle;

    :goto_1
    iget-object v1, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->a:Landroid/os/Bundle;

    const-string v2, "act"

    const v3, 0xa8009e

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->a:Landroid/os/Bundle;

    const-string v2, "opt"

    const v3, 0xa8004c

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->a:Landroid/os/Bundle;

    const-string v2, "postdata"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget-object v1, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->a:Landroid/os/Bundle;

    const-string v2, "url"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://api.map.baidu.com/geosearch/detail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/baidu/mapapi/cloud/DetailSearchInfo;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "kal"

    invoke-virtual {p1}, Lcom/baidu/mapapi/cloud/DetailSearchInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->a:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/baidu/mapapi/Mj;->sendBundle(Landroid/os/Bundle;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->a:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    goto :goto_1
.end method

.method public searchNearby(Lcom/baidu/mapapi/cloud/NearbySearchInfo;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/baidu/mapapi/cloud/NearbySearchInfo;->ak:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->a:Landroid/os/Bundle;

    if-nez v1, :cond_2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->a:Landroid/os/Bundle;

    :goto_1
    iget-object v1, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->a:Landroid/os/Bundle;

    const-string v2, "act"

    const v3, 0xa8009e

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->a:Landroid/os/Bundle;

    const-string v2, "opt"

    const v3, 0xa8004b

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->a:Landroid/os/Bundle;

    const-string v2, "postdata"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget-object v1, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->a:Landroid/os/Bundle;

    const-string v2, "url"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://api.map.baidu.com/geosearch/poi"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/baidu/mapapi/cloud/NearbySearchInfo;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->a:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/baidu/mapapi/Mj;->sendBundle(Landroid/os/Bundle;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->a:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    goto :goto_1
.end method

.method public searchRegion(Lcom/baidu/mapapi/cloud/RegionSearchInfo;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/baidu/mapapi/cloud/RegionSearchInfo;->ak:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->a:Landroid/os/Bundle;

    if-nez v1, :cond_2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->a:Landroid/os/Bundle;

    :goto_1
    iget-object v1, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->a:Landroid/os/Bundle;

    const-string v2, "act"

    const v3, 0xa8009e

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->a:Landroid/os/Bundle;

    const-string v2, "opt"

    const v3, 0xa8004b

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->a:Landroid/os/Bundle;

    const-string v2, "postdata"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget-object v1, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->a:Landroid/os/Bundle;

    const-string v2, "url"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://api.map.baidu.com/geosearch/poi"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/baidu/mapapi/cloud/RegionSearchInfo;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->a:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/baidu/mapapi/Mj;->sendBundle(Landroid/os/Bundle;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/baidu/mapapi/cloud/GeoSearchManager;->a:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    goto :goto_1
.end method
