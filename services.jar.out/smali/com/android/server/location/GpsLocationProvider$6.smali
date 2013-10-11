.class Lcom/android/server/location/GpsLocationProvider$6;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0

    .prologue
    .line 1946
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$6;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    .line 1948
    iget-object v1, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .line 1949
    .local v1, scontext:Landroid/hardware/scontext/SContext;
    invoke-virtual {v1}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v2

    const/16 v3, 0xe

    if-ne v2, v3, :cond_0

    .line 1950
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getGyroTemperatureContext()Landroid/hardware/scontext/SContextGyroTemperature;

    move-result-object v0

    .line 1951
    .local v0, gyroTemperatureContext:Landroid/hardware/scontext/SContextGyroTemperature;
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$6;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mStarted:Z
    invoke-static {v2}, Lcom/android/server/location/GpsLocationProvider;->access$2100(Lcom/android/server/location/GpsLocationProvider;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1952
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider$6;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-virtual {v0}, Landroid/hardware/scontext/SContextGyroTemperature;->getGyroTemperature()D

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$6;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mBatteryTemp:D
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$600(Lcom/android/server/location/GpsLocationProvider;)D

    move-result-wide v5

    #calls: Lcom/android/server/location/GpsLocationProvider;->native_inject_sensor_data(DD)V
    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/server/location/GpsLocationProvider;->access$2200(Lcom/android/server/location/GpsLocationProvider;DD)V

    .line 1955
    .end local v0           #gyroTemperatureContext:Landroid/hardware/scontext/SContextGyroTemperature;
    :cond_0
    return-void
.end method
