.class abstract Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;
.super Ljava/lang/Object;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "DynamicLCDFPS"
.end annotation


# instance fields
.field protected currentFPS:I

.field final synthetic this$0:Lcom/android/server/ssrm/Monitor;


# direct methods
.method protected constructor <init>(Lcom/android/server/ssrm/Monitor;)V
    .locals 0

    .prologue
    .line 2258
    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->this$0:Lcom/android/server/ssrm/Monitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2259
    invoke-virtual {p0}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->resetFPS()V

    .line 2260
    return-void
.end method


# virtual methods
.method protected calculateCurrentFPS()I
    .locals 2

    .prologue
    .line 2305
    const/4 v0, 0x3

    .line 2306
    .local v0, fps:I
    sget-boolean v1, Lcom/android/server/ssrm/Monitor;->mMultiWindowRunning:Z

    if-eqz v1, :cond_0

    .line 2307
    const/4 v0, 0x0

    .line 2319
    :goto_0
    return v0

    .line 2309
    :cond_0
    sget v1, Lcom/android/server/ssrm/Monitor;->mPermanentAppPID:I

    if-lez v1, :cond_1

    .line 2310
    const/4 v0, 0x1

    goto :goto_0

    .line 2311
    :cond_1
    sget-boolean v1, Lcom/android/server/ssrm/Monitor;->mFpsFullScreenMode:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/server/ssrm/Monitor;->mDynamicFpsPackage:Z

    if-eqz v1, :cond_2

    .line 2312
    const/4 v0, 0x1

    goto :goto_0

    .line 2313
    :cond_2
    sget-boolean v1, Lcom/android/server/ssrm/Monitor;->mBrowserLowFps:Z

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/android/server/ssrm/Monitor;->mBrowserIntentLowFps:Z

    if-eqz v1, :cond_3

    .line 2314
    const/4 v0, 0x1

    goto :goto_0

    .line 2316
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract getSysFSPath()Ljava/lang/String;
.end method

.method public handleMonitorStateChanged()V
    .locals 0

    .prologue
    .line 2267
    invoke-virtual {p0}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->updateFPS()V

    .line 2268
    return-void
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 2263
    invoke-virtual {p0}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->updateFPS()V

    .line 2264
    return-void
.end method

.method public resetFPS()V
    .locals 1

    .prologue
    .line 2271
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->currentFPS:I

    .line 2272
    return-void
.end method

.method protected updateFPS()V
    .locals 2

    .prologue
    .line 2276
    invoke-virtual {p0}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->calculateCurrentFPS()I

    move-result v0

    .line 2277
    .local v0, newFPS:I
    iget v1, p0, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->currentFPS:I

    if-eq v1, v0, :cond_0

    .line 2278
    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->updateSysFSFile(I)V

    .line 2279
    iput v0, p0, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->currentFPS:I

    .line 2281
    :cond_0
    return-void
.end method

.method protected updateSysFSFile(I)V
    .locals 4
    .parameter "fps"

    .prologue
    .line 2284
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$900()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSysFSFile: fps = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2286
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->getSysFSPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2287
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2300
    :cond_0
    :goto_0
    return-void

    .line 2291
    :cond_1
    #calls: Lcom/android/server/ssrm/Monitor;->isFPSValid(I)Z
    invoke-static {p1}, Lcom/android/server/ssrm/Monitor;->access$5300(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2292
    invoke-virtual {p0}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->getSysFSPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/server/ssrm/Monitor;->fileWriteInt(Ljava/lang/String;I)V

    .line 2298
    :goto_1
    invoke-static {}, Lcom/android/server/ssrm/AirViewOnOff;->getInstance()Lcom/android/server/ssrm/AirViewOnOff;

    invoke-virtual {p0}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->getSysFSPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/ssrm/AirViewOnOff;->onFrameRateUpdate(ILjava/lang/String;)V

    goto :goto_0

    .line 2294
    :cond_2
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Sys FS file wasn\'t updated!!!"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
