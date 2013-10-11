.class abstract Landroid/hardware/contextaware/utilbundle/autotest/CmdProcessStressTest;
.super Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTest;
.source "CmdProcessStressTest.java"


# instance fields
.field private mChange:Z


# direct methods
.method protected constructor <init>(I)V
    .locals 1
    .parameter "delayTime"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTest;-><init>(I)V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/CmdProcessStressTest;->mChange:Z

    .line 36
    return-void
.end method


# virtual methods
.method protected abstract clear()V
.end method

.method protected abstract getType()I
.end method

.method protected abstract registerListener()V
.end method

.method public final run()V
    .locals 3

    .prologue
    .line 57
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTest;->getDelayTime()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 59
    iget-boolean v1, p0, Landroid/hardware/contextaware/utilbundle/autotest/CmdProcessStressTest;->mChange:Z

    if-eqz v1, :cond_1

    .line 60
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/contextaware/utilbundle/autotest/CmdProcessStressTest;->mChange:Z

    .line 61
    invoke-virtual {p0}, Landroid/hardware/contextaware/utilbundle/autotest/CmdProcessStressTest;->registerListener()V

    .line 67
    :goto_0
    invoke-super {p0}, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTest;->isStopTest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {p0}, Landroid/hardware/contextaware/utilbundle/autotest/CmdProcessStressTest;->clear()V

    .line 75
    :goto_1
    return-void

    .line 63
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/contextaware/utilbundle/autotest/CmdProcessStressTest;->mChange:Z

    .line 64
    invoke-virtual {p0}, Landroid/hardware/contextaware/utilbundle/autotest/CmdProcessStressTest;->unregisterListener()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected abstract unregisterListener()V
.end method
