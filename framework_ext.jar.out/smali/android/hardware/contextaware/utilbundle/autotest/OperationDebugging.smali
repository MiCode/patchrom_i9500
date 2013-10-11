.class abstract Landroid/hardware/contextaware/utilbundle/autotest/OperationDebugging;
.super Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTest;
.source "OperationDebugging.java"


# instance fields
.field private final mPacketList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(I)V
    .locals 1
    .parameter "delayTime"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTest;-><init>(I)V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/OperationDebugging;->mPacketList:Ljava/util/List;

    .line 39
    return-void
.end method


# virtual methods
.method protected final addPacket([B)V
    .locals 1
    .parameter "packet"

    .prologue
    .line 83
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/OperationDebugging;->mPacketList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method

.method protected final clearPacket()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/OperationDebugging;->mPacketList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 101
    return-void
.end method

.method protected abstract doDebugging([B)V
.end method

.method protected final removePacket([B)V
    .locals 1
    .parameter "packet"

    .prologue
    .line 93
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/OperationDebugging;->mPacketList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 94
    return-void
.end method

.method public final run()V
    .locals 8

    .prologue
    .line 57
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_0
    iget-object v6, p0, Landroid/hardware/contextaware/utilbundle/autotest/OperationDebugging;->mPacketList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 58
    invoke-super {p0}, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTest;->getDelayTime()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 60
    invoke-super {p0}, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTest;->isStopTest()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 74
    :cond_0
    :goto_1
    return-void

    .line 64
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Scenario ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 65
    iget-object v6, p0, Landroid/hardware/contextaware/utilbundle/autotest/OperationDebugging;->mPacketList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .local v0, arr$:[B
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_2
    if-ge v3, v5, :cond_2

    aget-byte v4, v0, v3

    .line 66
    .local v4, j:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Packet = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 65
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 69
    .end local v4           #j:I
    :cond_2
    iget-object v6, p0, Landroid/hardware/contextaware/utilbundle/autotest/OperationDebugging;->mPacketList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    invoke-virtual {p0, v6}, Landroid/hardware/contextaware/utilbundle/autotest/OperationDebugging;->doDebugging([B)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    .end local v0           #arr$:[B
    .end local v3           #i$:I
    .end local v5           #len$:I
    :catch_0
    move-exception v1

    .line 72
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
