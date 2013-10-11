.class Landroid/location/LocationManager$GeofenceListenerTransport;
.super Landroid/location/IGeofenceListener$Stub;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GeofenceListenerTransport"
.end annotation


# static fields
.field private static final TYPE_GEOFENCE_ALERT:I = 0x1

.field private static final TYPE_GEOFENCE_LAST_LOCATION:I = 0x2

.field private static final TYPE_GEOFENCE_MONITORING_ACTIVE:I = 0x3


# instance fields
.field private mListener:Landroid/location/GeofenceListener;

.field private final mListenerHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/location/LocationManager;


# direct methods
.method constructor <init>(Landroid/location/LocationManager;Landroid/location/GeofenceListener;)V
    .locals 1
    .parameter
    .parameter "listener"

    .prologue
    .line 1572
    iput-object p1, p0, Landroid/location/LocationManager$GeofenceListenerTransport;->this$0:Landroid/location/LocationManager;

    invoke-direct {p0}, Landroid/location/IGeofenceListener$Stub;-><init>()V

    .line 1573
    iput-object p2, p0, Landroid/location/LocationManager$GeofenceListenerTransport;->mListener:Landroid/location/GeofenceListener;

    .line 1575
    new-instance v0, Landroid/location/LocationManager$GeofenceListenerTransport$1;

    invoke-direct {v0, p0, p1}, Landroid/location/LocationManager$GeofenceListenerTransport$1;-><init>(Landroid/location/LocationManager$GeofenceListenerTransport;Landroid/location/LocationManager;)V

    iput-object v0, p0, Landroid/location/LocationManager$GeofenceListenerTransport;->mListenerHandler:Landroid/os/Handler;

    .line 1581
    return-void
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1612
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1626
    :goto_0
    return-void

    .line 1614
    :pswitch_0
    const-string v0, "LocationManager"

    const-string v1, "TYPE_GEOFENCE_ALERT"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    iget-object v1, p0, Landroid/location/LocationManager$GeofenceListenerTransport;->mListener:Landroid/location/GeofenceListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v0, v2}, Landroid/location/GeofenceListener;->onGeofenceAlerted(Ljava/lang/String;I)V

    goto :goto_0

    .line 1618
    :pswitch_1
    const-string v0, "LocationManager"

    const-string v1, "TYPE_GEOFENCE_LAST_LOCATION"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    iget-object v1, p0, Landroid/location/LocationManager$GeofenceListenerTransport;->mListener:Landroid/location/GeofenceListener;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    invoke-interface {v1, v0}, Landroid/location/GeofenceListener;->onLastKnownLocationUpdated(Landroid/location/Location;)V

    goto :goto_0

    .line 1622
    :pswitch_2
    const-string v0, "LocationManager"

    const-string v1, "TYPE_GEOFENCE_MONITORING_ACTIVE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    iget-object v0, p0, Landroid/location/LocationManager$GeofenceListenerTransport;->mListener:Landroid/location/GeofenceListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Landroid/location/GeofenceListener;->onGeofenceMonitoringActive(I)V

    goto :goto_0

    .line 1612
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$600(Landroid/location/LocationManager$GeofenceListenerTransport;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1563
    invoke-direct {p0, p1}, Landroid/location/LocationManager$GeofenceListenerTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public onGeofenceAlerted(Ljava/lang/String;I)V
    .locals 3
    .parameter "name"
    .parameter "alert_flag"

    .prologue
    .line 1585
    const-string v1, "LocationManager"

    const-string v2, "onGeofenceAlerted"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1587
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1588
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1589
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1590
    iget-object v1, p0, Landroid/location/LocationManager$GeofenceListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1591
    return-void
.end method

.method public onGeofenceMonitoringActive(I)V
    .locals 3
    .parameter "monitoring_value"

    .prologue
    .line 1604
    const-string v1, "LocationManager"

    const-string v2, "onGeofenceMonitoringActive"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1606
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1607
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1608
    iget-object v1, p0, Landroid/location/LocationManager$GeofenceListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1609
    return-void
.end method

.method public onLastKnownLocationUpdated(Landroid/location/Location;)V
    .locals 3
    .parameter "location"

    .prologue
    .line 1595
    const-string v1, "LocationManager"

    const-string v2, "onLastKnownLocationUpdated"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1597
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1598
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1599
    iget-object v1, p0, Landroid/location/LocationManager$GeofenceListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1600
    return-void
.end method
