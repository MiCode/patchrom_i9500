.class Landroid/location/LocationManager$GeofenceListenerTransport$1;
.super Landroid/os/Handler;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/location/LocationManager$GeofenceListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/GeofenceListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/location/LocationManager$GeofenceListenerTransport;

.field final synthetic val$this$0:Landroid/location/LocationManager;


# direct methods
.method constructor <init>(Landroid/location/LocationManager$GeofenceListenerTransport;Landroid/location/LocationManager;)V
    .locals 0

    .prologue
    .line 1575
    iput-object p1, p0, Landroid/location/LocationManager$GeofenceListenerTransport$1;->this$1:Landroid/location/LocationManager$GeofenceListenerTransport;

    iput-object p2, p0, Landroid/location/LocationManager$GeofenceListenerTransport$1;->val$this$0:Landroid/location/LocationManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1578
    iget-object v0, p0, Landroid/location/LocationManager$GeofenceListenerTransport$1;->this$1:Landroid/location/LocationManager$GeofenceListenerTransport;

    #calls: Landroid/location/LocationManager$GeofenceListenerTransport;->_handleMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Landroid/location/LocationManager$GeofenceListenerTransport;->access$600(Landroid/location/LocationManager$GeofenceListenerTransport;Landroid/os/Message;)V

    .line 1579
    return-void
.end method
