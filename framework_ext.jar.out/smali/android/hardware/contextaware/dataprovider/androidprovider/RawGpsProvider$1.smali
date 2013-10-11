.class Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$1;
.super Ljava/lang/Object;
.source "RawGpsProvider.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;


# direct methods
.method constructor <init>(Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$1;->this$0:Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 11
    .parameter "location"

    .prologue
    const/4 v8, 0x3

    const/4 v10, 0x1

    .line 82
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    .line 119
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$1;->this$0:Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;

    #calls: Landroid/hardware/contextaware/manager/ContextProvider;->getContextValueNames()[Ljava/lang/String;
    invoke-static {v4}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->access$000(Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;)[Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, names:[Ljava/lang/String;
    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$1;->this$0:Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;

    #calls: Landroid/hardware/contextaware/manager/ContextProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;
    invoke-static {v4}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->access$100(Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;)Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v4

    const-string v5, "SystemTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 90
    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$1;->this$0:Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;

    #calls: Landroid/hardware/contextaware/manager/ContextProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;
    invoke-static {v4}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->access$200(Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;)Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v4

    const-string v5, "TimeStamp"

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 92
    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$1;->this$0:Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;

    #calls: Landroid/hardware/contextaware/manager/ContextProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;
    invoke-static {v4}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->access$300(Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;)Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 93
    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$1;->this$0:Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;

    #calls: Landroid/hardware/contextaware/manager/ContextProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;
    invoke-static {v4}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->access$400(Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;)Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v4

    aget-object v5, v2, v10

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 94
    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$1;->this$0:Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;

    #calls: Landroid/hardware/contextaware/manager/ContextProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;
    invoke-static {v4}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->access$500(Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;)Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v5, v2, v5

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    .line 96
    array-length v4, v2

    if-le v4, v8, :cond_3

    .line 97
    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$1;->this$0:Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;

    #calls: Landroid/hardware/contextaware/manager/ContextProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;
    invoke-static {v4}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->access$600(Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;)Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v4

    aget-object v5, v2, v8

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    .line 98
    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$1;->this$0:Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;

    #calls: Landroid/hardware/contextaware/manager/ContextProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;
    invoke-static {v4}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->access$700(Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;)Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v4

    const/4 v5, 0x4

    aget-object v5, v2, v5

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v6

    float-to-double v6, v6

    const-wide v8, 0x400ccccccccccccdL

    mul-double/2addr v6, v8

    double-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    .line 100
    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$1;->this$0:Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;

    #calls: Landroid/hardware/contextaware/manager/ContextProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;
    invoke-static {v4}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->access$800(Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;)Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v4

    const/4 v5, 0x5

    aget-object v5, v2, v5

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    .line 102
    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$1;->this$0:Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;

    #calls: Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->getGpsSatellites()Ljava/util/Iterator;
    invoke-static {v4}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->access$900(Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;)Ljava/util/Iterator;

    move-result-object v0

    .line 103
    .local v0, gpsSatellites:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/location/GpsSatellite;>;"
    const/4 v1, 0x0

    .line 105
    .local v1, iSvCount:I
    if-eqz v0, :cond_2

    .line 106
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 107
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/GpsSatellite;

    .line 108
    .local v3, satellite:Landroid/location/GpsSatellite;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 114
    .end local v3           #satellite:Landroid/location/GpsSatellite;
    :cond_2
    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$1;->this$0:Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;

    #calls: Landroid/hardware/contextaware/manager/ContextProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;
    invoke-static {v4}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->access$1000(Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;)Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v4

    const-string v5, "Valid"

    invoke-virtual {v4, v5, v10}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 115
    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$1;->this$0:Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;

    #calls: Landroid/hardware/contextaware/manager/ContextProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;
    invoke-static {v4}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->access$1100(Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;)Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v4

    const-string v5, "SVCount"

    invoke-virtual {v4, v5, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 118
    .end local v0           #gpsSatellites:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/location/GpsSatellite;>;"
    .end local v1           #iSvCount:I
    :cond_3
    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$1;->this$0:Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-virtual {v4}, Landroid/hardware/contextaware/manager/ContextProvider;->notifyObserver()V

    goto/16 :goto_0
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 130
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 71
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 142
    return-void
.end method
