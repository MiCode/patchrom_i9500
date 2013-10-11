.class final Lcom/android/server/connectivity/VpnNamespace;
.super Ljava/lang/Object;
.source "VpnNamespace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/VpnNamespace$1;,
        Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;,
        Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;,
        Lcom/android/server/connectivity/VpnNamespace$VpnNetIf;,
        Lcom/android/server/connectivity/VpnNamespace$Cmd;,
        Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = null

.field private static final VPNNS_SVR_ADDR:Ljava/lang/String; = "mvpvpn-ns"


# instance fields
.field private final DNS_EXTRA:Ljava/lang/String;

.field private final SDM_EXTRA:Ljava/lang/String;

.field private final VMID_EXTRA:Ljava/lang/String;

.field private nsIfIdx:Ljava/lang/Integer;

.field private nsMon:Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;

.field private nsPid:I

.field private nsVmId:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sys"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/connectivity/VpnNamespace;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, "com.vmware.mvp.vpn.VMID"

    iput-object v0, p0, Lcom/android/server/connectivity/VpnNamespace;->VMID_EXTRA:Ljava/lang/String;

    .line 47
    const-string v0, "com.vmware.mvp.vpn.DNS"

    iput-object v0, p0, Lcom/android/server/connectivity/VpnNamespace;->DNS_EXTRA:Ljava/lang/String;

    .line 48
    const-string v0, "com.vmware.mvp.vpn.SDM"

    iput-object v0, p0, Lcom/android/server/connectivity/VpnNamespace;->SDM_EXTRA:Ljava/lang/String;

    .line 702
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/VpnNamespace;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/VpnNamespace;->checkIf(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized checkIf(Ljava/lang/String;)Z
    .locals 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    monitor-enter p0

    const/4 v1, -0x1

    .line 145
    .local v1, idx:I
    :try_start_0
    new-instance v0, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;

    const-string v2, "mvpvpn-ns"

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;-><init>(Lcom/android/server/connectivity/VpnNamespace;Ljava/lang/String;Lcom/android/server/connectivity/VpnNamespace$1;)V

    .line 147
    .local v0, cmd:Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;
    sget-object v2, Lcom/android/server/connectivity/VpnNamespace$Cmd;->GETIFIDX:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    invoke-virtual {v0, v2, p1}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->execute(Lcom/android/server/connectivity/VpnNamespace$Cmd;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 148
    invoke-virtual {v0}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->destroy()V

    .line 149
    iget-object v2, p0, Lcom/android/server/connectivity/VpnNamespace;->nsIfIdx:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    monitor-exit p0

    return v2

    .line 143
    .end local v0           #cmd:Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private setAddresses(Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;ILcom/android/internal/net/VpnConfig;)V
    .locals 10
    .parameter "cmd"
    .parameter "idx"
    .parameter "cfg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    iget-object v7, p3, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p3, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 160
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "at least one network address must be provided for the tunnel"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 162
    :cond_1
    new-instance v6, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v7, 0x20

    invoke-direct {v6, v7}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 163
    .local v6, sss:Landroid/text/TextUtils$SimpleStringSplitter;
    const/4 v2, 0x0

    .line 165
    .local v2, count:I
    iget-object v7, p3, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v6}, Landroid/text/TextUtils$SimpleStringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 172
    .local v1, addr:Ljava/lang/String;
    :try_start_0
    invoke-static {p2, v1}, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;->fromString(ILjava/lang/String;)Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;

    move-result-object v0

    .line 173
    .local v0, a:Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;
    sget-object v7, Lcom/android/server/connectivity/VpnNamespace$Cmd;->SETIFCONFIG:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    invoke-virtual {p1, v7, v0}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->execute(Lcom/android/server/connectivity/VpnNamespace$Cmd;Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 175
    .local v5, res:I
    if-nez v5, :cond_2

    .line 176
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 178
    .end local v0           #a:Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;
    .end local v5           #res:I
    :catch_0
    move-exception v3

    .line 179
    .local v3, e:Ljava/io/IOException;
    sget-object v7, Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "I/O error: couldn\'t set interface address to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 180
    .end local v3           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 181
    .local v3, e:Ljava/lang/IllegalArgumentException;
    sget-object v7, Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Malformed address string "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 184
    .end local v1           #addr:Ljava/lang/String;
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    :cond_3
    if-gtz v2, :cond_4

    .line 185
    sget-object v7, Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "could set none of the "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p3, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-instance v7, Ljava/io/IOException;

    const-string v8, "none of the proveded network addresses could be set"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 188
    :cond_4
    return-void
.end method

.method private setRoutes(Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;ILcom/android/internal/net/VpnConfig;)V
    .locals 8
    .parameter "cmd"
    .parameter "idx"
    .parameter "cfg"

    .prologue
    .line 197
    iget-object v5, p3, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p3, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 198
    :cond_0
    sget-object v5, Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;

    const-string v6, "no routes configured"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_1
    return-void

    .line 201
    :cond_2
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v5, 0x20

    invoke-direct {v4, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 202
    .local v4, sss:Landroid/text/TextUtils$SimpleStringSplitter;
    iget-object v5, p3, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v4}, Landroid/text/TextUtils$SimpleStringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 209
    .local v3, rt:Ljava/lang/String;
    :try_start_0
    invoke-static {p2, v3}, Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;->fromString(ILjava/lang/String;)Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;

    move-result-object v0

    .line 210
    .local v0, a:Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;
    sget-object v5, Lcom/android/server/connectivity/VpnNamespace$Cmd;->SETROUTE:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    invoke-virtual {p1, v5, v0}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->execute(Lcom/android/server/connectivity/VpnNamespace$Cmd;Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 211
    .end local v0           #a:Lcom/android/server/connectivity/VpnNamespace$VpnNetIfAddr;
    :catch_0
    move-exception v1

    .line 212
    .local v1, e:Ljava/io/IOException;
    sget-object v5, Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "I/O error: couldn\'t set route to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 213
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 214
    .local v1, e:Ljava/lang/IllegalArgumentException;
    sget-object v5, Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Malformed address string "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method declared-synchronized close()V
    .locals 1

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/VpnNamespace;->nsMon:Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/server/connectivity/VpnNamespace;->nsMon:Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;

    invoke-virtual {v0}, Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;->quit()V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/VpnNamespace;->nsMon:Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :cond_0
    monitor-exit p0

    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized establish(Ljava/lang/String;Lcom/android/internal/net/VpnConfig;Lcom/android/server/connectivity/Vpn;)Landroid/content/Intent;
    .locals 5
    .parameter "name"
    .parameter "config"
    .parameter "vpn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    monitor-enter p0

    const/4 v1, 0x0

    .line 63
    .local v1, vpnConfig:Landroid/content/Intent;
    :try_start_0
    new-instance v0, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;

    const-string v2, "mvpvpn-ns"

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;-><init>(Lcom/android/server/connectivity/VpnNamespace;Ljava/lang/String;Lcom/android/server/connectivity/VpnNamespace$1;)V

    .line 65
    .local v0, cmd:Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;
    sget-object v2, Lcom/android/server/connectivity/VpnNamespace$Cmd;->PUSHIF:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    invoke-virtual {v0, v2, p1}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->execute(Lcom/android/server/connectivity/VpnNamespace$Cmd;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    sget-object v2, Lcom/android/server/connectivity/VpnNamespace$Cmd;->GETIFIDX:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    invoke-virtual {v0, v2, p1}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->execute(Lcom/android/server/connectivity/VpnNamespace$Cmd;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, p0, Lcom/android/server/connectivity/VpnNamespace;->nsIfIdx:Ljava/lang/Integer;

    .line 69
    sget-object v2, Lcom/android/server/connectivity/VpnNamespace$Cmd;->GETVMID:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    invoke-virtual {v0, v2}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->execute(Lcom/android/server/connectivity/VpnNamespace$Cmd;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iput-object v2, p0, Lcom/android/server/connectivity/VpnNamespace;->nsVmId:Ljava/lang/Integer;

    .line 71
    iget-object v2, p0, Lcom/android/server/connectivity/VpnNamespace;->nsIfIdx:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v2, p2}, Lcom/android/server/connectivity/VpnNamespace;->setAddresses(Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;ILcom/android/internal/net/VpnConfig;)V

    .line 72
    iget-object v2, p0, Lcom/android/server/connectivity/VpnNamespace;->nsIfIdx:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v0, v2, p2}, Lcom/android/server/connectivity/VpnNamespace;->setRoutes(Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;ILcom/android/internal/net/VpnConfig;)V

    .line 76
    iget-object v2, p2, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, p2, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 78
    sget-object v2, Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got VMID as "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/VpnNamespace;->nsVmId:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p0}, Lcom/android/server/connectivity/VpnNamespace;->mkIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 80
    const-string v3, "com.vmware.mvp.vpn.DNS"

    iget-object v2, p2, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    iget-object v4, p2, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    iget-object v2, p2, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p2, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    sget-object v2, Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recording "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " search domains"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v3, "com.vmware.mvp.vpn.SDM"

    iget-object v2, p2, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    iget-object v4, p2, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->destroy()V

    .line 97
    iget-object v2, p0, Lcom/android/server/connectivity/VpnNamespace;->nsMon:Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;

    if-nez v2, :cond_3

    .line 98
    new-instance v2, Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;

    invoke-direct {v2, p0, p1, p3}, Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;-><init>(Lcom/android/server/connectivity/VpnNamespace;Ljava/lang/String;Lcom/android/server/connectivity/Vpn;)V

    iput-object v2, p0, Lcom/android/server/connectivity/VpnNamespace;->nsMon:Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;

    .line 99
    iget-object v2, p0, Lcom/android/server/connectivity/VpnNamespace;->nsMon:Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :goto_1
    monitor-exit p0

    return-object v1

    .line 88
    :cond_1
    :try_start_1
    sget-object v2, Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;

    const-string v3, "no search domains specified"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 61
    .end local v0           #cmd:Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 94
    .restart local v0       #cmd:Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;
    :cond_2
    :try_start_2
    sget-object v2, Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;

    const-string v3, "no DNS settings ??!!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 101
    :cond_3
    iget-object v2, p0, Lcom/android/server/connectivity/VpnNamespace;->nsMon:Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;

    invoke-virtual {v2}, Lcom/android/server/connectivity/VpnNamespace$TunnelMonitorThread;->restart()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method mkIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, res:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/connectivity/VpnNamespace;->nsVmId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/VpnNamespace;->nsVmId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_0

    .line 115
    new-instance v0, Landroid/content/Intent;

    .end local v0           #res:Landroid/content/Intent;
    const-string v1, "com.vmware.mvp.vpn.VPN_CONFIG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .restart local v0       #res:Landroid/content/Intent;
    const-string v1, "com.vmware.mvp.vpn.VMID"

    iget-object v2, p0, Lcom/android/server/connectivity/VpnNamespace;->nsVmId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    :cond_0
    return-object v0
.end method

.method declared-synchronized removeInterface()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;

    const-string v1, "mvpvpn-ns"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;-><init>(Lcom/android/server/connectivity/VpnNamespace;Ljava/lang/String;Lcom/android/server/connectivity/VpnNamespace$1;)V

    .line 133
    .local v0, cmd:Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;
    sget-object v1, Lcom/android/server/connectivity/VpnNamespace$Cmd;->REMOVEIF:Lcom/android/server/connectivity/VpnNamespace$Cmd;

    iget-object v2, p0, Lcom/android/server/connectivity/VpnNamespace;->nsIfIdx:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->execute(Lcom/android/server/connectivity/VpnNamespace$Cmd;I)Ljava/lang/Object;

    .line 134
    sget-object v1, Lcom/android/server/connectivity/VpnNamespace;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/VpnNamespace;->nsIfIdx:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was removed from ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {v0}, Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-void

    .line 132
    .end local v0           #cmd:Lcom/android/server/connectivity/VpnNamespace$VpnSvrCommand;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
