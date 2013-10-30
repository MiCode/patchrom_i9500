.class Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr$1;
.super Ljava/lang/Object;
.source "SimeXT9HotwordMgr.java"

# interfaces
.implements Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;->update(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr$1;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleDownloadEvent(ILjava/lang/Object;)Z
    .locals 6
    .parameter "msgId"
    .parameter "obj"

    .prologue
    .line 104
    packed-switch p1, :pswitch_data_0

    .line 122
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr$1;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;

    #calls: Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;->handleDownloadCallBack(ILjava/lang/Object;)Z
    invoke-static {v4, p1, p2}, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;->access$000(Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;ILjava/lang/Object;)Z

    move-result v4

    return v4

    .line 107
    :pswitch_0
    if-eqz p2, :cond_0

    move-object v2, p2

    .line 108
    check-cast v2, Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;

    .line 109
    .local v2, info:Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;
    iget-object v4, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr$1;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;

    iget v5, v2, Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;->dbId:I

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;->getHotwordFileName(I)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, fileName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    iget-object v4, v2, Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;->fileName:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, downLoadfile:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    .local v3, targetFile:Ljava/io/File;
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 114
    iput-object v1, v2, Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;->fileName:Ljava/lang/String;

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
