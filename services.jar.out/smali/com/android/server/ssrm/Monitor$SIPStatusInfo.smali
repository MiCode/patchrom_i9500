.class Lcom/android/server/ssrm/Monitor$SIPStatusInfo;
.super Ljava/lang/Object;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SIPStatusInfo"
.end annotation


# instance fields
.field public isSIPEventFilterThreadRunning:Z

.field public isSIPVisible:Z

.field public latestSIPPidReport:I

.field public latestSIPVisibleReport:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2415
    iput-boolean v0, p0, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->isSIPEventFilterThreadRunning:Z

    .line 2417
    iput-boolean v0, p0, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->isSIPVisible:Z

    .line 2419
    iput-boolean v0, p0, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->latestSIPVisibleReport:Z

    .line 2421
    iput v0, p0, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->latestSIPPidReport:I

    return-void
.end method

.method public static getInstance()Lcom/android/server/ssrm/Monitor$SIPStatusInfo;
    .locals 1

    .prologue
    .line 2408
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$5400()Lcom/android/server/ssrm/Monitor$SIPStatusInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2409
    new-instance v0, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;

    invoke-direct {v0}, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;-><init>()V

    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->access$5402(Lcom/android/server/ssrm/Monitor$SIPStatusInfo;)Lcom/android/server/ssrm/Monitor$SIPStatusInfo;

    .line 2411
    :cond_0
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$5400()Lcom/android/server/ssrm/Monitor$SIPStatusInfo;

    move-result-object v0

    return-object v0
.end method
