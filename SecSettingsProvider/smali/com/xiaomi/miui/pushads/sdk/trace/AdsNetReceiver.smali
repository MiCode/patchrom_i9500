.class Lcom/xiaomi/miui/pushads/sdk/trace/AdsNetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AdsNetReceiver.java"


# instance fields
.field private mTraceListener:Lcom/xiaomi/miui/pushads/sdk/trace/IAdsTraceListener;


# direct methods
.method public constructor <init>(Lcom/xiaomi/miui/pushads/sdk/trace/IAdsTraceListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsNetReceiver;->mTraceListener:Lcom/xiaomi/miui/pushads/sdk/trace/IAdsTraceListener;

    .line 21
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 27
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsNetReceiver;->mTraceListener:Lcom/xiaomi/miui/pushads/sdk/trace/IAdsTraceListener;

    if-eqz v1, :cond_0

    .line 28
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsNetReceiver;->mTraceListener:Lcom/xiaomi/miui/pushads/sdk/trace/IAdsTraceListener;

    invoke-interface {v1}, Lcom/xiaomi/miui/pushads/sdk/trace/IAdsTraceListener;->onNetStateChanged()V

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    const-string v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsNetReceiver;->mTraceListener:Lcom/xiaomi/miui/pushads/sdk/trace/IAdsTraceListener;

    if-eqz v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/trace/AdsNetReceiver;->mTraceListener:Lcom/xiaomi/miui/pushads/sdk/trace/IAdsTraceListener;

    invoke-interface {v1}, Lcom/xiaomi/miui/pushads/sdk/trace/IAdsTraceListener;->onAccountChanged()V

    goto :goto_0
.end method
