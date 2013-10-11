.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;
.super Ljava/lang/Object;
.source "PowerResetNotiParser.java"

# interfaces
.implements Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;
.implements Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;


# instance fields
.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/manager/IApPowerResetObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method public final notifyApResetObserver(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 100
    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/hardware/contextaware/manager/IApPowerResetObserver;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/IApPowerResetObserver;

    .line 102
    .local v1, observer:Landroid/hardware/contextaware/manager/IApPowerResetObserver;
    if-eqz v1, :cond_0

    .line 103
    invoke-interface {v1, p1}, Landroid/hardware/contextaware/manager/IApPowerResetObserver;->updateApPowerResetStatus(I)V

    goto :goto_0

    .line 106
    .end local v1           #observer:Landroid/hardware/contextaware/manager/IApPowerResetObserver;
    :cond_1
    return-void
.end method

.method public final parse([BI)I
    .locals 6
    .parameter "packet"
    .parameter "next"

    .prologue
    .line 42
    move v2, p2

    .line 44
    .local v2, tmpNext:I
    array-length v4, p1

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_0

    .line 45
    const/4 v3, -0x1

    .line 59
    :goto_0
    return v3

    .line 48
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 50
    .local v1, dispContextData:Landroid/os/Bundle;
    add-int/lit8 v3, v2, 0x1

    .end local v2           #tmpNext:I
    .local v3, tmpNext:I
    aget-byte v0, p1, v2

    .line 51
    .local v0, apStatus:I
    const-string v4, "Noti"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const/16 v4, -0x2b

    if-ne v0, v4, :cond_1

    .line 54
    const-string v4, "================= Noti (Power) ================="

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 55
    const-string v4, "Noti Type : AP Reset"

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->notifyApResetObserver(I)V

    :cond_1
    move v2, v3

    .line 59
    .end local v3           #tmpNext:I
    .restart local v2       #tmpNext:I
    goto :goto_0
.end method

.method public final registerApResetObserver(Landroid/hardware/contextaware/manager/IApPowerResetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 72
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_0
    return-void
.end method

.method public final unregisterApResetObserver(Landroid/hardware/contextaware/manager/IApPowerResetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 87
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 90
    :cond_0
    return-void
.end method
