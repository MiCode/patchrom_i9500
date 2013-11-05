.class final Lcom/xiaomi/network/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/network/UploadHostStatHelper$HttpRecordCallback;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/a/a/a/a/b;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/xiaomi/network/HostManager;->access$000()Lcom/xiaomi/network/HostManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/network/HostManager;->generateHostStats()Ljava/util/ArrayList;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()D
    .locals 3

    invoke-static {}, Lcom/xiaomi/network/HostManager;->access$000()Lcom/xiaomi/network/HostManager;

    move-result-object v0

    const-string v1, "f3.mi-stat.gslb.mi-idc.com"

    invoke-virtual {v0, v1}, Lcom/xiaomi/network/HostManager;->getFallbacksByHost(Ljava/lang/String;)Lcom/xiaomi/network/Fallback;

    move-result-object v2

    const-wide v0, 0x3fb999999999999aL

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/xiaomi/network/Fallback;->f()D

    move-result-wide v0

    :cond_0
    return-wide v0
.end method
