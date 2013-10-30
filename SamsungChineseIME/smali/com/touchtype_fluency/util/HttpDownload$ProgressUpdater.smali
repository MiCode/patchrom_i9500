.class Lcom/touchtype_fluency/util/HttpDownload$ProgressUpdater;
.super Ljava/lang/Object;
.source "HttpDownload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype_fluency/util/HttpDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressUpdater"
.end annotation


# instance fields
.field private counter:Lorg/apache/commons/io/input/CountingInputStream;

.field private lastUpdateTime:J

.field private listener:Lcom/touchtype_fluency/util/ProgressListener;

.field private maximum:I

.field final synthetic this$0:Lcom/touchtype_fluency/util/HttpDownload;


# direct methods
.method constructor <init>(Lcom/touchtype_fluency/util/HttpDownload;Lcom/touchtype_fluency/util/ProgressListener;ILorg/apache/commons/io/input/CountingInputStream;)V
    .locals 2
    .parameter
    .parameter "listener"
    .parameter "maximum"
    .parameter "counter"

    .prologue
    .line 629
    iput-object p1, p0, Lcom/touchtype_fluency/util/HttpDownload$ProgressUpdater;->this$0:Lcom/touchtype_fluency/util/HttpDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 630
    iput-object p2, p0, Lcom/touchtype_fluency/util/HttpDownload$ProgressUpdater;->listener:Lcom/touchtype_fluency/util/ProgressListener;

    .line 631
    iput p3, p0, Lcom/touchtype_fluency/util/HttpDownload$ProgressUpdater;->maximum:I

    .line 632
    iput-object p4, p0, Lcom/touchtype_fluency/util/HttpDownload$ProgressUpdater;->counter:Lorg/apache/commons/io/input/CountingInputStream;

    .line 633
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/touchtype_fluency/util/HttpDownload$ProgressUpdater;->lastUpdateTime:J

    .line 634
    return-void
.end method


# virtual methods
.method update()V
    .locals 6

    .prologue
    .line 637
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 639
    .local v0, currentTime:J
    iget-wide v2, p0, Lcom/touchtype_fluency/util/HttpDownload$ProgressUpdater;->lastUpdateTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x32

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 640
    iget-object v2, p0, Lcom/touchtype_fluency/util/HttpDownload$ProgressUpdater;->listener:Lcom/touchtype_fluency/util/ProgressListener;

    iget-object v3, p0, Lcom/touchtype_fluency/util/HttpDownload$ProgressUpdater;->counter:Lorg/apache/commons/io/input/CountingInputStream;

    invoke-virtual {v3}, Lorg/apache/commons/io/input/CountingInputStream;->getCount()I

    move-result v3

    iget v4, p0, Lcom/touchtype_fluency/util/HttpDownload$ProgressUpdater;->maximum:I

    invoke-virtual {v2, v3, v4}, Lcom/touchtype_fluency/util/ProgressListener;->onProgress(II)V

    .line 641
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/touchtype_fluency/util/HttpDownload$ProgressUpdater;->lastUpdateTime:J

    .line 643
    :cond_0
    return-void
.end method
