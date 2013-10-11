.class public Lcom/android/internal/telephony/Nat464xlatConstants;
.super Ljava/lang/Object;
.source "Nat464xlatConstants.java"


# static fields
.field public static ACTION_NAT_464XLAT_STATE_CHANGED:Ljava/lang/String;

.field public static DATA_CLAT_INTERFACE:Ljava/lang/String;

.field public static DATA_STATE:Ljava/lang/String;

.field public static DATA_UPSTREAM_INTERFACE:Ljava/lang/String;

.field public static STATE_RUNNING:Ljava/lang/String;

.field public static STATE_STOPPING:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "com.android.server.connectivity.nat464xlatservice"

    sput-object v0, Lcom/android/internal/telephony/Nat464xlatConstants;->ACTION_NAT_464XLAT_STATE_CHANGED:Ljava/lang/String;

    .line 21
    const-string v0, "DATA_STATE"

    sput-object v0, Lcom/android/internal/telephony/Nat464xlatConstants;->DATA_STATE:Ljava/lang/String;

    .line 22
    const-string v0, "DATA_UPSTREAM_INTERFACE"

    sput-object v0, Lcom/android/internal/telephony/Nat464xlatConstants;->DATA_UPSTREAM_INTERFACE:Ljava/lang/String;

    .line 23
    const-string v0, "DATA_CLAT_INTERFACE"

    sput-object v0, Lcom/android/internal/telephony/Nat464xlatConstants;->DATA_CLAT_INTERFACE:Ljava/lang/String;

    .line 25
    const-string v0, "running"

    sput-object v0, Lcom/android/internal/telephony/Nat464xlatConstants;->STATE_RUNNING:Ljava/lang/String;

    .line 26
    const-string v0, "stopping"

    sput-object v0, Lcom/android/internal/telephony/Nat464xlatConstants;->STATE_STOPPING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
