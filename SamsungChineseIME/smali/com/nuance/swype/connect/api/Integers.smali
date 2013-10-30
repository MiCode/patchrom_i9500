.class public Lcom/nuance/swype/connect/api/Integers;
.super Ljava/lang/Object;
.source "Integers.java"


# static fields
.field public static final CATEGORY_ALPHA:I = 0x1

.field public static final CATEGORY_CHINESE:I = 0x3

.field public static final CATEGORY_JAPANESE:I = 0x4

.field public static final CATEGORY_KOREAN:I = 0x2

.field public static final CATEGORY_UNSPECIFIED:I = 0x0

.field public static final DOWNLOAD_FAILED_CANCELED:I = 0x2

.field public static final DOWNLOAD_FAILED_HTTP:I = 0x0

.field public static final DOWNLOAD_FAILED_MAX_RETRY:I = 0x1

.field public static final DOWNLOAD_STOPPED_NETWORK_TIMEOUT:I = 0x4

.field public static final DOWNLOAD_STOPPED_USER_CANCELED:I = 0x3

.field public static final INSTALL_AVAILABLE:I = 0x0

.field public static final INSTALL_CANCELED:I = 0x8

.field public static final INSTALL_DOWNLOAD:I = 0x3

.field public static final INSTALL_DOWNLOAD_COMPLETE:I = 0x4

.field public static final INSTALL_DOWNLOAD_VERIFIED:I = 0x5

.field public static final INSTALL_FAILED:I = 0x9

.field public static final INSTALL_INSTALLED:I = 0x7

.field public static final INSTALL_PENDING:I = 0x1

.field public static final INSTALL_REMOVED:I = 0xa

.field public static final INSTALL_REQUEST:I = 0x2

.field public static final INSTALL_UNKNOWN:I = 0xb

.field public static STATUS_EXCEPTION:I

.field public static STATUS_FAILED:I

.field public static STATUS_SUCCESS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/high16 v0, -0x8000

    sput v0, Lcom/nuance/swype/connect/api/Integers;->STATUS_SUCCESS:I

    .line 13
    const/4 v0, 0x0

    sput v0, Lcom/nuance/swype/connect/api/Integers;->STATUS_FAILED:I

    .line 18
    const/4 v0, 0x1

    sput v0, Lcom/nuance/swype/connect/api/Integers;->STATUS_EXCEPTION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
