.class Lcom/android/server/ssrm/Monitor$4;
.super Landroid/app/IProcessObserver$Stub;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/Monitor;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/Monitor;)V
    .locals 0

    .prologue
    .line 2361
    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$4;->this$0:Lcom/android/server/ssrm/Monitor;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 0
    .parameter "pid"
    .parameter "uid"
    .parameter "foregroundActivities"

    .prologue
    .line 2364
    return-void
.end method

.method public onImportanceChanged(III)V
    .locals 0
    .parameter "pid"
    .parameter "uid"
    .parameter "importance"

    .prologue
    .line 2368
    return-void
.end method

.method public onProcessDied(II)V
    .locals 1
    .parameter "pid"
    .parameter "uid"

    .prologue
    .line 2372
    sget v0, Lcom/android/server/ssrm/Monitor;->mPermanentAppPID:I

    if-ne v0, p1, :cond_0

    .line 2373
    const/4 v0, 0x0

    sput v0, Lcom/android/server/ssrm/Monitor;->mPermanentAppPID:I

    .line 2374
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3700()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2375
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$3700()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->handleMonitorStateChanged()V

    .line 2378
    :cond_0
    return-void
.end method
