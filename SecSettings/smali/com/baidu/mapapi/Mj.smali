.class public Lcom/baidu/mapapi/Mj;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/Mj$b;,
        Lcom/baidu/mapapi/Mj$a;
    }
.end annotation


# static fields
.field private static V:Lcom/baidu/mapapi/b;

.field private static W:Ljava/lang/reflect/Method;

.field private static X:Ljava/lang/reflect/Method;

.field private static Y:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static a:Lcom/baidu/mapapi/f;

.field static final b:Lcom/baidu/mapapi/MKLocationManager;

.field static c:I

.field static d:Lcom/baidu/mapapi/MapView;

.field static e:Landroid/content/Context;

.field static f:Ljava/net/ServerSocket;

.field static g:I

.field static h:I

.field static i:I

.field static j:F

.field static k:Ljava/lang/String;

.field public static l:I

.field public static m:I

.field public static n:I

.field public static o:I

.field public static p:I

.field static q:Z

.field static r:Z

.field static s:I

.field private static t:Landroid/os/Handler;

.field private static u:Ljava/lang/String;

.field private static v:Ljava/lang/String;

.field private static w:Ljava/lang/String;

.field private static x:Ljava/lang/String;


# instance fields
.field private A:Lcom/baidu/mapapi/j;

.field private B:Lcom/baidu/mapapi/j;

.field private C:Lcom/baidu/mapapi/j;

.field private D:Lcom/baidu/mapapi/j;

.field private E:Lcom/baidu/mapapi/cloud/c;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private final I:J

.field private final J:J

.field private K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private L:J

.field private M:J

.field private N:I

.field private O:I

.field private P:I

.field private Q:I

.field private R:I

.field private S:I

.field private T:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private U:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private Z:Landroid/os/Handler;

.field private aa:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/Mj$b;",
            ">;"
        }
    .end annotation
.end field

.field private y:Landroid/telephony/TelephonyManager;

.field private z:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    sput-object v1, Lcom/baidu/mapapi/Mj;->a:Lcom/baidu/mapapi/f;

    new-instance v0, Lcom/baidu/mapapi/MKLocationManager;

    invoke-direct {v0}, Lcom/baidu/mapapi/MKLocationManager;-><init>()V

    sput-object v0, Lcom/baidu/mapapi/Mj;->b:Lcom/baidu/mapapi/MKLocationManager;

    const/4 v0, 0x2

    sput v0, Lcom/baidu/mapapi/Mj;->c:I

    sput-object v1, Lcom/baidu/mapapi/Mj;->d:Lcom/baidu/mapapi/MapView;

    sput-object v1, Lcom/baidu/mapapi/Mj;->t:Landroid/os/Handler;

    sput-object v1, Lcom/baidu/mapapi/Mj;->e:Landroid/content/Context;

    sput-object v1, Lcom/baidu/mapapi/Mj;->f:Ljava/net/ServerSocket;

    sput v2, Lcom/baidu/mapapi/Mj;->g:I

    sput v2, Lcom/baidu/mapapi/Mj;->h:I

    sput v2, Lcom/baidu/mapapi/Mj;->i:I

    const/high16 v0, 0x3f80

    sput v0, Lcom/baidu/mapapi/Mj;->j:F

    const-string v0, ""

    sput-object v0, Lcom/baidu/mapapi/Mj;->k:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/baidu/mapapi/Mj;->u:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/baidu/mapapi/Mj;->v:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/baidu/mapapi/Mj;->w:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/baidu/mapapi/Mj;->x:Ljava/lang/String;

    sput v2, Lcom/baidu/mapapi/Mj;->l:I

    sput v2, Lcom/baidu/mapapi/Mj;->m:I

    sput v2, Lcom/baidu/mapapi/Mj;->n:I

    sput v2, Lcom/baidu/mapapi/Mj;->o:I

    sput v2, Lcom/baidu/mapapi/Mj;->p:I

    const/4 v0, -0x1

    sput v0, Lcom/baidu/mapapi/Mj;->s:I

    sput-object v1, Lcom/baidu/mapapi/Mj;->V:Lcom/baidu/mapapi/b;

    sput-object v1, Lcom/baidu/mapapi/Mj;->W:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/baidu/mapapi/Mj;->X:Ljava/lang/reflect/Method;

    sput-object v1, Lcom/baidu/mapapi/Mj;->Y:Ljava/lang/Class;

    :try_start_0
    const-string v0, "BMapApiEngine_v1_3_5"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "BMapApiEngine_v1_3_5"

    const-string v2, "BMapApiEngine_v1_3_5 library not found!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "BMapApiEngine_v1_3_5"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method constructor <init>(Lcom/baidu/mapapi/BMapManager;Landroid/content/Context;)V
    .locals 6

    const-wide/16 v4, 0x3

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/Mj;->y:Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/baidu/mapapi/Mj;->z:Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/baidu/mapapi/Mj;->A:Lcom/baidu/mapapi/j;

    iput-object v0, p0, Lcom/baidu/mapapi/Mj;->B:Lcom/baidu/mapapi/j;

    iput-object v0, p0, Lcom/baidu/mapapi/Mj;->C:Lcom/baidu/mapapi/j;

    iput-object v0, p0, Lcom/baidu/mapapi/Mj;->D:Lcom/baidu/mapapi/j;

    iput-object v0, p0, Lcom/baidu/mapapi/Mj;->E:Lcom/baidu/mapapi/cloud/c;

    iput-wide v4, p0, Lcom/baidu/mapapi/Mj;->I:J

    iput-wide v4, p0, Lcom/baidu/mapapi/Mj;->J:J

    iput-object v0, p0, Lcom/baidu/mapapi/Mj;->K:Ljava/util/List;

    iput-wide v2, p0, Lcom/baidu/mapapi/Mj;->L:J

    iput-wide v2, p0, Lcom/baidu/mapapi/Mj;->M:J

    iput v1, p0, Lcom/baidu/mapapi/Mj;->N:I

    iput v1, p0, Lcom/baidu/mapapi/Mj;->O:I

    iput v1, p0, Lcom/baidu/mapapi/Mj;->P:I

    iput v1, p0, Lcom/baidu/mapapi/Mj;->Q:I

    iput v1, p0, Lcom/baidu/mapapi/Mj;->R:I

    iput v1, p0, Lcom/baidu/mapapi/Mj;->S:I

    iput-object v0, p0, Lcom/baidu/mapapi/Mj;->T:Ljava/util/List;

    iput-object v0, p0, Lcom/baidu/mapapi/Mj;->U:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/Mj;->Z:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/Mj;->aa:Ljava/util/ArrayList;

    sput-object p2, Lcom/baidu/mapapi/Mj;->e:Landroid/content/Context;

    invoke-direct {p0}, Lcom/baidu/mapapi/Mj;->e()V

    return-void
