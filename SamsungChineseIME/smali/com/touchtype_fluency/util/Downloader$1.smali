.class Lcom/touchtype_fluency/util/Downloader$1;
.super Ljava/lang/Object;
.source "Downloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype_fluency/util/Downloader;->download()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/touchtype_fluency/util/Downloader;


# direct methods
.method constructor <init>(Lcom/touchtype_fluency/util/Downloader;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/touchtype_fluency/util/Downloader$1;->this$0:Lcom/touchtype_fluency/util/Downloader;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/touchtype_fluency/util/Downloader$1;->this$0:Lcom/touchtype_fluency/util/Downloader;

    iget-object v1, p0, Lcom/touchtype_fluency/util/Downloader$1;->this$0:Lcom/touchtype_fluency/util/Downloader;

    #getter for: Lcom/touchtype_fluency/util/Downloader;->httpDownload:Lcom/touchtype_fluency/util/HttpDownload;
    invoke-static {v1}, Lcom/touchtype_fluency/util/Downloader;->access$0(Lcom/touchtype_fluency/util/Downloader;)Lcom/touchtype_fluency/util/HttpDownload;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/util/Downloader;->onDownload(Lcom/touchtype_fluency/util/HttpDownload;)V

    .line 22
    return-void
.end method
