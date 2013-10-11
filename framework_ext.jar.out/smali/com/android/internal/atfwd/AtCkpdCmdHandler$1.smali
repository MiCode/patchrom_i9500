.class Lcom/android/internal/atfwd/AtCkpdCmdHandler$1;
.super Ljava/lang/Thread;
.source "AtCkpdCmdHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/atfwd/AtCkpdCmdHandler;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/atfwd/AtCkpdCmdHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/atfwd/AtCkpdCmdHandler;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$1;->this$0:Lcom/android/internal/atfwd/AtCkpdCmdHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    .prologue
    const/4 v8, 0x0

    .line 222
    const/4 v9, 0x0

    .line 224
    .local v9, cmd:Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;
    :cond_0
    const-string v4, "AtCkpdCmdHandler"

    const-string v5, "De-queing command"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$1;->this$0:Lcom/android/internal/atfwd/AtCkpdCmdHandler;

    #getter for: Lcom/android/internal/atfwd/AtCkpdCmdHandler;->mEventQ:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->access$100(Lcom/android/internal/atfwd/AtCkpdCmdHandler;)Ljava/util/LinkedList;

    move-result-object v5

    monitor-enter v5

    .line 226
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$1;->this$0:Lcom/android/internal/atfwd/AtCkpdCmdHandler;

    #getter for: Lcom/android/internal/atfwd/AtCkpdCmdHandler;->mEventQ:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->access$100(Lcom/android/internal/atfwd/AtCkpdCmdHandler;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 228
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$1;->this$0:Lcom/android/internal/atfwd/AtCkpdCmdHandler;

    #getter for: Lcom/android/internal/atfwd/AtCkpdCmdHandler;->mEventQ:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->access$100(Lcom/android/internal/atfwd/AtCkpdCmdHandler;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 229
    :catch_0
    move-exception v10

    .line 230
    .local v10, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v4, "AtCkpdCmdHandler"

    const-string v6, "Inject thread interrupted"

    invoke-static {v4, v6, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 235
    .end local v10           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 234
    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$1;->this$0:Lcom/android/internal/atfwd/AtCkpdCmdHandler;

    #getter for: Lcom/android/internal/atfwd/AtCkpdCmdHandler;->mEventQ:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->access$100(Lcom/android/internal/atfwd/AtCkpdCmdHandler;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;

    move-object v9, v0

    .line 235
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 236
    if-eqz v9, :cond_0

    .line 237
    const-string v4, "AtCkpdCmdHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Command de-queued: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$1;->this$0:Lcom/android/internal/atfwd/AtCkpdCmdHandler;

    iget-object v4, v4, Lcom/android/internal/atfwd/AtCmdBaseHandler;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/PowerManager;

    .line 241
    .local v14, pm:Landroid/os/PowerManager;
    const v4, 0x3000001a

    const-string v5, "+CKPD Handler"

    invoke-virtual {v14, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v15

    .line 244
    .local v15, wl:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v9}, Lcom/android/internal/atfwd/AtCkpdCmdHandler$ParsedCkpdCmd;->getEvents()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 245
    .local v12, evt:Ljava/lang/Object;
    instance-of v4, v12, Lcom/android/internal/atfwd/AtCmdHandler$PauseEvent;

    if-eqz v4, :cond_2

    .line 247
    :try_start_4
    check-cast v12, Lcom/android/internal/atfwd/AtCmdHandler$PauseEvent;

    .end local v12           #evt:Ljava/lang/Object;
    invoke-virtual {v12}, Lcom/android/internal/atfwd/AtCmdHandler$PauseEvent;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 248
    :catch_1
    move-exception v10

    .line 249
    .restart local v10       #e:Ljava/lang/InterruptedException;
    const-string v4, "AtCkpdCmdHandler"

    const-string v5, "Interrupted pause"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 253
    .end local v10           #e:Ljava/lang/InterruptedException;
    .restart local v12       #evt:Ljava/lang/Object;
    :cond_2
    instance-of v4, v12, Landroid/view/KeyEvent;

    if-nez v4, :cond_3

    .line 254
    const-string v4, "AtCkpdCmdHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown type of event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 259
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .local v2, dntime:J
    move-object v11, v12

    .line 260
    check-cast v11, Landroid/view/KeyEvent;

    .line 261
    .local v11, ev:Landroid/view/KeyEvent;
    new-instance v1, Landroid/view/KeyEvent;

    invoke-virtual {v11}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    invoke-virtual {v11}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    move-wide v4, v2

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 266
    .end local v11           #ev:Landroid/view/KeyEvent;
    .local v1, ev:Landroid/view/KeyEvent;
    invoke-virtual {v15}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 267
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/atfwd/AtCkpdCmdHandler$1;->this$0:Lcom/android/internal/atfwd/AtCkpdCmdHandler;

    #calls: Lcom/android/internal/atfwd/AtCkpdCmdHandler;->injectKeyEvent(Landroid/view/KeyEvent;Z)V
    invoke-static {v4, v1, v8}, Lcom/android/internal/atfwd/AtCkpdCmdHandler;->access$200(Lcom/android/internal/atfwd/AtCkpdCmdHandler;Landroid/view/KeyEvent;Z)V

    .line 268
    invoke-virtual {v15}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1
.end method
