.class public abstract Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;
.super Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProvider;
.source "RawGpsProvider.java"


# static fields
.field private static final GPS_MIN_DISTANCE:F = 0.0f

.field private static final GPS_MIN_TIME:J = 0x3e8L


# instance fields
.field private mGpsManager:Landroid/location/LocationManager;

.field private final mGpsStatusListener:Landroid/location/GpsStatus$Listener;

.field private final mLocationListener:Landroid/location/LocationListener;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V
    .locals 1
    .parameter "context"
    .parameter "looper"
    .parameter "observable"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V

    .line 61
    new-instance v0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$1;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$1;-><init>(Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;)V

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->mLocationListener:Landroid/location/LocationListener;

    .line 147
    new-instance v0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$2;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$2;-><init>(Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;)V

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->mGpsStatusListener:Landroid/location/GpsStatus$Listener;

    .line 58
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;)Landroid/hardware/contextaware/manager/ContextBean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;)Landroid/hardware/contextaware/manager/ContextBean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;)Landroid/hardware/contextaware/manager/ContextBean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;)Landroid/hardware/contextaware/manager/ContextBean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;)Landroid/hardware/contextaware/manager/ContextBean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;)Landroid/hardware/contextaware/manager/ContextBean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;)Landroid/hardware/contextaware/manager/ContextBean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;)Landroid/hardware/contextaware/manager/ContextBean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;)Landroid/hardware/contextaware/manager/ContextBean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;)Landroid/hardware/contextaware/manager/ContextBean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;)Landroid/hardware/contextaware/manager/ContextBean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;)Landroid/hardware/contextaware/manager/ContextBean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;)Landroid/hardware/contextaware/manager/ContextBean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;)Landroid/hardware/contextaware/manager/ContextBean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;)Landroid/hardware/contextaware/manager/ContextBean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;)Landroid/hardware/contextaware/manager/ContextBean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;)Ljava/util/Iterator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->getGpsSatellites()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method private getGpsSatellites()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 292
    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->mGpsManager:Landroid/location/LocationManager;

    if-nez v1, :cond_0

    .line 296
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->mGpsManager:Landroid/location/LocationManager;

    invoke-virtual {v1, v0}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public disable()V
    .locals 0

    .prologue
    .line 219
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->unregisterGpsListener()V

    .line 220
    return-void
.end method

.method public enable()V
    .locals 4

    .prologue
    .line 204
    new-instance v0, Landroid/os/Handler;

    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$3;

    invoke-direct {v1, p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$3;-><init>(Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 210
    return-void
.end method

.method protected final getGpsManager()Landroid/location/LocationManager;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->mGpsManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method protected final getGpsStatusListener()Landroid/location/GpsStatus$Listener;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->mGpsStatusListener:Landroid/location/GpsStatus$Listener;

    return-object v0
.end method

.method protected abstract getLocationProvider()Ljava/lang/String;
.end method

.method protected final initializeManager()V
    .locals 2

    .prologue
    .line 262
    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 263
    const-string v0, "mContext is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->mGpsManager:Landroid/location/LocationManager;

    .line 269
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 270
    const-string v0, "cannot create the GpsManager object"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected registerGpsListener()V
    .locals 7

    .prologue
    .line 226
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->mGpsManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->getLocationProvider()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->mGpsManager:Landroid/location/LocationManager;

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->getLocationProvider()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->mLocationListener:Landroid/location/LocationListener;

    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    goto :goto_0
.end method

.method protected final terminateManager()V
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->mGpsManager:Landroid/location/LocationManager;

    .line 284
    return-void
.end method

.method protected unregisterGpsListener()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 244
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->mGpsManager:Landroid/location/LocationManager;

    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    goto :goto_0
.end method
