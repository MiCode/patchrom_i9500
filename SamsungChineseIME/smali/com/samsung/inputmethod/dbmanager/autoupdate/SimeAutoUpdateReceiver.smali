.class public Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeAutoUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SimeAutoUpdateReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SimeAutoUpdateReceiver"

.field public static final mAutoUpdateExtra:Ljava/lang/String; = "com.samsung.inputmethod.dbupdate.auto"


# instance fields
.field private DEBUG:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeAutoUpdateReceiver;->DEBUG:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 38
    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_DB_UPDATE_ONLINE:Z

    if-eqz v3, :cond_1

    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 43
    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 46
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    .local v2, serviceIntent:Landroid/content/Intent;
    const-string v3, "com.samsung.inputmethod.dbupdate.auto"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 50
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    .line 52
    .local v0, bConnected:Z
    iget-boolean v3, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeAutoUpdateReceiver;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 53
    const-string v3, "SimeAutoUpdateReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wifi network connected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    if-eqz v0, :cond_2

    .line 56
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 63
    .end local v0           #bConnected:Z
    .end local v1           #networkInfo:Landroid/net/NetworkInfo;
    .end local v2           #serviceIntent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 58
    .restart local v0       #bConnected:Z
    .restart local v1       #networkInfo:Landroid/net/NetworkInfo;
    .restart local v2       #serviceIntent:Landroid/content/Intent;
    :cond_2
    invoke-virtual {p1, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method
