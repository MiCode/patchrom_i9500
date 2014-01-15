.class Lcom/baidu/mapapi/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/f$a;
    }
.end annotation


# instance fields
.field a:Landroid/location/Location;

.field private b:Landroid/location/LocationManager;

.field private c:Landroid/location/LocationListener;

.field private d:Landroid/content/Context;

.field private e:Lcom/baidu/mapapi/f$a;

.field private f:I

.field private g:Landroid/location/GpsStatus;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/f;->b:Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/baidu/mapapi/f;->c:Landroid/location/LocationListener;

    iput-object v0, p0, Lcom/baidu/mapapi/f;->a:Landroid/location/Location;

    iput-object v0, p0, Lcom/baidu/mapapi/f;->e:Lcom/baidu/mapapi/f$a;

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mapapi/f;->f:I

    iput-object p1, p0, Lcom/baidu/mapapi/f;->d:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapapi/f;I)I
    .locals 0

    iput p1, p0, Lcom/baidu/mapapi/f;->f:I

    return p1
.end method

.method static synthetic a(Lcom/baidu/mapapi/f;Landroid/location/GpsStatus;)Landroid/location/GpsStatus;
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/f;->g:Landroid/location/GpsStatus;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/mapapi/f;)Landroid/location/LocationManager;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/f;->b:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/mapapi/f;Landroid/location/LocationManager;)Landroid/location/LocationManager;
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/f;->b:Landroid/location/LocationManager;

    return-object p1
.end method

.method static synthetic b(Lcom/baidu/mapapi/f;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/f;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/mapapi/f;)Landroid/location/GpsStatus;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/f;->g:Landroid/location/GpsStatus;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/mapapi/f;)I
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/f;->f:I

    return v0
.end method


# virtual methods
.method a(IIIILjava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "%d|%d|%d|%d"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/16 v0, 0xa

    const/4 v7, 0x1

    const/4 v4, 0x0

    const-string v2, ""

    const-string v1, ""

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v0, :cond_0

    move v1, v0

    :cond_0
    move v3, v4

    :goto_0
    if-ge v3, v1, :cond_3

    if-nez v3, :cond_2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    if-nez v0, :cond_1

    move-object v0, v2

    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v0

    goto :goto_0

    :cond_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v5, ":"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    const-string v5, ";%d;"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    if-nez v0, :cond_4

    :cond_3
    return-object v2

    :cond_4
    const-string v0, "|"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v5, ":"

    const-string v6, ""

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    const-string v5, ";%d;"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method a()V
    .locals 8

    const-wide/16 v0, 0x0

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/baidu/mapapi/f;->d:Landroid/content/Context;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v7, 0x0

    move-wide v2, v0

    move v5, v4

    move v6, v4

    invoke-static/range {v0 .. v7}, Lcom/baidu/mapapi/Mj;->UpdataGPS(DDFFFI)V

    iget-object v0, p0, Lcom/baidu/mapapi/f;->c:Landroid/location/LocationListener;

    if-nez v0, :cond_2

    new-instance v0, Lcom/baidu/mapapi/f$1;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/f$1;-><init>(Lcom/baidu/mapapi/f;)V

    iput-object v0, p0, Lcom/baidu/mapapi/f;->c:Landroid/location/LocationListener;

    :cond_2
    iget-object v0, p0, Lcom/baidu/mapapi/f;->b:Landroid/location/LocationManager;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/baidu/mapapi/f;->d:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/baidu/mapapi/f;->b:Landroid/location/LocationManager;

    :cond_3
    iget-object v0, p0, Lcom/baidu/mapapi/f;->b:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mapapi/f;->b:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/baidu/mapapi/f;->c:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    new-instance v0, Lcom/baidu/mapapi/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/mapapi/f$a;-><init>(Lcom/baidu/mapapi/f;Lcom/baidu/mapapi/f$1;)V

    iput-object v0, p0, Lcom/baidu/mapapi/f;->e:Lcom/baidu/mapapi/f$a;

    iget-object v0, p0, Lcom/baidu/mapapi/f;->b:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/baidu/mapapi/f;->e:Lcom/baidu/mapapi/f$a;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "InitGPS"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(IIJ)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/baidu/mapapi/f;->a()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/baidu/mapapi/f;->b()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1388
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v1, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v2, v1

    :goto_0
    if-lt v3, v1, :cond_1

    if-eqz v2, :cond_1

    move v4, v5

    move v2, v5

    :goto_1
    if-ge v4, v3, :cond_0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v6, v0, Landroid/net/wifi/ScanResult;->level:I

    add-int/lit8 v0, v4, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    if-ge v6, v0, :cond_2

    add-int/lit8 v0, v4, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    add-int/lit8 v2, v4, 0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v2, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v4, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_2
.end method

.method public a(Ljava/util/List;Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)Z"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, p2, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v6, :cond_3

    if-nez v7, :cond_4

    :cond_3
    move v0, v3

    goto :goto_0

    :cond_4
    move v5, v3

    move v1, v3

    :goto_1
    if-ge v5, v6, :cond_7

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v8, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-nez v8, :cond_5

    move v0, v1

    :goto_2
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v0

    goto :goto_1

    :cond_5
    move v4, v3

    :goto_3
    if-ge v4, v7, :cond_9

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 v0, v1, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_3

    :cond_7
    div-int/lit8 v0, v6, 0x2

    if-lt v1, v0, :cond_8

    move v0, v2

    goto :goto_0

    :cond_8
    move v0, v3

    goto :goto_0

    :cond_9
    move v0, v1

    goto :goto_2
.end method

.method public b(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/16 v0, 0xa

    const-string v2, ""

    const-string v1, ""

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v0, :cond_0

    move v1, v0

    :cond_0
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_3

    if-nez v3, :cond_2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    if-nez v0, :cond_1

    move-object v0, v2

    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v0

    goto :goto_0

    :cond_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v4, ":"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    if-nez v0, :cond_4

    :cond_3
    return-object v2

    :cond_4
    const-string v0, "|"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v4, ":"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method b()V
    .locals 8

    const-wide/16 v0, 0x0

    const/4 v4, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/baidu/mapapi/f;->b:Landroid/location/LocationManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/baidu/mapapi/f;->b:Landroid/location/LocationManager;

    iget-object v3, p0, Lcom/baidu/mapapi/f;->c:Landroid/location/LocationListener;

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v7, 0x0

    move-wide v2, v0

    move v5, v4

    move v6, v4

    invoke-static/range {v0 .. v7}, Lcom/baidu/mapapi/Mj;->UpdataGPS(DDFFFI)V

    return-void

    :catch_0
    move-exception v2

    const-string v3, "UnInitGPS"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
