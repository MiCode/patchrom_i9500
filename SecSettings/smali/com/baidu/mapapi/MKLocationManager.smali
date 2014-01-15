.class public Lcom/baidu/mapapi/MKLocationManager;
.super Ljava/lang/Object;


# static fields
.field public static final MK_COORDINATE_BAIDU09:I = 0x2

.field public static final MK_COORDINATE_GCJ:I = 0x1

.field public static final MK_COORDINATE_WGS84:I = 0x0

.field public static final MK_GPS_PROVIDER:I = 0x0

.field public static final MK_NETWORK_PROVIDER:I = 0x1


# instance fields
.field private a:Landroid/location/Location;

.field private b:Landroid/location/Location;

.field private c:J

.field private d:J

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapapi/LocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/SensorEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/hardware/SensorEventListener;


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/baidu/mapapi/MKLocationManager;->a:Landroid/location/Location;

    iput-object v2, p0, Lcom/baidu/mapapi/MKLocationManager;->b:Landroid/location/Location;

    const-wide/32 v0, 0xd2f00

    iput-wide v0, p0, Lcom/baidu/mapapi/MKLocationManager;->c:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/mapapi/MKLocationManager;->d:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/MKLocationManager;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/MKLocationManager;->f:Ljava/util/List;

    iput-object v2, p0, Lcom/baidu/mapapi/MKLocationManager;->g:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method static synthetic a(Lcom/baidu/mapapi/MKLocationManager;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MKLocationManager;->f:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapapi/MKLocationManager;->b:Landroid/location/Location;

    return-void
.end method

.method a(Landroid/hardware/SensorEventListener;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/mapapi/MKLocationManager;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/baidu/mapapi/MKLocationManager;->d()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/baidu/mapapi/MKLocationManager;->f:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/baidu/mapapi/MKLocationManager;->e()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/baidu/mapapi/MKLocationManager;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method a(Lcom/baidu/mapapi/BMapManager;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sput-boolean v1, Lcom/baidu/mapapi/Mj;->r:Z

    iget-object v2, p0, Lcom/baidu/mapapi/MKLocationManager;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/baidu/mapapi/Mj;->InitLocationCC()I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method b()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/baidu/mapapi/Mj;->DisableProviderCC(I)I

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/baidu/mapapi/Mj;->DisableProviderCC(I)I

    return-void
.end method

.method b(Landroid/hardware/SensorEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MKLocationManager;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/mapapi/MKLocationManager;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/baidu/mapapi/MKLocationManager;->e()V

    :cond_0
    return-void
.end method

.method c()V
    .locals 11

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/baidu/mapapi/MKLocationManager;->getLocationInfo()Landroid/location/Location;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    if-eqz v2, :cond_0

    iget-wide v5, p0, Lcom/baidu/mapapi/MKLocationManager;->d:J

    sub-long v5, v3, v5

    iget-wide v7, p0, Lcom/baidu/mapapi/MKLocationManager;->c:J

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    cmp-long v1, v5, v7

    if-ltz v1, :cond_0

    iput-wide v3, p0, Lcom/baidu/mapapi/MKLocationManager;->d:J

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/baidu/mapapi/MKLocationManager;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mapapi/MKLocationManager;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/LocationListener;

    invoke-interface {v0, v2}, Lcom/baidu/mapapi/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    iput-object v2, p0, Lcom/baidu/mapapi/MKLocationManager;->b:Landroid/location/Location;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/baidu/mapapi/MKLocationManager;->b:Landroid/location/Location;

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/baidu/mapapi/MKLocationManager;->b:Landroid/location/Location;

    invoke-virtual {v2, v1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v1

    float-to-double v5, v1

    const-wide v7, 0x3fb999999999999aL

    cmpl-double v1, v5, v7

    if-gez v1, :cond_1

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    iget-object v5, p0, Lcom/baidu/mapapi/MKLocationManager;->b:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    cmpl-float v1, v1, v5

    if-nez v1, :cond_1

    invoke-virtual {v2}, Landroid/location/Location;->getBearing()F

    move-result v1

    iget-object v5, p0, Lcom/baidu/mapapi/MKLocationManager;->b:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getBearing()F

    move-result v5

    cmpl-float v1, v1, v5

    if-nez v1, :cond_1

    invoke-virtual {v2}, Landroid/location/Location;->getSpeed()F

    move-result v1

    iget-object v5, p0, Lcom/baidu/mapapi/MKLocationManager;->b:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getSpeed()F

    move-result v5

    cmpl-float v1, v1, v5

    if-nez v1, :cond_1

    invoke-virtual {v2}, Landroid/location/Location;->getAltitude()D

    move-result-wide v5

    iget-object v1, p0, Lcom/baidu/mapapi/MKLocationManager;->b:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v7

    cmpl-double v1, v5, v7

    if-eqz v1, :cond_2

    :cond_1
    iput-wide v3, p0, Lcom/baidu/mapapi/MKLocationManager;->d:J

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/baidu/mapapi/MKLocationManager;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mapapi/MKLocationManager;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/LocationListener;

    invoke-interface {v0, v2}, Lcom/baidu/mapapi/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    iput-object v2, p0, Lcom/baidu/mapapi/MKLocationManager;->b:Landroid/location/Location;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    return-void
.end method

.method d()Z
    .locals 4

    const/4 v3, 0x3

    const/4 v1, 0x0

    sget-object v0, Lcom/baidu/mapapi/Mj;->e:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/baidu/mapapi/MKLocationManager$1;

    invoke-direct {v1, p0}, Lcom/baidu/mapapi/MKLocationManager$1;-><init>(Lcom/baidu/mapapi/MKLocationManager;)V

    iput-object v1, p0, Lcom/baidu/mapapi/MKLocationManager;->g:Landroid/hardware/SensorEventListener;

    iget-object v1, p0, Lcom/baidu/mapapi/MKLocationManager;->g:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    goto :goto_0
.end method

.method public disableProvider(I)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/baidu/mapapi/Mj;->DisableProviderCC(I)I

    move-result v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_3

    sput-boolean v0, Lcom/baidu/mapapi/Mj;->q:Z

    :cond_2
    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    if-ne p1, v1, :cond_2

    sput-boolean v0, Lcom/baidu/mapapi/Mj;->r:Z

    goto :goto_1
.end method

.method e()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/mapapi/MKLocationManager;->g:Landroid/hardware/SensorEventListener;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/baidu/mapapi/Mj;->e:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/mapapi/MKLocationManager;->g:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method public enableProvider(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/baidu/mapapi/Mj;->EnableProviderCC(I)I

    move-result v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_3

    sput-boolean v1, Lcom/baidu/mapapi/Mj;->q:Z

    :cond_2
    :goto_1
    move v0, v1

    goto :goto_0

    :cond_3
    if-ne p1, v1, :cond_2

    sput-boolean v1, Lcom/baidu/mapapi/Mj;->r:Z

    goto :goto_1
.end method

.method public getLocationInfo()Landroid/location/Location;
    .locals 4

    invoke-static {}, Lcom/baidu/mapapi/Mj;->GetGPSStatus()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "t"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    new-instance v1, Landroid/location/Location;

    const-string v2, "network"

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/baidu/mapapi/MKLocationManager;->a:Landroid/location/Location;

    iget-object v1, p0, Lcom/baidu/mapapi/MKLocationManager;->a:Landroid/location/Location;

    const-string v2, "y"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    iget-object v1, p0, Lcom/baidu/mapapi/MKLocationManager;->a:Landroid/location/Location;

    const-string v2, "x"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    iget-object v1, p0, Lcom/baidu/mapapi/MKLocationManager;->a:Landroid/location/Location;

    const-string v2, "r"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/location/Location;->setAccuracy(F)V

    :goto_1
    iget-object v0, p0, Lcom/baidu/mapapi/MKLocationManager;->a:Landroid/location/Location;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/baidu/mapapi/Mj;->a:Lcom/baidu/mapapi/f;

    iget-object v1, v1, Lcom/baidu/mapapi/f;->a:Landroid/location/Location;

    iput-object v1, p0, Lcom/baidu/mapapi/MKLocationManager;->a:Landroid/location/Location;

    iget-object v1, p0, Lcom/baidu/mapapi/MKLocationManager;->a:Landroid/location/Location;

    const-string v2, "y"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    iget-object v1, p0, Lcom/baidu/mapapi/MKLocationManager;->a:Landroid/location/Location;

    const-string v2, "x"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    float-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    goto :goto_1
.end method

.method public getNotifyInternal()Landroid/os/Bundle;
    .locals 1

    invoke-static {}, Lcom/baidu/mapapi/Mj;->GetNotifyInternal()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public removeUpdates(Lcom/baidu/mapapi/LocationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MKLocationManager;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestLocationUpdates(Lcom/baidu/mapapi/LocationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MKLocationManager;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setLocationCoordinateType(I)V
    .locals 0

    sput p1, Lcom/baidu/mapapi/Mj;->c:I

    invoke-static {p1}, Lcom/baidu/mapapi/Mj;->SetLocationCoordinateType(I)V

    return-void
.end method

.method public setNotifyInternal(II)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lt p1, p2, :cond_1

    if-ltz p2, :cond_1

    int-to-long v2, p1

    iput-wide v2, p0, Lcom/baidu/mapapi/MKLocationManager;->c:J

    invoke-static {p1, p2}, Lcom/baidu/mapapi/Mj;->SetNotifyInternal(II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
