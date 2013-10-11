.class public Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;
.super Ljava/lang/Object;
.source "CaAutoTestScenarioManager.java"


# static fields
.field public static final AP_POWER_AUTO_TEST:I = 0x3

.field public static final BYPASS_AUTO_TEST:I = 0x1

.field public static final CA_OPERATION_AUTO_TEST:I = 0x4

.field public static final CA_OPERATION_DEBUGGING:I = 0x5

.field public static final LIBRARY_AUTO_TEST:I = 0x2

.field public static final SENSOR_HUB_OPERATION_DEBUGGING:I = 0x6


# instance fields
.field private final mCaOperationDebugging:Landroid/hardware/contextaware/utilbundle/autotest/CaOperationDebugging;

.field private final mContext:Landroid/content/Context;

.field private final mScenarioListForTest:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/contextaware/utilbundle/autotest/ICaAutoTest;",
            ">;"
        }
    .end annotation
.end field

.field private final mSensorHubOperationDebugging:Landroid/hardware/contextaware/utilbundle/autotest/SensorHubOperationDebugging;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mContext:Landroid/content/Context;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mScenarioListForTest:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Landroid/hardware/contextaware/utilbundle/autotest/CaOperationDebugging;

    invoke-direct {v0, v1}, Landroid/hardware/contextaware/utilbundle/autotest/CaOperationDebugging;-><init>(I)V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mCaOperationDebugging:Landroid/hardware/contextaware/utilbundle/autotest/CaOperationDebugging;

    .line 68
    new-instance v0, Landroid/hardware/contextaware/utilbundle/autotest/SensorHubOperationDebugging;

    invoke-direct {v0, p1, v1}, Landroid/hardware/contextaware/utilbundle/autotest/SensorHubOperationDebugging;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mSensorHubOperationDebugging:Landroid/hardware/contextaware/utilbundle/autotest/SensorHubOperationDebugging;

    .line 70
    return-void
.end method


# virtual methods
.method public final initilizeAutoTest()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mScenarioListForTest:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mScenarioListForTest:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 111
    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mCaOperationDebugging:Landroid/hardware/contextaware/utilbundle/autotest/CaOperationDebugging;

    invoke-virtual {v0}, Landroid/hardware/contextaware/utilbundle/autotest/OperationDebugging;->clearPacket()V

    .line 112
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mSensorHubOperationDebugging:Landroid/hardware/contextaware/utilbundle/autotest/SensorHubOperationDebugging;

    invoke-virtual {v0}, Landroid/hardware/contextaware/utilbundle/autotest/OperationDebugging;->clearPacket()V

    .line 113
    return-void
.end method

.method public final setScenarioForDebugging(II[B)Z
    .locals 2
    .parameter "testType"
    .parameter "delayTime"
    .parameter "packet"

    .prologue
    .line 160
    if-nez p3, :cond_0

    .line 161
    const/4 v0, 0x0

    .line 184
    :goto_0
    return v0

    .line 164
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 184
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 166
    :pswitch_0
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mCaOperationDebugging:Landroid/hardware/contextaware/utilbundle/autotest/CaOperationDebugging;

    invoke-virtual {v0, p2}, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTest;->setDelayTime(I)V

    .line 167
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mCaOperationDebugging:Landroid/hardware/contextaware/utilbundle/autotest/CaOperationDebugging;

    invoke-virtual {v0, p3}, Landroid/hardware/contextaware/utilbundle/autotest/OperationDebugging;->addPacket([B)V

    .line 168
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mScenarioListForTest:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mCaOperationDebugging:Landroid/hardware/contextaware/utilbundle/autotest/CaOperationDebugging;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mScenarioListForTest:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mCaOperationDebugging:Landroid/hardware/contextaware/utilbundle/autotest/CaOperationDebugging;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 173
    :pswitch_1
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mSensorHubOperationDebugging:Landroid/hardware/contextaware/utilbundle/autotest/SensorHubOperationDebugging;

    invoke-virtual {v0, p2}, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTest;->setDelayTime(I)V

    .line 174
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mSensorHubOperationDebugging:Landroid/hardware/contextaware/utilbundle/autotest/SensorHubOperationDebugging;

    invoke-virtual {v0, p3}, Landroid/hardware/contextaware/utilbundle/autotest/OperationDebugging;->addPacket([B)V

    .line 175
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mScenarioListForTest:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mSensorHubOperationDebugging:Landroid/hardware/contextaware/utilbundle/autotest/SensorHubOperationDebugging;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 177
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mScenarioListForTest:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mSensorHubOperationDebugging:Landroid/hardware/contextaware/utilbundle/autotest/SensorHubOperationDebugging;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final setScenarioForTest(II)Z
    .locals 3
    .parameter "testType"
    .parameter "delayTime"

    .prologue
    .line 125
    packed-switch p1, :pswitch_data_0

    .line 144
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 127
    :pswitch_0
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mScenarioListForTest:Ljava/util/ArrayList;

    new-instance v1, Landroid/hardware/contextaware/utilbundle/autotest/BypassStressTest;

    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p2}, Landroid/hardware/contextaware/utilbundle/autotest/BypassStressTest;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    :pswitch_1
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mScenarioListForTest:Ljava/util/ArrayList;

    new-instance v1, Landroid/hardware/contextaware/utilbundle/autotest/LibraryStressTest;

    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p2}, Landroid/hardware/contextaware/utilbundle/autotest/LibraryStressTest;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    :pswitch_2
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mScenarioListForTest:Ljava/util/ArrayList;

    new-instance v1, Landroid/hardware/contextaware/utilbundle/autotest/ApPowerStressTest;

    invoke-direct {v1, p2}, Landroid/hardware/contextaware/utilbundle/autotest/ApPowerStressTest;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 138
    :pswitch_3
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mScenarioListForTest:Ljava/util/ArrayList;

    new-instance v1, Landroid/hardware/contextaware/utilbundle/autotest/CaOperationStressTest;

    invoke-direct {v1, p2}, Landroid/hardware/contextaware/utilbundle/autotest/CaOperationStressTest;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final startAutoTest()V
    .locals 3

    .prologue
    .line 76
    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mScenarioListForTest:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mScenarioListForTest:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 78
    :cond_0
    const-string v2, "Scenario list is empty."

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 86
    :cond_1
    return-void

    .line 82
    :cond_2
    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mScenarioListForTest:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/utilbundle/autotest/ICaAutoTest;

    .line 83
    .local v0, i:Landroid/hardware/contextaware/utilbundle/autotest/ICaAutoTest;
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/hardware/contextaware/utilbundle/autotest/ICaAutoTest;->setStopFlag(Z)V

    .line 84
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public final stopAutoTest()V
    .locals 3

    .prologue
    .line 92
    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mScenarioListForTest:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mScenarioListForTest:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->mScenarioListForTest:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/utilbundle/autotest/ICaAutoTest;

    .line 97
    .local v0, i:Landroid/hardware/contextaware/utilbundle/autotest/ICaAutoTest;
    invoke-interface {v0}, Landroid/hardware/contextaware/utilbundle/autotest/ICaAutoTest;->stopAutoTest()V

    goto :goto_1

    .line 100
    .end local v0           #i:Landroid/hardware/contextaware/utilbundle/autotest/ICaAutoTest;
    :cond_2
    invoke-virtual {p0}, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTestScenarioManager;->initilizeAutoTest()V

    goto :goto_0
.end method
