.class Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;
.super Ljava/lang/Object;
.source "PersonalizationRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype/personalizer/PersonalizationRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/touchtype/personalizer/PersonalizationRequest;


# direct methods
.method private constructor <init>(Lcom/touchtype/personalizer/PersonalizationRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;->this$0:Lcom/touchtype/personalizer/PersonalizationRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/touchtype/personalizer/PersonalizationRequest;Lcom/touchtype/personalizer/PersonalizationRequest$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;-><init>(Lcom/touchtype/personalizer/PersonalizationRequest;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;

    invoke-direct {v0, p0}, Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable$1;-><init>(Lcom/touchtype/personalizer/PersonalizationRequest$DownloadRunnable;)V

    .line 216
    .local v0, downloader:Lcom/touchtype_fluency/util/Downloader;
    invoke-virtual {v0}, Lcom/touchtype_fluency/util/Downloader;->download()V

    .line 217
    return-void
.end method
