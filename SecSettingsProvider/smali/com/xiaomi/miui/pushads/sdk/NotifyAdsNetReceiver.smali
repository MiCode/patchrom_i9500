.class Lcom/xiaomi/miui/pushads/sdk/NotifyAdsNetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotifyAdsNetReceiver.java"


# instance fields
.field private mAdsListener:Lcom/xiaomi/miui/pushads/sdk/INotifyAdsListener;


# direct methods
.method public constructor <init>(Lcom/xiaomi/miui/pushads/sdk/INotifyAdsListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsNetReceiver;->mAdsListener:Lcom/xiaomi/miui/pushads/sdk/INotifyAdsListener;

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

    .line 28
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsNetReceiver;->mAdsListener:Lcom/xiaomi/miui/pushads/sdk/INotifyAdsListener;

    if-eqz v1, :cond_0

    .line 29
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsNetReceiver;->mAdsListener:Lcom/xiaomi/miui/pushads/sdk/INotifyAdsListener;

    invoke-interface {v1}, Lcom/xiaomi/miui/pushads/sdk/INotifyAdsListener;->onNetChanged()V

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    const-string v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsNetReceiver;->mAdsListener:Lcom/xiaomi/miui/pushads/sdk/INotifyAdsListener;

    if-eqz v1, :cond_0

    .line 33
    iget-object v1, p0, Lcom/xiaomi/miui/pushads/sdk/NotifyAdsNetReceiver;->mAdsListener:Lcom/xiaomi/miui/pushads/sdk/INotifyAdsListener;

    invoke-interface {v1}, Lcom/xiaomi/miui/pushads/sdk/INotifyAdsListener;->onAccountChanged()V

    goto :goto_0
.end method
