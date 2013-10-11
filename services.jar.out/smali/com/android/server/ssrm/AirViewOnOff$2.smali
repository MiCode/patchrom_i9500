.class final Lcom/android/server/ssrm/AirViewOnOff$2;
.super Ljava/lang/Object;
.source "AirViewOnOff.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/AirViewOnOff;->onFrameRateUpdate(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$fps:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 606
    iput-object p1, p0, Lcom/android/server/ssrm/AirViewOnOff$2;->val$filePath:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/ssrm/AirViewOnOff$2;->val$fps:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 608
    invoke-static {}, Lcom/android/server/ssrm/AirViewOnOff;->access$800()Z

    move-result v3

    if-nez v3, :cond_1

    .line 609
    invoke-static {v6}, Lcom/android/server/ssrm/AirViewOnOff;->access$902(Z)Z

    .line 610
    #calls: Lcom/android/server/ssrm/AirViewOnOff;->updateAirViewStatus()V
    invoke-static {}, Lcom/android/server/ssrm/AirViewOnOff;->access$600()V

    .line 634
    :cond_0
    :goto_0
    return-void

    .line 614
    :cond_1
    const/16 v0, 0xa

    .line 615
    .local v0, cnt:I
    :goto_1
    if-lez v0, :cond_0

    .line 617
    const-wide/16 v3, 0x32

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    :goto_2
    iget-object v3, p0, Lcom/android/server/ssrm/AirViewOnOff$2;->val$filePath:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/ssrm/AirViewOnOff;->readFPSFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 623
    .local v2, temp:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 624
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 625
    invoke-static {}, Lcom/android/server/ssrm/AirViewOnOff;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onFrameRateUpdate:: Current FPS trim = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    iget v3, p0, Lcom/android/server/ssrm/AirViewOnOff$2;->val$fps:I

    invoke-static {v2, v3}, Lcom/android/server/ssrm/AirViewOnOff;->checkFPS(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 627
    invoke-static {v6}, Lcom/android/server/ssrm/AirViewOnOff;->access$902(Z)Z

    .line 628
    iget v3, p0, Lcom/android/server/ssrm/AirViewOnOff$2;->val$fps:I

    #calls: Lcom/android/server/ssrm/AirViewOnOff;->updateAirViewStatus(I)V
    invoke-static {v3}, Lcom/android/server/ssrm/AirViewOnOff;->access$1000(I)V

    goto :goto_0

    .line 618
    .end local v2           #temp:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 619
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/android/server/ssrm/AirViewOnOff;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onFrameRateUpdate:: exception msg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 632
    .end local v1           #e:Ljava/lang/InterruptedException;
    .restart local v2       #temp:Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 633
    goto :goto_1
.end method
