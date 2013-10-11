.class abstract Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTest;
.super Ljava/lang/Object;
.source "CaAutoTest.java"

# interfaces
.implements Landroid/hardware/contextaware/utilbundle/autotest/ICaAutoTest;


# instance fields
.field private mDelayTime:I

.field private mStopFlag:Z


# direct methods
.method protected constructor <init>(I)V
    .locals 1
    .parameter "delayTime"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTest;->setDelayTime(I)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTest;->mStopFlag:Z

    .line 37
    return-void
.end method


# virtual methods
.method protected final getDelayTime()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTest;->mDelayTime:I

    return v0
.end method

.method protected final isStopTest()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTest;->mStopFlag:Z

    return v0
.end method

.method public abstract run()V
.end method

.method protected final setDelayTime(I)V
    .locals 0
    .parameter "time"

    .prologue
    .line 54
    iput p1, p0, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTest;->mDelayTime:I

    .line 55
    return-void
.end method

.method public final setStopFlag(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 75
    iput-boolean p1, p0, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTest;->mStopFlag:Z

    .line 76
    return-void
.end method

.method public final stopAutoTest()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTest;->mStopFlag:Z

    .line 88
    return-void
.end method
