.class Landroid/net/wifi/WifiManager$ServiceHandler;
.super Landroid/os/Handler;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiManager;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 1532
    iput-object p1, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    .line 1533
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1534
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "message"

    .prologue
    const/4 v5, 0x0

    .line 1538
    iget-object v3, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    iget v4, p1, Landroid/os/Message;->arg2:I

    #calls: Landroid/net/wifi/WifiManager;->removeListener(I)Ljava/lang/Object;
    invoke-static {v3, v4}, Landroid/net/wifi/WifiManager;->access$000(Landroid/net/wifi/WifiManager;I)Ljava/lang/Object;

    move-result-object v1

    .line 1539
    .local v1, listener:Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 1620
    .end local v1           #listener:Ljava/lang/Object;
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 1541
    .restart local v1       #listener:Ljava/lang/Object;
    :sswitch_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_2

    .line 1542
    invoke-static {}, Landroid/net/wifi/WifiManager;->access$100()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "WifiManager"

    const-string v4, "connected success"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    :cond_1
    :goto_1
    iget-object v3, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    #getter for: Landroid/net/wifi/WifiManager;->mConnected:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v3}, Landroid/net/wifi/WifiManager;->access$300(Landroid/net/wifi/WifiManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 1545
    :cond_2
    const-string v3, "WifiManager"

    const-string v4, "Failed to set up channel connection"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    iget-object v3, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    #setter for: Landroid/net/wifi/WifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v3, v5}, Landroid/net/wifi/WifiManager;->access$202(Landroid/net/wifi/WifiManager;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    goto :goto_1

    .line 1556
    :sswitch_2
    const-string v3, "WifiManager"

    const-string v4, "Channel connection lost"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    iget-object v3, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    #setter for: Landroid/net/wifi/WifiManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v3, v5}, Landroid/net/wifi/WifiManager;->access$202(Landroid/net/wifi/WifiManager;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    .line 1560
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 1568
    :sswitch_3
    if-eqz v1, :cond_0

    .line 1569
    check-cast v1, Landroid/net/wifi/WifiManager$ActionListener;

    .end local v1           #listener:Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v3}, Landroid/net/wifi/WifiManager$ActionListener;->onFailure(I)V

    goto :goto_0

    .line 1578
    .restart local v1       #listener:Ljava/lang/Object;
    :sswitch_4
    if-eqz v1, :cond_0

    .line 1579
    check-cast v1, Landroid/net/wifi/WifiManager$ActionListener;

    .end local v1           #listener:Ljava/lang/Object;
    invoke-interface {v1}, Landroid/net/wifi/WifiManager$ActionListener;->onSuccess()V

    goto :goto_0

    .line 1583
    .restart local v1       #listener:Ljava/lang/Object;
    :sswitch_5
    if-eqz v1, :cond_0

    .line 1584
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/WpsResult;

    .local v2, result:Landroid/net/wifi/WpsResult;
    move-object v3, v1

    .line 1585
    check-cast v3, Landroid/net/wifi/WifiManager$WpsListener;

    iget-object v4, v2, Landroid/net/wifi/WpsResult;->pin:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/net/wifi/WifiManager$WpsListener;->onStartSuccess(Ljava/lang/String;)V

    .line 1587
    iget-object v3, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    #getter for: Landroid/net/wifi/WifiManager;->mListenerMapLock:Ljava/lang/Object;
    invoke-static {v3}, Landroid/net/wifi/WifiManager;->access$400(Landroid/net/wifi/WifiManager;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1588
    :try_start_0
    iget-object v3, p0, Landroid/net/wifi/WifiManager$ServiceHandler;->this$0:Landroid/net/wifi/WifiManager;

    #getter for: Landroid/net/wifi/WifiManager;->mListenerMap:Landroid/util/SparseArray;
    invoke-static {v3}, Landroid/net/wifi/WifiManager;->access$500(Landroid/net/wifi/WifiManager;)Landroid/util/SparseArray;

    move-result-object v3

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1589
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1593
    .end local v2           #result:Landroid/net/wifi/WpsResult;
    :sswitch_6
    if-eqz v1, :cond_0

    .line 1594
    check-cast v1, Landroid/net/wifi/WifiManager$WpsListener;

    .end local v1           #listener:Ljava/lang/Object;
    invoke-interface {v1}, Landroid/net/wifi/WifiManager$WpsListener;->onCompletion()V

    goto :goto_0

    .line 1598
    .restart local v1       #listener:Ljava/lang/Object;
    :sswitch_7
    if-eqz v1, :cond_0

    .line 1599
    check-cast v1, Landroid/net/wifi/WifiManager$WpsListener;

    .end local v1           #listener:Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v3}, Landroid/net/wifi/WifiManager$WpsListener;->onFailure(I)V

    goto/16 :goto_0

    .line 1603
    .restart local v1       #listener:Ljava/lang/Object;
    :sswitch_8
    if-eqz v1, :cond_0

    .line 1604
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/RssiPacketCountInfo;

    .line 1605
    .local v0, info:Landroid/net/wifi/RssiPacketCountInfo;
    if-eqz v0, :cond_3

    .line 1606
    check-cast v1, Landroid/net/wifi/WifiManager$TxPacketCountListener;

    .end local v1           #listener:Ljava/lang/Object;
    iget v3, v0, Landroid/net/wifi/RssiPacketCountInfo;->txgood:I

    iget v4, v0, Landroid/net/wifi/RssiPacketCountInfo;->txbad:I

    add-int/2addr v3, v4

    invoke-interface {v1, v3}, Landroid/net/wifi/WifiManager$TxPacketCountListener;->onSuccess(I)V

    goto/16 :goto_0

    .line 1608
    .restart local v1       #listener:Ljava/lang/Object;
    :cond_3
    check-cast v1, Landroid/net/wifi/WifiManager$TxPacketCountListener;

    .end local v1           #listener:Ljava/lang/Object;
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/net/wifi/WifiManager$TxPacketCountListener;->onFailure(I)V

    goto/16 :goto_0

    .line 1612
    .end local v0           #info:Landroid/net/wifi/RssiPacketCountInfo;
    .restart local v1       #listener:Ljava/lang/Object;
    :sswitch_9
    if-eqz v1, :cond_0

    .line 1613
    check-cast v1, Landroid/net/wifi/WifiManager$TxPacketCountListener;

    .end local v1           #listener:Ljava/lang/Object;
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v3}, Landroid/net/wifi/WifiManager$TxPacketCountListener;->onFailure(I)V

    goto/16 :goto_0

    .line 1539
    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_1
        0x11002 -> :sswitch_0
        0x11004 -> :sswitch_2
        0x25002 -> :sswitch_3
        0x25003 -> :sswitch_4
        0x25005 -> :sswitch_3
        0x25006 -> :sswitch_4
        0x25008 -> :sswitch_3
        0x25009 -> :sswitch_4
        0x2500b -> :sswitch_5
        0x2500c -> :sswitch_7
        0x2500d -> :sswitch_6
        0x2500f -> :sswitch_3
        0x25010 -> :sswitch_4
        0x25012 -> :sswitch_3
        0x25013 -> :sswitch_4
        0x25015 -> :sswitch_8
        0x25016 -> :sswitch_9
    .end sparse-switch
.end method
