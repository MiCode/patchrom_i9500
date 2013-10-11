.class public Landroid/sec/enterprise/RoamingPolicy;
.super Ljava/lang/Object;
.source "RoamingPolicy.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "RoamingPolicy"

    sput-object v0, Landroid/sec/enterprise/RoamingPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isRoamingPushEnabled()Z
    .locals 4

    .prologue
    .line 56
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 57
    .local v1, lService:Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 58
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isRoamingPushEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 63
    .end local v1           #lService:Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v2

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/RoamingPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isRoamingPushEnabled returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isRoamingSyncEnabled()Z
    .locals 4

    .prologue
    .line 68
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    .line 69
    .local v1, lService:Landroid/sec/enterprise/IEDMProxy;
    if-eqz v1, :cond_0

    .line 70
    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isRoamingSyncEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 75
    .end local v1           #lService:Landroid/sec/enterprise/IEDMProxy;
    :goto_0
    return v2

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/RoamingPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isRoamingSyncEnabled returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