.end method

.method public static native AppendRecord(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native DisableProviderCC(I)I
.end method

.method public static native EnableProviderCC(I)I
.end method

.method public static native GetGPSStatus()Landroid/os/Bundle;
.end method

.method public static native GetMapStatus()Landroid/os/Bundle;
.end method

.method public static native GetNotifyInternal()Landroid/os/Bundle;
.end method

.method public static native InitLocationCC()I
.end method

.method public static native InitMapControlCC(II)I
.end method

.method public static native MapProc(III)I
.end method

.method public static native MsgMapProc(IIII)I
.end method

.method public static native SetCellData(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native SetCellInfo(IIIILjava/lang/String;)V
.end method

.method public static native SetLocationCoordinateType(I)V
.end method

.method public static native SetNotifyInternal(II)I
.end method

.method public static native SetProxyInfo(Ljava/lang/String;I)I
.end method

.method public static native SetUpdateWifi(Ljava/lang/String;)V
.end method

.method public static native UpdataGPS(DDFFFI)V
.end method

.method static synthetic a(Lcom/baidu/mapapi/Mj;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/Mj;->Z:Landroid/os/Handler;

    return-object v0
.end method

.method private static a(Landroid/net/NetworkInfo;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(I)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/baidu/mapapi/Mj;->aa:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/Mj;->aa:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/Mj$b;

    iget v2, v0, Lcom/baidu/mapapi/Mj$b;->a:I

    if-ne v2, p1, :cond_2

    sget-boolean v2, Lcom/baidu/mapapi/BMapManager;->c:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/baidu/mapapi/Mj;->Z:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/Mj;->aa:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private a(II)V
    .locals 4

    iget-object v0, p0, Lcom/baidu/mapapi/Mj;->aa:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/Mj$b;

    iget v0, v0, Lcom/baidu/mapapi/Mj$b;->a:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/baidu/mapapi/Mj$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/mapapi/Mj$b;-><init>(Lcom/baidu/mapapi/Mj;Lcom/baidu/mapapi/Mj$1;)V

    iput p1, v0, Lcom/baidu/mapapi/Mj$b;->a:I

    iput p2, v0, Lcom/baidu/mapapi/Mj$b;->b:I

    sget-boolean v1, Lcom/baidu/mapapi/BMapManager;->c:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/baidu/mapapi/Mj;->Z:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    iget-object v1, p0, Lcom/baidu/mapapi/Mj;->aa:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static changeGprsConnect()V
    .locals 7

    const/16 v1, 0x50

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    sget-object v0, Lcom/baidu/mapapi/Mj;->e:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    sget v3, Lcom/baidu/mapapi/Mj;->s:I

    if-ne v2, v3, :cond_1

    invoke-static {v5, v4}, Lcom/baidu/mapapi/Mj;->SetProxyInfo(Ljava/lang/String;I)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v2, Lcom/baidu/mapapi/Mj;->s:I

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/baidu/mapapi/Mj;->a(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "wap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v0

    if-nez v2, :cond_2

    const-string v2, "10.0.0.172"

    :cond_2
    if-ne v0, v6, :cond_3

    move v0, v1

    :cond_3
    invoke-static {v2, v0}, Lcom/baidu/mapapi/Mj;->SetProxyInfo(Ljava/lang/String;I)I

    goto :goto_0

    :cond_4
    invoke-static {v5, v4}, Lcom/baidu/mapapi/Mj;->SetProxyInfo(Ljava/lang/String;I)I

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, "wap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v0

    if-nez v2, :cond_6

    const-string v2, "10.0.0.172"

    :cond_6
    if-ne v0, v6, :cond_8

    :goto_1
    invoke-static {v2, v1}, Lcom/baidu/mapapi/Mj;->SetProxyInfo(Ljava/lang/String;I)I

    goto :goto_0

    :cond_7
    invoke-static {v5, v4}, Lcom/baidu/mapapi/Mj;->SetProxyInfo(Ljava/lang/String;I)I

    goto :goto_0

    :cond_8
    move v1, v0

    goto :goto_1
.end method

.method private d()I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.telephony.cdma.CdmaCellLocation"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/baidu/mapapi/Mj;->Y:Ljava/lang/Class;

    sget-object v1, Lcom/baidu/mapapi/Mj;->Y:Ljava/lang/Class;

    const-string v2, "getBaseStationId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/baidu/mapapi/Mj;->W:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/baidu/mapapi/Mj;->Y:Ljava/lang/Class;

    const-string v2, "getNetworkId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/baidu/mapapi/Mj;->X:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method private e()V
    .locals 4

    const/16 v3, 0xa0

    sget-object v0, Lcom/baidu/mapapi/Mj;->e:Landroid/content/Context;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/baidu/mapapi/Mj;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapapi/Mj;->x:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/Mj;->y:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/baidu/mapapi/Mj;->e:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/baidu/mapapi/Mj;->y:Landroid/telephony/TelephonyManager;

    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/Mj;->y:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mapapi/Mj;->y:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapapi/Mj;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/mapapi/Mj;->y:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapapi/Mj;->u:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/baidu/mapapi/Mj;->v:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    sput-object v0, Lcom/baidu/mapapi/Mj;->w:Ljava/lang/String;

    :cond_2
    sget-object v0, Lcom/baidu/mapapi/Mj;->e:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    sput v2, Lcom/baidu/mapapi/Mj;->g:I

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    sput v2, Lcom/baidu/mapapi/Mj;->h:I

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    :cond_3
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/baidu/mapapi/Mj;->j:F

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_5

    :try_start_0
    const-string v0, "android.util.DisplayMetrics"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "densityDpi"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/baidu/mapapi/Mj;->i:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/baidu/mapapi/Mj;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/baidu/mapapi/Mj;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    sget-object v1, Lcom/baidu/mapapi/Mj;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/Mj;->G:Ljava/lang/String;

    sget-object v0, Lcom/baidu/mapapi/Mj;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/Mj;->H:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sput v3, Lcom/baidu/mapapi/Mj;->i:I

    goto :goto_0

    :cond_5
    sput v3, Lcom/baidu/mapapi/Mj;->i:I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "baidumap"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapapi/Mj;->G:Ljava/lang/String;

    goto :goto_1
.end method

.method private static f()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/baidu/mapapi/Mj;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v0

    if-nez v1, :cond_0

    const-string v1, "10.0.0.172"

    :cond_0
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    const/16 v0, 0x50

    :cond_1
    invoke-static {v1, v0}, Lcom/baidu/mapapi/Mj;->SetProxyInfo(Ljava/lang/String;I)I

    :goto_0
    return-void

    :cond_2
    invoke-static {v3, v2}, Lcom/baidu/mapapi/Mj;->SetProxyInfo(Ljava/lang/String;I)I

    goto :goto_0

    :cond_3
    invoke-static {v3, v2}, Lcom/baidu/mapapi/Mj;->SetProxyInfo(Ljava/lang/String;I)I

    goto :goto_0
.end method

.method private static g()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lcom/baidu/mapapi/Mj;->e:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    sget v3, Lcom/baidu/mapapi/Mj;->s:I

    if-ne v2, v3, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    sget v2, Lcom/baidu/mapapi/Mj;->s:I

    if-nez v2, :cond_2

    invoke-static {v0}, Lcom/baidu/mapapi/Mj;->a(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static native getNewBundle(III)Landroid/os/Bundle;
.end method

.method public static native initOfflineCC()I
.end method

.method public static native initSearchCC()I
.end method

.method public static native nativeDone()V
.end method

.method public static native nativeInit()V
.end method

.method public static native nativeRender()V
.end method

.method public static native nativeResize(II)V
.end method

.method public static native renderBaiduMap(Landroid/graphics/Bitmap;)V
.end method

.method public static native renderCalDisScreenPos(Landroid/os/Bundle;)V
.end method

.method public static native renderFlsScreenPos(Landroid/os/Bundle;)V
.end method

.method public static native renderUpdateScreen([SII)V
.end method

.method public static native sendBundle(Landroid/os/Bundle;)I
.end method

.method public static native sendPhoneInfo(Landroid/os/Bundle;)V
.end method


# virtual methods
.method public native InitMapApiEngine()I
.end method

.method public JNI_MapcallBackProc(IIII)V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/baidu/mapapi/Mj$a;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/Mj$a;-><init>(Lcom/baidu/mapapi/Mj;)V

    iput p1, v0, Lcom/baidu/mapapi/Mj$a;->a:I

    iput p2, v0, Lcom/baidu/mapapi/Mj$a;->b:I

    iput p3, v0, Lcom/baidu/mapapi/Mj$a;->c:I

    iput p4, v0, Lcom/baidu/mapapi/Mj$a;->d:I

    sget-object v1, Lcom/baidu/mapapi/Mj;->t:Landroid/os/Handler;

    invoke-virtual {v1, v2, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/baidu/mapapi/Mj;->t:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public JNI_callBackProc(III)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/baidu/mapapi/Mj;->c()Z

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/baidu/mapapi/Mj;->a:Lcom/baidu/mapapi/f;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/mapapi/Mj;->a:Lcom/baidu/mapapi/f;

    int-to-long v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/baidu/mapapi/f;->a(IIJ)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, p2, p3}, Lcom/baidu/mapapi/Mj;->a(II)V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0, p2}, Lcom/baidu/mapapi/Mj;->a(I)V

    goto :goto_0

    :sswitch_4
    sget-object v0, Lcom/baidu/mapapi/Mj;->d:Lcom/baidu/mapapi/MapView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/mapapi/Mj;->d:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/mapapi/MapView;->a(III)Z

    goto :goto_0

    :sswitch_5
    new-instance v0, Lcom/baidu/mapapi/cloud/a;

    add-int/lit16 v1, p1, -0x2710

    invoke-direct {v0, v1, p2, p3}, Lcom/baidu/mapapi/cloud/a;-><init>(III)V

    iget-object v1, p0, Lcom/baidu/mapapi/Mj;->E:Lcom/baidu/mapapi/cloud/c;

    invoke-interface {v1, v0}, Lcom/baidu/mapapi/cloud/c;->a(Lcom/baidu/mapapi/cloud/a;)V

    goto :goto_0

    :sswitch_6
    sget-object v0, Lcom/baidu/mapapi/Mj;->d:Lcom/baidu/mapapi/MapView;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/baidu/mapapi/Mj;->d:Lcom/baidu/mapapi/MapView;

    const/16 v1, 0x1f54

    invoke-virtual {v0, v1, p2, p3}, Lcom/baidu/mapapi/MapView;->a(III)Z

    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/Mj;->D:Lcom/baidu/mapapi/j;

    if-eqz v0, :cond_0

    sget v0, Lcom/baidu/mapapi/Mj;->l:I

    sget v1, Lcom/baidu/mapapi/Mj;->n:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v3, :cond_2

    sget v0, Lcom/baidu/mapapi/Mj;->m:I

    sget v1, Lcom/baidu/mapapi/Mj;->o:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v3, :cond_2

    const/4 v0, 0x1

    sget v1, Lcom/baidu/mapapi/Mj;->p:I

    if-ne v0, v1, :cond_3

    :cond_2
    new-instance v0, Lcom/baidu/mapapi/MKEvent;

    add-int/lit16 v1, p1, -0x2710

    invoke-direct {v0, v1, p2, p3}, Lcom/baidu/mapapi/MKEvent;-><init>(III)V

    iget-object v1, p0, Lcom/baidu/mapapi/Mj;->D:Lcom/baidu/mapapi/j;

    invoke-interface {v1, v0}, Lcom/baidu/mapapi/j;->a(Lcom/baidu/mapapi/MKEvent;)V

    :cond_3
    sput v2, Lcom/baidu/mapapi/Mj;->l:I

    sput v2, Lcom/baidu/mapapi/Mj;->m:I

    sput v2, Lcom/baidu/mapapi/Mj;->o:I

    sput v2, Lcom/baidu/mapapi/Mj;->n:I

    sput v2, Lcom/baidu/mapapi/Mj;->p:I

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/baidu/mapapi/Mj;->A:Lcom/baidu/mapapi/j;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/baidu/mapapi/MKEvent;

    add-int/lit16 v1, p1, -0x2710

    invoke-direct {v0, v1, p2, p3}, Lcom/baidu/mapapi/MKEvent;-><init>(III)V

    iget-object v1, p0, Lcom/baidu/mapapi/Mj;->A:Lcom/baidu/mapapi/j;

    invoke-interface {v1, v0}, Lcom/baidu/mapapi/j;->a(Lcom/baidu/mapapi/MKEvent;)V

    goto :goto_0

    :sswitch_8
    sget-object v0, Lcom/baidu/mapapi/Mj;->b:Lcom/baidu/mapapi/MKLocationManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/mapapi/Mj;->b:Lcom/baidu/mapapi/MKLocationManager;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MKLocationManager;->c()V

    goto/16 :goto_0

    :sswitch_9
    iget-object v0, p0, Lcom/baidu/mapapi/Mj;->B:Lcom/baidu/mapapi/j;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/baidu/mapapi/MKEvent;

    add-int/lit16 v1, p1, -0x2710

    invoke-direct {v0, v1, p2, p3}, Lcom/baidu/mapapi/MKEvent;-><init>(III)V

    iget-object v1, p0, Lcom/baidu/mapapi/Mj;->B:Lcom/baidu/mapapi/j;

    invoke-interface {v1, v0}, Lcom/baidu/mapapi/j;->a(Lcom/baidu/mapapi/MKEvent;)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/baidu/mapapi/Mj;->C:Lcom/baidu/mapapi/j;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/baidu/mapapi/MKEvent;

    invoke-direct {v0, p2, p2, p3}, Lcom/baidu/mapapi/MKEvent;-><init>(III)V

    iget-object v1, p0, Lcom/baidu/mapapi/Mj;->C:Lcom/baidu/mapapi/j;

    invoke-interface {v1, v0}, Lcom/baidu/mapapi/j;->a(Lcom/baidu/mapapi/MKEvent;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_4
        0x1f9 -> :sswitch_4
        0x1fa -> :sswitch_0
        0x1ff -> :sswitch_2
        0x200 -> :sswitch_3
        0x1388 -> :sswitch_1
        0x2711 -> :sswitch_9
        0x2712 -> :sswitch_9
        0x2713 -> :sswitch_9
        0x2714 -> :sswitch_9
        0x2715 -> :sswitch_8
        0x2716 -> :sswitch_9
        0x2717 -> :sswitch_7
        0x2719 -> :sswitch_7
        0x271a -> :sswitch_9
        0x271b -> :sswitch_9
        0x271c -> :sswitch_9
        0x271d -> :sswitch_a
        0x271e -> :sswitch_6
        0x271f -> :sswitch_9
        0x2720 -> :sswitch_9
        0x2721 -> :sswitch_9
        0x2722 -> :sswitch_9
        0x2908 -> :sswitch_5
        0x2909 -> :sswitch_5
    .end sparse-switch
.end method

.method public J_GetDevInfo(I)Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v1, "im"

    sget-object v2, Lcom/baidu/mapapi/Mj;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v1, "is"

    sget-object v2, Lcom/baidu/mapapi/Mj;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v1, "mb"

    sget-object v2, Lcom/baidu/mapapi/Mj;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "os"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/baidu/mapapi/Mj;->w:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cx"

    sget v2, Lcom/baidu/mapapi/Mj;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "cy"

    sget v2, Lcom/baidu/mapapi/Mj;->h:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "xd"

    sget v2, Lcom/baidu/mapapi/Mj;->i:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "yd"

    sget v2, Lcom/baidu/mapapi/Mj;->i:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_3
    const-string v1, "na"

    sget-object v2, Lcom/baidu/mapapi/Mj;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public native SetCacheDirectoryCC(Ljava/lang/String;)I
.end method

.method public native StartApiEngineCC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native StopApiEngineCC()I
.end method

.method public native UnInitMapApiEngine()I
.end method

.method a(Lcom/baidu/mapapi/MKMapViewListener;)V
    .locals 1

    new-instance v0, Lcom/baidu/mapapi/i;

    invoke-direct {v0, p1}, Lcom/baidu/mapapi/i;-><init>(Lcom/baidu/mapapi/MKMapViewListener;)V

    iput-object v0, p0, Lcom/baidu/mapapi/Mj;->D:Lcom/baidu/mapapi/j;

    return-void
.end method

.method a(Lcom/baidu/mapapi/MKOfflineMapListener;)V
    .locals 1

    new-instance v0, Lcom/baidu/mapapi/k;

    invoke-direct {v0, p1}, Lcom/baidu/mapapi/k;-><init>(Lcom/baidu/mapapi/MKOfflineMapListener;)V

    iput-object v0, p0, Lcom/baidu/mapapi/Mj;->C:Lcom/baidu/mapapi/j;

    return-void
.end method

.method a(Lcom/baidu/mapapi/MKSearchListener;)V
    .locals 1

    new-instance v0, Lcom/baidu/mapapi/m;

    invoke-direct {v0, p1}, Lcom/baidu/mapapi/m;-><init>(Lcom/baidu/mapapi/MKSearchListener;)V

    iput-object v0, p0, Lcom/baidu/mapapi/Mj;->B:Lcom/baidu/mapapi/j;

    return-void
.end method

.method a()Z
    .locals 15

    const/4 v14, 0x1

    const-wide/16 v0, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    invoke-static {}, Lcom/baidu/mapapi/Mj;->f()V

    new-instance v2, Lcom/baidu/mapapi/b;

    invoke-direct {v2}, Lcom/baidu/mapapi/b;-><init>()V

    sput-object v2, Lcom/baidu/mapapi/Mj;->V:Lcom/baidu/mapapi/b;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v3, Lcom/baidu/mapapi/Mj;->e:Landroid/content/Context;

    sget-object v5, Lcom/baidu/mapapi/Mj;->V:Lcom/baidu/mapapi/b;

    invoke-virtual {v3, v5, v2, v11, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    sget-object v2, Lcom/baidu/mapapi/Mj;->b:Lcom/baidu/mapapi/MKLocationManager;

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/baidu/mapapi/Mj;->M:J

    iput-object v11, p0, Lcom/baidu/mapapi/Mj;->U:Ljava/util/List;

    iput v7, p0, Lcom/baidu/mapapi/Mj;->S:I

    iput v7, p0, Lcom/baidu/mapapi/Mj;->R:I

    sget-object v2, Lcom/baidu/mapapi/Mj;->b:Lcom/baidu/mapapi/MKLocationManager;

    invoke-virtual {v2}, Lcom/baidu/mapapi/MKLocationManager;->a()V

    move-wide v2, v0

    move v5, v4

    move v6, v4

    invoke-static/range {v0 .. v7}, Lcom/baidu/mapapi/Mj;->UpdataGPS(DDFFFI)V

    move v8, v7

    move v9, v7

    move v10, v7

    move-object v12, v11

    move-object v13, v11

    invoke-static/range {v7 .. v13}, Lcom/baidu/mapapi/Mj;->SetCellData(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/baidu/mapapi/Mj;->q:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/mapapi/Mj;->b:Lcom/baidu/mapapi/MKLocationManager;

    invoke-virtual {v0, v7}, Lcom/baidu/mapapi/MKLocationManager;->enableProvider(I)Z

    :cond_0
    sget-boolean v0, Lcom/baidu/mapapi/Mj;->r:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/baidu/mapapi/Mj;->b:Lcom/baidu/mapapi/MKLocationManager;

    invoke-virtual {v0, v14}, Lcom/baidu/mapapi/MKLocationManager;->enableProvider(I)Z

    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/Mj;->aa:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/Mj$b;

    iget-object v2, p0, Lcom/baidu/mapapi/Mj;->Z:Landroid/os/Handler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/baidu/mapapi/Mj;->F:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/mapapi/Mj;->G:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/mapapi/Mj;->H:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/mapapi/Mj;->StartApiEngineCC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    :try_start_0
    sget-object v0, Lcom/baidu/mapapi/Mj;->V:Lcom/baidu/mapapi/b;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/baidu/mapapi/Mj;->e:Landroid/content/Context;

    sget-object v1, Lcom/baidu/mapapi/Mj;->V:Lcom/baidu/mapapi/b;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/mapapi/Mj;->V:Lcom/baidu/mapapi/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/baidu/mapapi/Mj;->aa:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/Mj$b;

    iget-object v2, p0, Lcom/baidu/mapapi/Mj;->Z:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "baidumap"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v11, Lcom/baidu/mapapi/Mj;->V:Lcom/baidu/mapapi/b;

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/baidu/mapapi/Mj;->b:Lcom/baidu/mapapi/MKLocationManager;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/baidu/mapapi/Mj;->b:Lcom/baidu/mapapi/MKLocationManager;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MKLocationManager;->b()V

    :cond_5
    :goto_3
    return v7

    :cond_6
    move v7, v14

    goto :goto_3
.end method

.method a(Ljava/lang/String;Lcom/baidu/mapapi/MKGeneralListener;)Z
    .locals 3

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    new-instance v0, Lcom/baidu/mapapi/g;

    invoke-direct {v0, p2}, Lcom/baidu/mapapi/g;-><init>(Lcom/baidu/mapapi/MKGeneralListener;)V

    iput-object v0, p0, Lcom/baidu/mapapi/Mj;->A:Lcom/baidu/mapapi/j;

    :cond_0
    iput-object p1, p0, Lcom/baidu/mapapi/Mj;->F:Ljava/lang/String;

    sget-object v0, Lcom/baidu/mapapi/Mj;->a:Lcom/baidu/mapapi/f;

    if-nez v0, :cond_1

    new-instance v0, Lcom/baidu/mapapi/f;

    sget-object v2, Lcom/baidu/mapapi/Mj;->e:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/baidu/mapapi/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/mapapi/Mj;->a:Lcom/baidu/mapapi/f;

    :cond_1
    sget-object v0, Lcom/baidu/mapapi/Mj;->e:Landroid/content/Context;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/mapapi/Mj;->y:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_2

    sget-object v0, Lcom/baidu/mapapi/Mj;->e:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/baidu/mapapi/Mj;->y:Landroid/telephony/TelephonyManager;

    :cond_2
    iget-object v0, p0, Lcom/baidu/mapapi/Mj;->z:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_3

    sget-object v0, Lcom/baidu/mapapi/Mj;->e:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/baidu/mapapi/Mj;->z:Landroid/net/wifi/WifiManager;

    :cond_3
    iget-object v0, p0, Lcom/baidu/mapapi/Mj;->z:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/mapapi/Mj;->z:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/mapapi/Mj;->z:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    :cond_4
    new-instance v0, Lcom/baidu/mapapi/Mj$1;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/Mj$1;-><init>(Lcom/baidu/mapapi/Mj;)V

    sput-object v0, Lcom/baidu/mapapi/Mj;->t:Landroid/os/Handler;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v2}, Lcom/baidu/mapapi/Mj;->initClass(Ljava/lang/Object;I)I

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_0
    return v0

    :cond_5
    invoke-virtual {p0}, Lcom/baidu/mapapi/Mj;->InitMapApiEngine()I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/baidu/mapapi/Mj;->aa:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method b()Z
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/baidu/mapapi/Mj;->V:Lcom/baidu/mapapi/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/mapapi/Mj;->e:Landroid/content/Context;

    sget-object v1, Lcom/baidu/mapapi/Mj;->V:Lcom/baidu/mapapi/b;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/mapapi/Mj;->V:Lcom/baidu/mapapi/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/baidu/mapapi/Mj;->aa:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/Mj$b;

    iget-object v2, p0, Lcom/baidu/mapapi/Mj;->Z:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "baidumap"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v2, Lcom/baidu/mapapi/Mj;->V:Lcom/baidu/mapapi/b;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/baidu/mapapi/Mj;->b:Lcom/baidu/mapapi/MKLocationManager;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/baidu/mapapi/Mj;->b:Lcom/baidu/mapapi/MKLocationManager;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MKLocationManager;->b()V

    :cond_2
    invoke-virtual {p0}, Lcom/baidu/mapapi/Mj;->StopApiEngineCC()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_2
.end method

.method c()Z
    .locals 10

    const-wide/16 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v2, 0x0

    sget-object v0, Lcom/baidu/mapapi/Mj;->a:Lcom/baidu/mapapi/f;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/Mj;->y:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/baidu/mapapi/Mj;->e:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/baidu/mapapi/Mj;->y:Landroid/telephony/TelephonyManager;

    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/Mj;->y:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v3, 0x3e8

    div-long v3, v0, v3

    iget-wide v0, p0, Lcom/baidu/mapapi/Mj;->M:J

    sub-long v0, v3, v0

    cmp-long v0, v0, v8

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/baidu/mapapi/Mj;->y:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    iput-wide v3, p0, Lcom/baidu/mapapi/Mj;->M:J

    if-eqz v1, :cond_d

    instance-of v0, v1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v0, :cond_d

    move-object v0, v1

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v3

    iput v3, p0, Lcom/baidu/mapapi/Mj;->Q:I

    iget v3, p0, Lcom/baidu/mapapi/Mj;->Q:I

    if-gez v3, :cond_2

    iput v2, p0, Lcom/baidu/mapapi/Mj;->Q:I

    :cond_2
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/Mj;->P:I

    iget v0, p0, Lcom/baidu/mapapi/Mj;->P:I

    if-gez v0, :cond_3

    iput v2, p0, Lcom/baidu/mapapi/Mj;->P:I

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/baidu/mapapi/Mj;->y:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    const-string v2, "null"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v5, :cond_4

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/baidu/mapapi/Mj;->N:I

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v6, :cond_5

    const/4 v2, 0x3

    const/4 v3, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/Mj;->O:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_5
    :goto_2
    :try_start_1
    sget-object v0, Lcom/baidu/mapapi/Mj;->Y:Ljava/lang/Class;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/baidu/mapapi/Mj;->Y:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/baidu/mapapi/Mj;->Y:Ljava/lang/Class;

    const-string v2, "getSystemId"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/Mj;->O:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/baidu/mapapi/Mj;->z:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_7

    sget-object v0, Lcom/baidu/mapapi/Mj;->e:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/baidu/mapapi/Mj;->z:Landroid/net/wifi/WifiManager;

    :cond_7
    iget-object v0, p0, Lcom/baidu/mapapi/Mj;->z:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/baidu/mapapi/Mj;->z:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/baidu/mapapi/Mj;->L:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v8

    if-lez v2, :cond_8

    iget-object v2, p0, Lcom/baidu/mapapi/Mj;->z:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->startScan()Z

    iput-object v7, p0, Lcom/baidu/mapapi/Mj;->T:Ljava/util/List;

    iput-wide v0, p0, Lcom/baidu/mapapi/Mj;->L:J

    :cond_8
    iget-object v0, p0, Lcom/baidu/mapapi/Mj;->z:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/Mj;->T:Ljava/util/List;

    iget-object v0, p0, Lcom/baidu/mapapi/Mj;->T:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/mapapi/Mj;->T:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_a

    :cond_9
    const-string v0, ""

    invoke-static {v0}, Lcom/baidu/mapapi/Mj;->SetUpdateWifi(Ljava/lang/String;)V

    :cond_a
    :goto_4
    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v0, ""

    const-string v6, ""

    iget v0, p0, Lcom/baidu/mapapi/Mj;->Q:I

    if-lez v0, :cond_15

    iget v0, p0, Lcom/baidu/mapapi/Mj;->P:I

    if-ltz v0, :cond_15

    iget v0, p0, Lcom/baidu/mapapi/Mj;->N:I

    if-ltz v0, :cond_15

    sget-object v0, Lcom/baidu/mapapi/Mj;->a:Lcom/baidu/mapapi/f;

    iget v1, p0, Lcom/baidu/mapapi/Mj;->N:I

    iget v2, p0, Lcom/baidu/mapapi/Mj;->O:I

    iget v3, p0, Lcom/baidu/mapapi/Mj;->P:I

    iget v4, p0, Lcom/baidu/mapapi/Mj;->Q:I

    iget-object v5, p0, Lcom/baidu/mapapi/Mj;->K:Ljava/util/List;

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/mapapi/f;->a(IIIILjava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_15

    move-object v4, v6

    :goto_5
    iget-object v0, p0, Lcom/baidu/mapapi/Mj;->T:Ljava/util/List;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/baidu/mapapi/Mj;->T:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_14

    sget-object v0, Lcom/baidu/mapapi/Mj;->a:Lcom/baidu/mapapi/f;

    iget-object v1, p0, Lcom/baidu/mapapi/Mj;->T:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/f;->a(Ljava/util/List;)V

    sget-object v0, Lcom/baidu/mapapi/Mj;->a:Lcom/baidu/mapapi/f;

    iget-object v1, p0, Lcom/baidu/mapapi/Mj;->T:Ljava/util/List;

    invoke-virtual {v0, v1, v6}, Lcom/baidu/mapapi/f;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_13

    invoke-static {v1}, Lcom/baidu/mapapi/Mj;->SetUpdateWifi(Ljava/lang/String;)V

    move-object v0, v1

    :goto_6
    sget-object v2, Lcom/baidu/mapapi/Mj;->a:Lcom/baidu/mapapi/f;

    iget-object v3, p0, Lcom/baidu/mapapi/Mj;->T:Ljava/util/List;

    invoke-virtual {v2, v3, v1}, Lcom/baidu/mapapi/f;->b(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_12

    move-object v5, v0

    :goto_7
    iget v0, p0, Lcom/baidu/mapapi/Mj;->S:I

    iget v1, p0, Lcom/baidu/mapapi/Mj;->Q:I

    if-ne v0, v1, :cond_b

    iget v0, p0, Lcom/baidu/mapapi/Mj;->R:I

    iget v1, p0, Lcom/baidu/mapapi/Mj;->P:I

    if-ne v0, v1, :cond_b

    sget-object v0, Lcom/baidu/mapapi/Mj;->a:Lcom/baidu/mapapi/f;

    iget-object v1, p0, Lcom/baidu/mapapi/Mj;->T:Ljava/util/List;

    iget-object v2, p0, Lcom/baidu/mapapi/Mj;->U:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapapi/f;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    iget-object v0, p0, Lcom/baidu/mapapi/Mj;->T:Ljava/util/List;

    iput-object v0, p0, Lcom/baidu/mapapi/Mj;->U:Ljava/util/List;

    iget v0, p0, Lcom/baidu/mapapi/Mj;->Q:I

    iput v0, p0, Lcom/baidu/mapapi/Mj;->S:I

    iget v0, p0, Lcom/baidu/mapapi/Mj;->P:I

    iput v0, p0, Lcom/baidu/mapapi/Mj;->R:I

    iget v0, p0, Lcom/baidu/mapapi/Mj;->Q:I

    iget v1, p0, Lcom/baidu/mapapi/Mj;->P:I

    iget v2, p0, Lcom/baidu/mapapi/Mj;->N:I

    iget v3, p0, Lcom/baidu/mapapi/Mj;->O:I

    invoke-static/range {v0 .. v6}, Lcom/baidu/mapapi/Mj;->SetCellData(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_d
    :try_start_2
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lt v0, v6, :cond_3

    sget-object v0, Lcom/baidu/mapapi/Mj;->Y:Ljava/lang/Class;

    if-nez v0, :cond_e

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/baidu/mapapi/Mj;->d()I

    move-result v2

    if-eq v0, v2, :cond_3

    :cond_e
    sget-object v0, Lcom/baidu/mapapi/Mj;->Y:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/baidu/mapapi/Mj;->W:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/Mj;->Q:I

    iget v0, p0, Lcom/baidu/mapapi/Mj;->Q:I

    if-gez v0, :cond_f

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mapapi/Mj;->Q:I

    :cond_f
    sget-object v0, Lcom/baidu/mapapi/Mj;->X:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/Mj;->P:I

    iget v0, p0, Lcom/baidu/mapapi/Mj;->P:I

    if-gez v0, :cond_3

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mapapi/Mj;->P:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    :cond_10
    iput v2, p0, Lcom/baidu/mapapi/Mj;->Q:I

    iput v2, p0, Lcom/baidu/mapapi/Mj;->P:I

    iput v2, p0, Lcom/baidu/mapapi/Mj;->N:I

    iput v2, p0, Lcom/baidu/mapapi/Mj;->O:I

    goto/16 :goto_3

    :cond_11
    iput-object v7, p0, Lcom/baidu/mapapi/Mj;->T:Ljava/util/List;

    const-string v0, ""

    invoke-static {v0}, Lcom/baidu/mapapi/Mj;->SetUpdateWifi(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_12
    move-object v6, v9

    move-object v5, v0

    goto/16 :goto_7

    :cond_13
    move-object v0, v8

    goto/16 :goto_6

    :cond_14
    move-object v6, v9

    move-object v5, v8

    goto/16 :goto_7

    :cond_15
    move-object v4, v7

    goto/16 :goto_5
.end method

.method public native initClass(Ljava/lang/Object;I)I
.end method

.method public initGeoListener(Lcom/baidu/mapapi/cloud/GeoSearchListener;)V
    .locals 1

    new-instance v0, Lcom/baidu/mapapi/cloud/b;

    invoke-direct {v0, p1}, Lcom/baidu/mapapi/cloud/b;-><init>(Lcom/baidu/mapapi/cloud/GeoSearchListener;)V

    iput-object v0, p0, Lcom/baidu/mapapi/Mj;->E:Lcom/baidu/mapapi/cloud/c;

    return-void
.end method
