.class public Lcom/nuance/swype/connect/ConfigSetting;
.super Ljava/lang/Object;
.source "ConfigSetting.java"


# static fields
.field public static final CONNECT_BACKUP_NAMESPACE:Ljava/lang/String; = "SwypeConnect"

.field public static final CONNECT_PREFERENCES:Ljava/lang/String; = "ConnectPrefs"

.field public static final CONNECT_VERSION:Ljava/lang/String; = "3.0"

.field private static G_ANDROID_VERSION:I = 0x0

.field public static final LOGTAG:Ljava/lang/String; = "Connect"

.field public static final LOGTAG_COMMUNICATION:Ljava/lang/String; = "ConnectCommunication"

.field public static final LOGTAG_STATISTICS:Ljava/lang/String; = "ConnectStats"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, -0x1

    sput v0, Lcom/nuance/swype/connect/ConfigSetting;->G_ANDROID_VERSION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAndroidVersion()I
    .locals 2

    .prologue
    .line 33
    sget v0, Lcom/nuance/swype/connect/ConfigSetting;->G_ANDROID_VERSION:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/nuance/swype/connect/ConfigSetting;->G_ANDROID_VERSION:I

    .line 36
    :cond_0
    sget v0, Lcom/nuance/swype/connect/ConfigSetting;->G_ANDROID_VERSION:I

    return v0
.end method
