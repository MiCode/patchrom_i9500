.class Lcom/android/server/ssrm/Monitor$2;
.super Ljava/util/TimerTask;
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
    .line 532
    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$2;->this$0:Lcom/android/server/ssrm/Monitor;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 537
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor$2;->this$0:Lcom/android/server/ssrm/Monitor;

    #calls: Lcom/android/server/ssrm/Monitor;->readThermistorFile()Z
    invoke-static {v1}, Lcom/android/server/ssrm/Monitor;->access$700(Lcom/android/server/ssrm/Monitor;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/ssrm/Monitor;->mForceSIOPUpdate:Z

    if-eqz v1, :cond_1

    .line 539
    :cond_0
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor$2;->this$0:Lcom/android/server/ssrm/Monitor;

    #calls: Lcom/android/server/ssrm/Monitor;->setCurrentLevelfromTemp()V
    invoke-static {v1}, Lcom/android/server/ssrm/Monitor;->access$800(Lcom/android/server/ssrm/Monitor;)V

    .line 541
    invoke-static {}, Lcom/android/server/ssrm/AmoledAdjustTimer;->getInstance()Lcom/android/server/ssrm/AmoledAdjustTimer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/ssrm/AmoledAdjustTimer;->update()V

    .line 542
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/ssrm/Monitor;->mForceSIOPUpdate:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    :cond_1
    :goto_0
    return-void

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$900()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thermistorObeserverTask:: e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
