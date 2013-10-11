.class Landroid/net/wifi/WifiStateMachine$WifiMobility$1;
.super Ljava/util/TimerTask;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiStateMachine$WifiMobility;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/WifiStateMachine$WifiMobility;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine$WifiMobility;)V
    .locals 0

    .prologue
    .line 968
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility$1;->this$1:Landroid/net/wifi/WifiStateMachine$WifiMobility;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 972
    const-string v0, "WifiMobility"

    const-string v1, "timer runned"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$WifiMobility$1;->this$1:Landroid/net/wifi/WifiStateMachine$WifiMobility;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->checkBlockedNetworks()V

    .line 974
    return-void
.end method
