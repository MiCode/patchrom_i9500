.class public Lcom/touchtype_fluency/service/util/NetworkUtil;
.super Ljava/lang/Object;
.source "NetworkUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;
    }
.end annotation


# static fields
.field public static final IMPLIED_NETWORK_STATE:Z = true

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/touchtype_fluency/service/util/NetworkUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/touchtype_fluency/service/util/NetworkUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInternetAvailability(Landroid/content/Context;)Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;
    .locals 4
    .parameter "context"

    .prologue
    .line 44
    :try_start_0
    invoke-static {p0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 45
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    invoke-static {v1}, Lcom/touchtype_fluency/service/util/NetworkUtil;->isConnected(Landroid/net/NetworkInfo;)Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 49
    .end local v1           #networkInfo:Landroid/net/NetworkInfo;
    :goto_0
    return-object v2

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, e:Ljava/lang/SecurityException;
    sget-object v2, Lcom/touchtype_fluency/service/util/NetworkUtil;->TAG:Ljava/lang/String;

    const-string v3, "Permission ACCESS_NETWORK_STATE to read network state is denied."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    sget-object v2, Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;->IMPLIED:Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;

    goto :goto_0
.end method

.method private static getNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 2
    .parameter "context"

    .prologue
    .line 54
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 56
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    return-object v1
.end method

.method private static isConnected(Landroid/net/NetworkInfo;)Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;
    .locals 1
    .parameter "networkInfo"

    .prologue
    .line 60
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 69
    sget-object v0, Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;->OTHER:Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;

    .line 73
    :goto_0
    return-object v0

    .line 63
    :pswitch_0
    sget-object v0, Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;->MOBILE:Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;

    goto :goto_0

    .line 66
    :pswitch_1
    sget-object v0, Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;->WIFI:Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;

    goto :goto_0

    .line 73
    :cond_0
    sget-object v0, Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;->NONE:Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;

    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isInternetAvailable(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 30
    invoke-static {p0}, Lcom/touchtype_fluency/service/util/NetworkUtil;->getInternetAvailability(Landroid/content/Context;)Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;

    move-result-object v0

    .line 32
    .local v0, state:Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;
    sget-object v1, Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;->NONE:Lcom/touchtype_fluency/service/util/NetworkUtil$NetworkState;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
