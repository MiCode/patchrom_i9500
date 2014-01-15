.class Lcom/baidu/mapapi/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/mapapi/f;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/mapapi/f;


# direct methods
.method constructor <init>(Lcom/baidu/mapapi/f;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/f$1;->a:Lcom/baidu/mapapi/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 10

    const/4 v7, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "NumSatellite"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    :cond_0
    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v4

    float-to-double v4, v4

    const-wide v8, 0x400ccccccccccccdL

    mul-double/2addr v4, v8

    double-to-float v4, v4

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v5

    invoke-static/range {v0 .. v7}, Lcom/baidu/mapapi/Mj;->UpdataGPS(DDFFFI)V

    iget-object v0, p0, Lcom/baidu/mapapi/f$1;->a:Lcom/baidu/mapapi/f;

    iput-object p1, v0, Lcom/baidu/mapapi/f;->a:Landroid/location/Location;

    :cond_2
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 8

    const-wide/16 v0, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-wide v2, v0

    move v5, v4

    move v6, v4

    invoke-static/range {v0 .. v7}, Lcom/baidu/mapapi/Mj;->UpdataGPS(DDFFFI)V

    iget-object v0, p0, Lcom/baidu/mapapi/f$1;->a:Lcom/baidu/mapapi/f;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/baidu/mapapi/f;->a:Landroid/location/Location;

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 8

    const-wide/16 v0, 0x0

    const/4 v4, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v7, 0x0

    move-wide v2, v0

    move v5, v4

    move v6, v4

    invoke-static/range {v0 .. v7}, Lcom/baidu/mapapi/Mj;->UpdataGPS(DDFFFI)V

    iget-object v0, p0, Lcom/baidu/mapapi/f$1;->a:Lcom/baidu/mapapi/f;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/baidu/mapapi/f;->a:Landroid/location/Location;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
