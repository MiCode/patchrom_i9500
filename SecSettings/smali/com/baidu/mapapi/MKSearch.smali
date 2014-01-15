.class public Lcom/baidu/mapapi/MKSearch;
.super Ljava/lang/Object;


# static fields
.field public static final EBUS_NO_SUBWAY:I = 0x6

.field public static final EBUS_TIME_FIRST:I = 0x3

.field public static final EBUS_TRANSFER_FIRST:I = 0x4

.field public static final EBUS_WALK_FIRST:I = 0x5

.field public static final ECAR_DIS_FIRST:I = 0x1

.field public static final ECAR_FEE_FIRST:I = 0x2

.field public static final ECAR_TIME_FIRST:I = 0x0

.field public static final POI_DETAIL_SEARCH:I = 0x34

.field public static final TYPE_AREA_MULTI_POI_LIST:I = 0x2d

.field public static final TYPE_AREA_POI_LIST:I = 0x15

.field public static final TYPE_CITY_LIST:I = 0x7

.field public static final TYPE_POI_LIST:I = 0xb

.field private static b:I


# instance fields
.field private a:Landroid/os/Bundle;

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    sput v0, Lcom/baidu/mapapi/MKSearch;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/mapapi/MKSearch;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mapapi/MKSearch;->d:I

    return-void
.end method

.method public static getPoiPageCapacity()I
    .locals 1

    sget v0, Lcom/baidu/mapapi/MKSearch;->b:I

    return v0
.end method

.method public static setPoiPageCapacity(I)V
    .locals 1

    if-lez p0, :cond_0

    const/16 v0, 0x32

    if-gt p0, v0, :cond_0

    sput p0, Lcom/baidu/mapapi/MKSearch;->b:I

    :cond_0
    return-void
.end method


