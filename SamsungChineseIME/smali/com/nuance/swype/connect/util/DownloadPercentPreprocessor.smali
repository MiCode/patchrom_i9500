.class public Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;
.super Ljava/lang/Object;
.source "DownloadPercentPreprocessor.java"


# static fields
.field private static final MAX_INITIAL_DOWNLOAD_PERCENT:I = 0xa

.field private static final PRE_DOWNLOAD_ALARM_INTERVAL:I = 0x1

.field public static final UPDATE_DOWNLOAD_PERCENT_ALARM:Ljava/lang/String; = "UPDATE_DOWNLOAD_PERCENT"


# instance fields
.field private context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private currentBytes:I

.field private data:Landroid/os/Bundle;

.field private enableInitialDownloadAlarm:Z

.field private initialDownloadPercent:I

.field private manager:Lcom/nuance/swype/connect/manager/AbstractCommandManager;

.field private totalBytes:I


# direct methods
.method public constructor <init>(Lcom/nuance/swype/connect/manager/AbstractCommandManager;Landroid/content/Context;)V
    .locals 1
    .parameter "manager"
    .parameter "context"

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->manager:Lcom/nuance/swype/connect/manager/AbstractCommandManager;

    .line 112
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->context:Ljava/lang/ref/WeakReference;

    .line 113
    return-void
.end method

.method private getAlarm()Lcom/nuance/swype/connect/util/Alarm;
    .locals 4

    .prologue
    .line 218
    iget-object v1, p0, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 219
    .local v0, c:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 220
    new-instance v1, Lcom/nuance/swype/connect/util/Alarm$Builder;

    iget-object v2, p0, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->manager:Lcom/nuance/swype/connect/manager/AbstractCommandManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "UPDATE_DOWNLOAD_PERCENT"

    invoke-direct {v1, v0, v2, v3}, Lcom/nuance/swype/connect/util/Alarm$Builder;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/util/Alarm$Builder;->seconds(I)Lcom/nuance/swype/connect/util/Alarm$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->data:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/util/Alarm$Builder;->extras(Landroid/os/Bundle;)Lcom/nuance/swype/connect/util/Alarm$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/util/Alarm$Builder;->build()Lcom/nuance/swype/connect/util/Alarm;

    move-result-object v1

    .line 225
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public disableAlarm()V
    .locals 2

    .prologue
    .line 163
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->enableInitialDownloadAlarm:Z

    .line 164
    invoke-direct {p0}, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->getAlarm()Lcom/nuance/swype/connect/util/Alarm;

    move-result-object v0

    .line 165
    .local v0, progressAlarm:Lcom/nuance/swype/connect/util/Alarm;
    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0}, Lcom/nuance/swype/connect/util/Alarm;->cancel()V

    .line 168
    :cond_0
    return-void
.end method

.method public getCurrentPercent()I
    .locals 4

    .prologue
    .line 124
    iget v2, p0, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->totalBytes:I

    int-to-float v2, v2

    const/high16 v3, 0x3f80

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 125
    .local v1, total:F
    iget v2, p0, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->currentBytes:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v3, p0, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->initialDownloadPercent:I

    rsub-int/lit8 v3, v3, 0x64

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->initialDownloadPercent:I

    add-int v0, v2, v3

    .line 127
    .local v0, percent:I
    return v0
.end method

.method public init(Landroid/os/Bundle;)V
    .locals 2
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    .line 140
    iput v1, p0, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->initialDownloadPercent:I

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->enableInitialDownloadAlarm:Z

    .line 142
    iput v1, p0, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->currentBytes:I

    .line 143
    iput v1, p0, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->totalBytes:I

    .line 144
    iput-object p1, p0, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->data:Landroid/os/Bundle;

    .line 145
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 151
    iput v0, p0, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->initialDownloadPercent:I

    .line 152
    iput v0, p0, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->currentBytes:I

    .line 153
    iput v0, p0, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->totalBytes:I

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->data:Landroid/os/Bundle;

    .line 155
    invoke-virtual {p0}, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->disableAlarm()V

    .line 156
    return-void
.end method

.method public updateDownloadTotals(II)I
    .locals 1
    .parameter "currentBytes"
    .parameter "totalBytes"

    .prologue
    .line 182
    iput p1, p0, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->currentBytes:I

    .line 183
    iput p2, p0, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->totalBytes:I

    .line 185
    invoke-virtual {p0}, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->getCurrentPercent()I

    move-result v0

    return v0
.end method

.method public updateInitialDownloadPercent(Landroid/os/Bundle;)I
    .locals 3
    .parameter "data"

    .prologue
    const/16 v1, 0xa

    .line 202
    const-string v2, "updateInitialDownloadPercent()"

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 203
    iget-boolean v2, p0, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->enableInitialDownloadAlarm:Z

    if-eqz v2, :cond_0

    .line 204
    iget v2, p0, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->initialDownloadPercent:I

    if-lt v2, v1, :cond_1

    :goto_0
    iput v1, p0, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->initialDownloadPercent:I

    .line 207
    iput-object p1, p0, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->data:Landroid/os/Bundle;

    .line 208
    invoke-direct {p0}, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->getAlarm()Lcom/nuance/swype/connect/util/Alarm;

    move-result-object v0

    .line 209
    .local v0, progressAlarm:Lcom/nuance/swype/connect/util/Alarm;
    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0}, Lcom/nuance/swype/connect/util/Alarm;->set()V

    .line 213
    .end local v0           #progressAlarm:Lcom/nuance/swype/connect/util/Alarm;
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->getCurrentPercent()I

    move-result v1

    return v1

    .line 204
    :cond_1
    iget v1, p0, Lcom/nuance/swype/connect/util/DownloadPercentPreprocessor;->initialDownloadPercent:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
