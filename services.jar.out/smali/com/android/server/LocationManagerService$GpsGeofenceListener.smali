.class final Lcom/android/server/LocationManagerService$GpsGeofenceListener;
.super Ljava/lang/Object;
.source "LocationManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GpsGeofenceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;Landroid/location/IGeofenceListener;)V
    .locals 0
    .parameter
    .parameter "listener"

    .prologue
    .line 1578
    iput-object p1, p0, Lcom/android/server/LocationManagerService$GpsGeofenceListener;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1579
    #setter for: Lcom/android/server/LocationManagerService;->mGeofenceListener:Landroid/location/IGeofenceListener;
    invoke-static {p1, p2}, Lcom/android/server/LocationManagerService;->access$1302(Lcom/android/server/LocationManagerService;Landroid/location/IGeofenceListener;)Landroid/location/IGeofenceListener;

    .line 1580
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 1584
    const-string v0, "LocationManagerService"

    const-string v1, "Geofence listener died"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    iget-object v0, p0, Lcom/android/server/LocationManagerService$GpsGeofenceListener;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v1, p0, Lcom/android/server/LocationManagerService$GpsGeofenceListener;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mGeofenceListener:Landroid/location/IGeofenceListener;
    invoke-static {v1}, Lcom/android/server/LocationManagerService;->access$1300(Lcom/android/server/LocationManagerService;)Landroid/location/IGeofenceListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/LocationManagerService;->removeGpsGeofence(Landroid/location/IGeofenceListener;)V

    .line 1589
    iget-object v0, p0, Lcom/android/server/LocationManagerService$GpsGeofenceListener;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mGeofenceListener:Landroid/location/IGeofenceListener;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$1300(Lcom/android/server/LocationManagerService;)Landroid/location/IGeofenceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1590
    iget-object v0, p0, Lcom/android/server/LocationManagerService$GpsGeofenceListener;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mGeofenceListener:Landroid/location/IGeofenceListener;
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$1300(Lcom/android/server/LocationManagerService;)Landroid/location/IGeofenceListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/location/IGeofenceListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1592
    :cond_0
    return-void
.end method