# virtual methods
.method public busLineSearch(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    if-nez v1, :cond_2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    :goto_1
    iget-object v1, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v2, "act"

    const v3, 0xa8009b

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v2, "opt"

    const v3, 0xa80039

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_0
    iget-object v1, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v2, "city"

    const-string v3, "gb2312"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    :try_start_1
    iget-object v1, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v2, "busid"

    const-string v3, "gb2312"

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    iget-object v1, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/baidu/mapapi/Mj;->sendBundle(Landroid/os/Bundle;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "MKSearch busLineSearch:"

    const-string v3, "busLine city error!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "MKSearch busLineSearch:"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v1

    const-string v2, "MKSearch busLineSearch:"

    const-string v3, "busLine name error!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "MKSearch busLineSearch:"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public drivingSearch(Ljava/lang/String;Lcom/baidu/mapapi/MKPlanNode;Ljava/lang/String;Lcom/baidu/mapapi/MKPlanNode;)I
    .locals 9

    const/16 v8, 0x63

    const/16 v7, 0x1f

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v3, -0x1

    if-eqz p2, :cond_0

    if-nez p4, :cond_2

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    return v2

    :cond_2
    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    if-nez v0, :cond_4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    :goto_1
    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v4, "act"

    const v5, 0xa827ab

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v4, "opt"

    const v5, 0xa82746

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p2, Lcom/baidu/mapapi/MKPlanNode;->pt:Lcom/baidu/mapapi/GeoPoint;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v4, "start_x"

    iget-object v5, p2, Lcom/baidu/mapapi/MKPlanNode;->pt:Lcom/baidu/mapapi/GeoPoint;

    invoke-virtual {v5}, Lcom/baidu/mapapi/GeoPoint;->getLongitudeE6()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v4, "start_y"

    iget-object v5, p2, Lcom/baidu/mapapi/MKPlanNode;->pt:Lcom/baidu/mapapi/GeoPoint;

    invoke-virtual {v5}, Lcom/baidu/mapapi/GeoPoint;->getLatitudeE6()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v0, v1

    :goto_2
    iget-object v4, p2, Lcom/baidu/mapapi/MKPlanNode;->name:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p2, Lcom/baidu/mapapi/MKPlanNode;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v8, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v4, "start_name"

    iget-object v5, p2, Lcom/baidu/mapapi/MKPlanNode;->name:Ljava/lang/String;

    const-string v6, "gb2312"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v7, :cond_5

    :try_start_1
    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v4, "start_city"

    const-string v5, "gb2312"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    move v0, v1

    :cond_3
    if-nez v0, :cond_6

    move v2, v3

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v4, "MKSearch drivingSearch:"

    const-string v5, "translate start name error!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "MKSearch drivingSearch:"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v4, "MKSearch drivingSearch:"

    const-string v5, "translate start city error!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "MKSearch drivingSearch:"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    move v2, v3

    goto/16 :goto_0

    :cond_6
    iget-object v0, p4, Lcom/baidu/mapapi/MKPlanNode;->pt:Lcom/baidu/mapapi/GeoPoint;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v4, "end_x"

    iget-object v5, p4, Lcom/baidu/mapapi/MKPlanNode;->pt:Lcom/baidu/mapapi/GeoPoint;

    invoke-virtual {v5}, Lcom/baidu/mapapi/GeoPoint;->getLongitudeE6()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v4, "end_y"

    iget-object v5, p4, Lcom/baidu/mapapi/MKPlanNode;->pt:Lcom/baidu/mapapi/GeoPoint;

    invoke-virtual {v5}, Lcom/baidu/mapapi/GeoPoint;->getLatitudeE6()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v0, v1

    :goto_5
    iget-object v4, p4, Lcom/baidu/mapapi/MKPlanNode;->name:Ljava/lang/String;

    if-eqz v4, :cond_7

    iget-object v4, p4, Lcom/baidu/mapapi/MKPlanNode;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v8, :cond_7

    :try_start_2
    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v4, "end_name"

    iget-object v5, p4, Lcom/baidu/mapapi/MKPlanNode;->name:Ljava/lang/String;

    const-string v6, "gb2312"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_6
    if-eqz p3, :cond_8

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v7, :cond_8

    :try_start_3
    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v4, "end_city"

    const-string v5, "gb2312"

    invoke-virtual {p3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_7
    move v0, v1

    :cond_7
    if-nez v0, :cond_9

    move v2, v3

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string v4, "MKSearch drivingSearch:"

    const-string v5, "translate end name error!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "MKSearch drivingSearch:"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_3
    move-exception v0

    const-string v4, "MKSearch drivingSearch:"

    const-string v5, "translate end city error!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "MKSearch drivingSearch:"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_8
    move v2, v3

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v1, "policy"

    iget v4, p0, Lcom/baidu/mapapi/MKSearch;->d:I

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/baidu/mapapi/Mj;->sendBundle(Landroid/os/Bundle;)I

    move-result v0

    if-nez v0, :cond_1

    move v2, v3

    goto/16 :goto_0

    :cond_a
    move v0, v2

    goto :goto_5

    :cond_b
    move v0, v2

    goto/16 :goto_2
.end method

.method public geocode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x63

    if-le v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    if-nez v1, :cond_3

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    :goto_1
    iget-object v1, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v2, "act"

    const v3, 0xa8009b

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v2, "opt"

    const v3, 0xa80040

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v2, "addr"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-gt v1, v2, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v2, "city"

    const-string v3, "gb2312"

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/baidu/mapapi/Mj;->sendBundle(Landroid/os/Bundle;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public goToPoiPage(I)I
    .locals 4

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v2, "page_num"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v2, "cnt"

    sget v3, Lcom/baidu/mapapi/MKSearch;->b:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v2, "page_num"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/baidu/mapapi/Mj;->sendBundle(Landroid/os/Bundle;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Lcom/baidu/mapapi/BMapManager;Lcom/baidu/mapapi/MKSearchListener;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p2, :cond_2

    iget-object v2, p1, Lcom/baidu/mapapi/BMapManager;->a:Lcom/baidu/mapapi/Mj;

    invoke-virtual {v2, p2}, Lcom/baidu/mapapi/Mj;->a(Lcom/baidu/mapapi/MKSearchListener;)V

    :cond_2
    invoke-static {}, Lcom/baidu/mapapi/Mj;->initSearchCC()I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public offlineSearch(I)I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    :goto_0
    iget-object v1, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v2, "act"

    const v3, 0xa8009b

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v2, "opt"

    const v3, 0xa8003c

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v2, "cityid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget v1, Lcom/baidu/mapapi/Mj;->i:I

    const/16 v2, 0xb4

    if-gt v1, v2, :cond_2

    iget-object v1, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v2, "uid"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_1
    iget-object v1, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/baidu/mapapi/Mj;->sendBundle(Landroid/os/Bundle;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, -0x1

    :cond_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v2, "uid"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public poiDetailSearch(Ljava/lang/String;)I
    .locals 5

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "act"

    const v4, 0xa8009b

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "opt"

    const v4, 0xa80041

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "uid"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "key"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "d_data_type"

    const-string v4, "cater"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "page_num"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "cnt"

    sget v4, Lcom/baidu/mapapi/MKSearch;->b:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v2}, Lcom/baidu/mapapi/Mj;->sendBundle(Landroid/os/Bundle;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public poiMultiSearchInbounds([Ljava/lang/String;Lcom/baidu/mapapi/GeoPoint;Lcom/baidu/mapapi/GeoPoint;)I
    .locals 7

    const/16 v6, 0x63

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    array-length v0, p1

    const/4 v3, 0x2

    if-lt v0, v3, :cond_3

    array-length v0, p1

    const/16 v3, 0xa

    if-le v0, v3, :cond_4

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    if-nez v0, :cond_5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    :goto_2
    array-length v4, p1

    if-ge v0, v4, :cond_a

    aget-object v4, p1, v0

    if-nez v4, :cond_6

    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    goto :goto_1

    :cond_6
    aget-object v4, p1, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v6, :cond_7

    const-string v5, "$$"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    move v1, v2

    goto :goto_0

    :cond_8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    if-eq v0, v4, :cond_9

    const-string v4, "$$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v6, :cond_b

    move v1, v2

    goto :goto_0

    :cond_b
    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v4, "act"

    const v5, 0xa8009b

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v4, "opt"

    const v5, 0xa8003f

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v4, "key"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v3, "page_num"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v3, "cnt"

    sget v4, Lcom/baidu/mapapi/MKSearch;->b:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v3, "start_x"

    invoke-virtual {p2}, Lcom/baidu/mapapi/GeoPoint;->getLongitudeE6()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v3, "start_y"

    invoke-virtual {p2}, Lcom/baidu/mapapi/GeoPoint;->getLatitudeE6()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v3, "end_x"

    invoke-virtual {p3}, Lcom/baidu/mapapi/GeoPoint;->getLongitudeE6()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v3, "end_y"

    invoke-virtual {p3}, Lcom/baidu/mapapi/GeoPoint;->getLatitudeE6()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v3, "key_num"

    array-length v4, p1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/baidu/mapapi/Mj;->sendBundle(Landroid/os/Bundle;)I

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    goto/16 :goto_0
.end method

.method public poiMultiSearchNearBy([Ljava/lang/String;Lcom/baidu/mapapi/GeoPoint;I)I
    .locals 8

    const/16 v7, 0x63

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    if-gtz p3, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    array-length v0, p1

    const/4 v3, 0x2

    if-lt v0, v3, :cond_4

    array-length v0, p1

    const/16 v3, 0xa

    if-le v0, v3, :cond_5

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    if-nez v0, :cond_6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    :goto_2
    array-length v4, p1

    if-ge v0, v4, :cond_b

    aget-object v4, p1, v0

    if-nez v4, :cond_7

    move v1, v2

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    goto :goto_1

    :cond_7
    aget-object v4, p1, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v7, :cond_8

    aget-object v5, p1, v0

    const-string v6, "$$"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    move v1, v2

    goto :goto_0

    :cond_9
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    if-eq v0, v4, :cond_a

    const-string v4, "$$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v7, :cond_c

    move v1, v2

    goto :goto_0

    :cond_c
    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v4, "act"

    const v5, 0xa8009b

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v4, "opt"

    const v5, 0xa8003f

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v4, "key"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v3, "start_x"

    invoke-virtual {p2}, Lcom/baidu/mapapi/GeoPoint;->getLongitudeE6()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v3, "start_y"

    invoke-virtual {p2}, Lcom/baidu/mapapi/GeoPoint;->getLatitudeE6()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v3, "radius"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v3, "page_num"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v3, "cnt"

    sget v4, Lcom/baidu/mapapi/MKSearch;->b:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v3, "key_num"

    array-length v4, p1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/baidu/mapapi/Mj;->sendBundle(Landroid/os/Bundle;)I

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    goto/16 :goto_0
.end method

.method public poiSearchInCity(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x10

    if-gt v4, v5, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x63

    if-gt v4, v5, :cond_0

    iget-object v4, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    if-nez v4, :cond_3

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    :goto_1
    iget-object v4, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v5, "act"

    const v6, 0xa8009b

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v5, "opt"

    const v6, 0xa80035

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_0
    iget-object v4, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v5, "city"

    const-string v6, "gb2312"

    invoke-virtual {v2, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v2, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v4, "key"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v3, "page_num"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v3, "cnt"

    sget v4, Lcom/baidu/mapapi/MKSearch;->b:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/baidu/mapapi/Mj;->sendBundle(Landroid/os/Bundle;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->clear()V

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v4, "MKSearch poiSearchInCity:"

    const-string v5, "translate city error!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "MKSearch poiSearchInCity:"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public poiSearchInbounds(Ljava/lang/String;Lcom/baidu/mapapi/GeoPoint;Lcom/baidu/mapapi/GeoPoint;)I
    .locals 6

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x63

    if-gt v3, v4, :cond_0

    iget-object v3, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    if-nez v3, :cond_2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    :goto_1
    iget-object v3, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v4, "act"

    const v5, 0xa8009b

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v4, "opt"

    const v5, 0xa80038

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v4, "key"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v3, "page_num"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v3, "cnt"

    sget v4, Lcom/baidu/mapapi/MKSearch;->b:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v3, "start_x"

    invoke-virtual {p2}, Lcom/baidu/mapapi/GeoPoint;->getLongitudeE6()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v3, "start_y"

    invoke-virtual {p2}, Lcom/baidu/mapapi/GeoPoint;->getLatitudeE6()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v3, "end_x"

    invoke-virtual {p3}, Lcom/baidu/mapapi/GeoPoint;->getLongitudeE6()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v3, "end_y"

    invoke-virtual {p3}, Lcom/baidu/mapapi/GeoPoint;->getLatitudeE6()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/baidu/mapapi/Mj;->sendBundle(Landroid/os/Bundle;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->clear()V

    goto :goto_1
.end method

.method public poiSearchNearBy(Ljava/lang/String;Lcom/baidu/mapapi/GeoPoint;I)I
    .locals 6

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-lez p3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x63

    if-gt v3, v4, :cond_0

    iget-object v3, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    if-nez v3, :cond_2

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    :goto_1
    iget-object v3, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v4, "act"

    const v5, 0xa8009b

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v4, "opt"

    const v5, 0xa80038

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v4, "key"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v3, "start_x"

    invoke-virtual {p2}, Lcom/baidu/mapapi/GeoPoint;->getLongitudeE6()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v3, "start_y"

    invoke-virtual {p2}, Lcom/baidu/mapapi/GeoPoint;->getLatitudeE6()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v3, "radius"

    invoke-virtual {v2, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v3, "page_num"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v3, "cnt"

    sget v4, Lcom/baidu/mapapi/MKSearch;->b:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/baidu/mapapi/Mj;->sendBundle(Landroid/os/Bundle;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->clear()V

    goto :goto_1
.end method

.method public rGCShareUrlSearch(Lcom/baidu/mapapi/GeoPoint;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    const/16 v5, 0x63

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v5, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v5, :cond_0

    iget-object v4, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    if-nez v4, :cond_2

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    :goto_1
    iget-object v4, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v5, "act"

    const v6, 0xa8009b

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v5, "opt"

    const v6, 0xa8003e

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v5, "key"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v5, "cnt"

    sget v6, Lcom/baidu/mapapi/MKSearch;->b:I

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v5, "page_num"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v5, "x"

    invoke-virtual {p1}, Lcom/baidu/mapapi/GeoPoint;->getLongitudeE6()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v5, "y"

    invoke-virtual {p1}, Lcom/baidu/mapapi/GeoPoint;->getLatitudeE6()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v5, "name"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v4, "addr"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/baidu/mapapi/Mj;->sendBundle(Landroid/os/Bundle;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->clear()V

    goto :goto_1
.end method

.method public reverseGeocode(Lcom/baidu/mapapi/GeoPoint;)I
    .locals 4

    const/4 v0, -0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    if-nez v1, :cond_2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    :goto_1
    iget-object v1, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v2, "act"

    const v3, 0xa8009b

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v2, "opt"

    const v3, 0xa8003d

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v2, "x"

    invoke-virtual {p1}, Lcom/baidu/mapapi/GeoPoint;->getLongitudeE6()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v2, "y"

    invoke-virtual {p1}, Lcom/baidu/mapapi/GeoPoint;->getLatitudeE6()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/baidu/mapapi/Mj;->sendBundle(Landroid/os/Bundle;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->clear()V

    goto :goto_1
.end method

.method public setDrivingPolicy(I)I
    .locals 1

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iput p1, p0, Lcom/baidu/mapapi/MKSearch;->d:I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTransitPolicy(I)I
    .locals 1

    const/4 v0, 0x6

    if-gt p1, v0, :cond_0

    const/4 v0, 0x3

    if-ge p1, v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iput p1, p0, Lcom/baidu/mapapi/MKSearch;->c:I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public suggestionSearch(Ljava/lang/String;)I
    .locals 5

    const/4 v0, -0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x63

    if-gt v2, v3, :cond_0

    iget-object v2, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    if-nez v2, :cond_2

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    :goto_1
    iget-object v2, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v3, "act"

    const v4, 0xa8280d

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v3, "opt"

    const v4, 0xa8003b

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v3, "key"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/baidu/mapapi/Mj;->sendBundle(Landroid/os/Bundle;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->clear()V

    goto :goto_1
.end method

.method public transitSearch(Ljava/lang/String;Lcom/baidu/mapapi/MKPlanNode;Lcom/baidu/mapapi/MKPlanNode;)I
    .locals 8

    const/16 v7, 0x63

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v3, -0x1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x1f

    if-le v0, v4, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    if-nez v0, :cond_5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    :goto_1
    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v4, "act"

    const v5, 0xa827ab

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v4, "opt"

    const v5, 0xa82745

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v4, "city"

    const-string v5, "gb2312"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v0, p2, Lcom/baidu/mapapi/MKPlanNode;->pt:Lcom/baidu/mapapi/GeoPoint;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v4, "start_x"

    iget-object v5, p2, Lcom/baidu/mapapi/MKPlanNode;->pt:Lcom/baidu/mapapi/GeoPoint;

    invoke-virtual {v5}, Lcom/baidu/mapapi/GeoPoint;->getLongitudeE6()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v4, "start_y"

    iget-object v5, p2, Lcom/baidu/mapapi/MKPlanNode;->pt:Lcom/baidu/mapapi/GeoPoint;

    invoke-virtual {v5}, Lcom/baidu/mapapi/GeoPoint;->getLatitudeE6()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v0, v1

    :goto_3
    iget-object v4, p2, Lcom/baidu/mapapi/MKPlanNode;->name:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p2, Lcom/baidu/mapapi/MKPlanNode;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v7, :cond_4

    :try_start_1
    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v4, "start_name"

    iget-object v5, p2, Lcom/baidu/mapapi/MKPlanNode;->name:Ljava/lang/String;

    const-string v6, "gb2312"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    move v0, v1

    :cond_4
    if-nez v0, :cond_6

    move v2, v3

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v4, "MKSearch transitSearch:"

    const-string v5, "translate city error!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "MKSearch transitSearch:"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v4, "MKSearch transitSearch:"

    const-string v5, "translate start name error!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "MKSearch transitSearch:"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    iget-object v0, p3, Lcom/baidu/mapapi/MKPlanNode;->pt:Lcom/baidu/mapapi/GeoPoint;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v4, "end_x"

    iget-object v5, p3, Lcom/baidu/mapapi/MKPlanNode;->pt:Lcom/baidu/mapapi/GeoPoint;

    invoke-virtual {v5}, Lcom/baidu/mapapi/GeoPoint;->getLongitudeE6()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v4, "end_y"

    iget-object v5, p3, Lcom/baidu/mapapi/MKPlanNode;->pt:Lcom/baidu/mapapi/GeoPoint;

    invoke-virtual {v5}, Lcom/baidu/mapapi/GeoPoint;->getLatitudeE6()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v0, v1

    :goto_5
    iget-object v4, p3, Lcom/baidu/mapapi/MKPlanNode;->name:Ljava/lang/String;

    if-eqz v4, :cond_7

    iget-object v4, p3, Lcom/baidu/mapapi/MKPlanNode;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v7, :cond_7

    :try_start_2
    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v4, "end_name"

    iget-object v5, p3, Lcom/baidu/mapapi/MKPlanNode;->name:Ljava/lang/String;

    const-string v6, "gb2312"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_6
    move v0, v1

    :cond_7
    if-nez v0, :cond_8

    move v2, v3

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string v4, "MKSearch transitSearch:"

    const-string v5, "translate end name error!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "MKSearch transitSearch:"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_8
    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v1, "policy"

    iget v4, p0, Lcom/baidu/mapapi/MKSearch;->c:I

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/baidu/mapapi/Mj;->sendBundle(Landroid/os/Bundle;)I

    move-result v0

    if-nez v0, :cond_1

    move v2, v3

    goto/16 :goto_0

    :cond_9
    move v0, v2

    goto :goto_5

    :cond_a
    move v0, v2

    goto/16 :goto_3
.end method

.method public walkingSearch(Ljava/lang/String;Lcom/baidu/mapapi/MKPlanNode;Ljava/lang/String;Lcom/baidu/mapapi/MKPlanNode;)I
    .locals 9

    const/16 v8, 0x63

    const/16 v7, 0x1f

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v3, -0x1

    if-eqz p2, :cond_0

    if-nez p4, :cond_2

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    return v2

    :cond_2
    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    if-nez v0, :cond_4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    :goto_1
    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v4, "act"

    const v5, 0xa827ab

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v4, "opt"

    const v5, 0xa82747

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p2, Lcom/baidu/mapapi/MKPlanNode;->pt:Lcom/baidu/mapapi/GeoPoint;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v4, "start_x"

    iget-object v5, p2, Lcom/baidu/mapapi/MKPlanNode;->pt:Lcom/baidu/mapapi/GeoPoint;

    invoke-virtual {v5}, Lcom/baidu/mapapi/GeoPoint;->getLongitudeE6()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v4, "start_y"

    iget-object v5, p2, Lcom/baidu/mapapi/MKPlanNode;->pt:Lcom/baidu/mapapi/GeoPoint;

    invoke-virtual {v5}, Lcom/baidu/mapapi/GeoPoint;->getLatitudeE6()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v0, v1

    :goto_2
    iget-object v4, p2, Lcom/baidu/mapapi/MKPlanNode;->name:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p2, Lcom/baidu/mapapi/MKPlanNode;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v8, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v4, "start_name"

    iget-object v5, p2, Lcom/baidu/mapapi/MKPlanNode;->name:Ljava/lang/String;

    const-string v6, "gb2312"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v7, :cond_5

    :try_start_1
    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v4, "start_city"

    const-string v5, "gb2312"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    move v0, v1

    :cond_3
    if-nez v0, :cond_6

    move v2, v3

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v4, "MKSearch walkingSearch:"

    const-string v5, "translate start name error!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "MKSearch walkingSearch:"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v4, "MKSearch walkingSearch:"

    const-string v5, "translate start city error!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "MKSearch walkingSearch:"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    move v2, v3

    goto/16 :goto_0

    :cond_6
    iget-object v0, p4, Lcom/baidu/mapapi/MKPlanNode;->pt:Lcom/baidu/mapapi/GeoPoint;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v4, "end_x"

    iget-object v5, p4, Lcom/baidu/mapapi/MKPlanNode;->pt:Lcom/baidu/mapapi/GeoPoint;

    invoke-virtual {v5}, Lcom/baidu/mapapi/GeoPoint;->getLongitudeE6()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v4, "end_y"

    iget-object v5, p4, Lcom/baidu/mapapi/MKPlanNode;->pt:Lcom/baidu/mapapi/GeoPoint;

    invoke-virtual {v5}, Lcom/baidu/mapapi/GeoPoint;->getLatitudeE6()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move v0, v1

    :goto_5
    iget-object v4, p4, Lcom/baidu/mapapi/MKPlanNode;->name:Ljava/lang/String;

    if-eqz v4, :cond_7

    iget-object v4, p4, Lcom/baidu/mapapi/MKPlanNode;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v8, :cond_7

    :try_start_2
    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v4, "end_name"

    iget-object v5, p4, Lcom/baidu/mapapi/MKPlanNode;->name:Ljava/lang/String;

    const-string v6, "gb2312"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_6
    if-eqz p3, :cond_8

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v7, :cond_8

    :try_start_3
    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    const-string v4, "end_city"

    const-string v5, "gb2312"

    invoke-virtual {p3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_7
    move v0, v1

    :cond_7
    if-nez v0, :cond_9

    move v2, v3

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string v4, "MKSearch walkingSearch:"

    const-string v5, "translate end name error!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "MKSearch walkingSearch:"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_3
    move-exception v0

    const-string v4, "MKSearch walkingSearch:"

    const-string v5, "translate end city error!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "MKSearch walkingSearch:"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_8
    move v2, v3

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/baidu/mapapi/MKSearch;->a:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/baidu/mapapi/Mj;->sendBundle(Landroid/os/Bundle;)I

    move-result v0

    if-nez v0, :cond_1

    move v2, v3

    goto/16 :goto_0

    :cond_a
    move v0, v2

    goto :goto_5

    :cond_b
    move v0, v2

    goto/16 :goto_2
.end method
