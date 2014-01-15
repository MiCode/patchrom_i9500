.class Lcom/android/settings_ex/samba/SambaEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "SambaEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/samba/SambaEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/samba/SambaEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/samba/SambaEnabler;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/settings_ex/samba/SambaEnabler$1;->this$0:Lcom/android/settings_ex/samba/SambaEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x6

    .line 70
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.android.settings_ex.SAMBA_START"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 73
    iget-object v2, p0, Lcom/android/settings_ex/samba/SambaEnabler$1;->this$0:Lcom/android/settings_ex/samba/SambaEnabler;

    iget-object v3, p0, Lcom/android/settings_ex/samba/SambaEnabler$1;->this$0:Lcom/android/settings_ex/samba/SambaEnabler;

    #getter for: Lcom/android/settings_ex/samba/SambaEnabler;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings_ex/samba/SambaEnabler;->access$000(Lcom/android/settings_ex/samba/SambaEnabler;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/samba/SambaEnabler;->getNetworkType(Landroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/samba/SambaEnabler$1;->this$0:Lcom/android/settings_ex/samba/SambaEnabler;

    iget-object v3, p0, Lcom/android/settings_ex/samba/SambaEnabler$1;->this$0:Lcom/android/settings_ex/samba/SambaEnabler;

    #getter for: Lcom/android/settings_ex/samba/SambaEnabler;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings_ex/samba/SambaEnabler;->access$000(Lcom/android/settings_ex/samba/SambaEnabler;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/samba/SambaEnabler;->getNetworkType(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v7, :cond_2

    .line 74
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/samba/SambaEnabler$1;->this$0:Lcom/android/settings_ex/samba/SambaEnabler;

    const/4 v3, 0x4

    #calls: Lcom/android/settings_ex/samba/SambaEnabler;->handleServerStateChanged(I)V
    invoke-static {v2, v3}, Lcom/android/settings_ex/samba/SambaEnabler;->access$100(Lcom/android/settings_ex/samba/SambaEnabler;I)V

    .line 108
    :cond_1
    :goto_0
    return-void

    .line 76
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/samba/SambaEnabler$1;->this$0:Lcom/android/settings_ex/samba/SambaEnabler;

    #calls: Lcom/android/settings_ex/samba/SambaEnabler;->handleServerStateChanged(I)V
    invoke-static {v2, v5}, Lcom/android/settings_ex/samba/SambaEnabler;->access$100(Lcom/android/settings_ex/samba/SambaEnabler;I)V

    goto :goto_0

    .line 78
    :cond_3
    const-string v2, "com.android.settings_ex.SAMBA_STOP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 79
    iget-object v2, p0, Lcom/android/settings_ex/samba/SambaEnabler$1;->this$0:Lcom/android/settings_ex/samba/SambaEnabler;

    #calls: Lcom/android/settings_ex/samba/SambaEnabler;->handleServerStateChanged(I)V
    invoke-static {v2, v5}, Lcom/android/settings_ex/samba/SambaEnabler;->access$100(Lcom/android/settings_ex/samba/SambaEnabler;I)V

    goto :goto_0

    .line 80
    :cond_4
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 82
    iget-object v2, p0, Lcom/android/settings_ex/samba/SambaEnabler$1;->this$0:Lcom/android/settings_ex/samba/SambaEnabler;

    #calls: Lcom/android/settings_ex/samba/SambaEnabler;->isWifiConnected()Z
    invoke-static {v2}, Lcom/android/settings_ex/samba/SambaEnabler;->access$200(Lcom/android/settings_ex/samba/SambaEnabler;)Z

    .line 83
    iget-object v2, p0, Lcom/android/settings_ex/samba/SambaEnabler$1;->this$0:Lcom/android/settings_ex/samba/SambaEnabler;

    #calls: Lcom/android/settings_ex/samba/SambaEnabler;->isEthernetConnected()Z
    invoke-static {v2}, Lcom/android/settings_ex/samba/SambaEnabler;->access$300(Lcom/android/settings_ex/samba/SambaEnabler;)Z

    .line 85
    iget-object v2, p0, Lcom/android/settings_ex/samba/SambaEnabler$1;->this$0:Lcom/android/settings_ex/samba/SambaEnabler;

    #getter for: Lcom/android/settings_ex/samba/SambaEnabler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings_ex/samba/SambaEnabler;->access$000(Lcom/android/settings_ex/samba/SambaEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "samba_on"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 88
    .local v1, state:I
    const-string v2, "SambaEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mReceiver SAMBA ON state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    if-ne v1, v7, :cond_1

    .line 92
    iget-object v2, p0, Lcom/android/settings_ex/samba/SambaEnabler$1;->this$0:Lcom/android/settings_ex/samba/SambaEnabler;

    iget-object v3, p0, Lcom/android/settings_ex/samba/SambaEnabler$1;->this$0:Lcom/android/settings_ex/samba/SambaEnabler;

    #getter for: Lcom/android/settings_ex/samba/SambaEnabler;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings_ex/samba/SambaEnabler;->access$000(Lcom/android/settings_ex/samba/SambaEnabler;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/samba/SambaEnabler;->getNetworkType(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/settings_ex/samba/SambaEnabler$1;->this$0:Lcom/android/settings_ex/samba/SambaEnabler;

    #getter for: Lcom/android/settings_ex/samba/SambaEnabler;->mIsEthernetConnected:Z
    invoke-static {v2}, Lcom/android/settings_ex/samba/SambaEnabler;->access$400(Lcom/android/settings_ex/samba/SambaEnabler;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 94
    const-string v2, "SambaEnabler"

    const-string v3, "Ethernet Disconnect"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v2, p0, Lcom/android/settings_ex/samba/SambaEnabler$1;->this$0:Lcom/android/settings_ex/samba/SambaEnabler;

    #getter for: Lcom/android/settings_ex/samba/SambaEnabler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings_ex/samba/SambaEnabler;->access$000(Lcom/android/settings_ex/samba/SambaEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "samba_on"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    iget-object v2, p0, Lcom/android/settings_ex/samba/SambaEnabler$1;->this$0:Lcom/android/settings_ex/samba/SambaEnabler;

    #calls: Lcom/android/settings_ex/samba/SambaEnabler;->handleServerStateChanged(I)V
    invoke-static {v2, v5}, Lcom/android/settings_ex/samba/SambaEnabler;->access$100(Lcom/android/settings_ex/samba/SambaEnabler;I)V

    .line 97
    iget-object v2, p0, Lcom/android/settings_ex/samba/SambaEnabler$1;->this$0:Lcom/android/settings_ex/samba/SambaEnabler;

    iget-object v2, v2, Lcom/android/settings_ex/samba/SambaEnabler;->util:Lcom/android/settings_ex/samba/SambaConfig;

    invoke-virtual {v2}, Lcom/android/settings_ex/samba/SambaConfig;->ServerStop()V

    goto/16 :goto_0

    .line 98
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/samba/SambaEnabler$1;->this$0:Lcom/android/settings_ex/samba/SambaEnabler;

    iget-object v3, p0, Lcom/android/settings_ex/samba/SambaEnabler$1;->this$0:Lcom/android/settings_ex/samba/SambaEnabler;

    #getter for: Lcom/android/settings_ex/samba/SambaEnabler;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings_ex/samba/SambaEnabler;->access$000(Lcom/android/settings_ex/samba/SambaEnabler;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/samba/SambaEnabler;->getNetworkType(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v7, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/samba/SambaEnabler$1;->this$0:Lcom/android/settings_ex/samba/SambaEnabler;

    #getter for: Lcom/android/settings_ex/samba/SambaEnabler;->mIsWifiConnected:Z
    invoke-static {v2}, Lcom/android/settings_ex/samba/SambaEnabler;->access$500(Lcom/android/settings_ex/samba/SambaEnabler;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 100
    const-string v2, "SambaEnabler"

    const-string v3, "Wifi Disconnect"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v2, p0, Lcom/android/settings_ex/samba/SambaEnabler$1;->this$0:Lcom/android/settings_ex/samba/SambaEnabler;

    #getter for: Lcom/android/settings_ex/samba/SambaEnabler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings_ex/samba/SambaEnabler;->access$000(Lcom/android/settings_ex/samba/SambaEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "samba_on"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 102
    iget-object v2, p0, Lcom/android/settings_ex/samba/SambaEnabler$1;->this$0:Lcom/android/settings_ex/samba/SambaEnabler;

    #calls: Lcom/android/settings_ex/samba/SambaEnabler;->handleServerStateChanged(I)V
    invoke-static {v2, v5}, Lcom/android/settings_ex/samba/SambaEnabler;->access$100(Lcom/android/settings_ex/samba/SambaEnabler;I)V

    .line 103
    iget-object v2, p0, Lcom/android/settings_ex/samba/SambaEnabler$1;->this$0:Lcom/android/settings_ex/samba/SambaEnabler;

    iget-object v2, v2, Lcom/android/settings_ex/samba/SambaEnabler;->util:Lcom/android/settings_ex/samba/SambaConfig;

    invoke-virtual {v2}, Lcom/android/settings_ex/samba/SambaConfig;->ServerStop()V

    goto/16 :goto_0
.end method
