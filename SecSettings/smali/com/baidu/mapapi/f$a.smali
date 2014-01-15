.class Lcom/baidu/mapapi/f$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/mapapi/f;


# direct methods
.method private constructor <init>(Lcom/baidu/mapapi/f;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/f$a;->a:Lcom/baidu/mapapi/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/mapapi/f;Lcom/baidu/mapapi/f$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/f$a;-><init>(Lcom/baidu/mapapi/f;)V

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 9

    const/4 v6, 0x3

    const/4 v7, 0x0

    const-wide/16 v0, 0x0

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v2, p0, Lcom/baidu/mapapi/f$a;->a:Lcom/baidu/mapapi/f;

    invoke-static {v2}, Lcom/baidu/mapapi/f;->a(Lcom/baidu/mapapi/f;)Landroid/location/LocationManager;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/baidu/mapapi/f$a;->a:Lcom/baidu/mapapi/f;

    iget-object v2, p0, Lcom/baidu/mapapi/f$a;->a:Lcom/baidu/mapapi/f;

    invoke-static {v2}, Lcom/baidu/mapapi/f;->b(Lcom/baidu/mapapi/f;)Landroid/content/Context;

    move-result-object v2

    const-string v5, "location"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    invoke-static {v3, v2}, Lcom/baidu/mapapi/f;->a(Lcom/baidu/mapapi/f;Landroid/location/LocationManager;)Landroid/location/LocationManager;

    :cond_0
    iget-object v2, p0, Lcom/baidu/mapapi/f$a;->a:Lcom/baidu/mapapi/f;

    invoke-static {v2}, Lcom/baidu/mapapi/f;->a(Lcom/baidu/mapapi/f;)Landroid/location/LocationManager;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/baidu/mapapi/f$a;->a:Lcom/baidu/mapapi/f;

    invoke-static {v2}, Lcom/baidu/mapapi/f;->c(Lcom/baidu/mapapi/f;)Landroid/location/GpsStatus;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/baidu/mapapi/f$a;->a:Lcom/baidu/mapapi/f;

    iget-object v3, p0, Lcom/baidu/mapapi/f$a;->a:Lcom/baidu/mapapi/f;

    invoke-static {v3}, Lcom/baidu/mapapi/f;->a(Lcom/baidu/mapapi/f;)Landroid/location/LocationManager;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/mapapi/f;->a(Lcom/baidu/mapapi/f;Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/baidu/mapapi/f$a;->a:Lcom/baidu/mapapi/f;

    invoke-static {v2}, Lcom/baidu/mapapi/f;->c(Lcom/baidu/mapapi/f;)Landroid/location/GpsStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v8, v7

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/GpsSatellite;

    invoke-virtual {v2}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v2

    if-eqz v2, :cond_5

    add-int/lit8 v2, v8, 0x1

    :goto_3
    move v8, v2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/baidu/mapapi/f$a;->a:Lcom/baidu/mapapi/f;

    invoke-static {v2}, Lcom/baidu/mapapi/f;->a(Lcom/baidu/mapapi/f;)Landroid/location/LocationManager;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mapapi/f$a;->a:Lcom/baidu/mapapi/f;

    invoke-static {v3}, Lcom/baidu/mapapi/f;->c(Lcom/baidu/mapapi/f;)Landroid/location/GpsStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    goto :goto_1

    :cond_3
    if-ge v8, v6, :cond_4

    iget-object v2, p0, Lcom/baidu/mapapi/f$a;->a:Lcom/baidu/mapapi/f;

    invoke-static {v2}, Lcom/baidu/mapapi/f;->d(Lcom/baidu/mapapi/f;)I

    move-result v2

    if-lt v2, v6, :cond_4

    move-wide v2, v0

    move v5, v4

    move v6, v4

    invoke-static/range {v0 .. v7}, Lcom/baidu/mapapi/Mj;->UpdataGPS(DDFFFI)V

    :cond_4
    iget-object v0, p0, Lcom/baidu/mapapi/f$a;->a:Lcom/baidu/mapapi/f;

    invoke-static {v0, v8}, Lcom/baidu/mapapi/f;->a(Lcom/baidu/mapapi/f;I)I

    goto/16 :goto_0

    :pswitch_2
    move-wide v2, v0

    move v5, v4

    move v6, v4

    invoke-static/range {v0 .. v7}, Lcom/baidu/mapapi/Mj;->UpdataGPS(DDFFFI)V

    goto/16 :goto_0

    :cond_5
    move v2, v8

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
