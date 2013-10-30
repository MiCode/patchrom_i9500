.class public Lcom/touchtype_fluency/util/LanguagePackManagerImpl$ProxyProgressListener;
.super Lcom/touchtype_fluency/util/ProgressListener;
.source "LanguagePackManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype_fluency/util/LanguagePackManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProxyProgressListener"
.end annotation


# instance fields
.field mListener:Lcom/touchtype_fluency/util/ProgressListener;

.field final synthetic this$0:Lcom/touchtype_fluency/util/LanguagePackManagerImpl;


# direct methods
.method constructor <init>(Lcom/touchtype_fluency/util/LanguagePackManagerImpl;Lcom/touchtype_fluency/util/ProgressListener;)V
    .locals 0
    .parameter
    .parameter "listener"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl$ProxyProgressListener;->this$0:Lcom/touchtype_fluency/util/LanguagePackManagerImpl;

    invoke-direct {p0}, Lcom/touchtype_fluency/util/ProgressListener;-><init>()V

    .line 78
    iput-object p2, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl$ProxyProgressListener;->mListener:Lcom/touchtype_fluency/util/ProgressListener;

    .line 79
    return-void
.end method


# virtual methods
.method public declared-synchronized onComplete(ZZZ)V
    .locals 1
    .parameter "success"
    .parameter "cancelled"
    .parameter "digestOK"

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl$ProxyProgressListener;->this$0:Lcom/touchtype_fluency/util/LanguagePackManagerImpl;

    #calls: Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->save()V
    invoke-static {v0}, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->access$4(Lcom/touchtype_fluency/util/LanguagePackManagerImpl;)V

    .line 95
    iget-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl$ProxyProgressListener;->this$0:Lcom/touchtype_fluency/util/LanguagePackManagerImpl;

    #calls: Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->endDownload()V
    invoke-static {v0}, Lcom/touchtype_fluency/util/LanguagePackManagerImpl;->access$5(Lcom/touchtype_fluency/util/LanguagePackManagerImpl;)V

    .line 96
    iget-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl$ProxyProgressListener;->mListener:Lcom/touchtype_fluency/util/ProgressListener;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl$ProxyProgressListener;->mListener:Lcom/touchtype_fluency/util/ProgressListener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/touchtype_fluency/util/ProgressListener;->onComplete(ZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_0
    monitor-exit p0

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onProgress(II)V
    .locals 1
    .parameter "current"
    .parameter "maximum"

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl$ProxyProgressListener;->mListener:Lcom/touchtype_fluency/util/ProgressListener;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl$ProxyProgressListener;->mListener:Lcom/touchtype_fluency/util/ProgressListener;

    invoke-virtual {v0, p1, p2}, Lcom/touchtype_fluency/util/ProgressListener;->onProgress(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_0
    monitor-exit p0

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetListener(Lcom/touchtype_fluency/util/ProgressListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/touchtype_fluency/util/LanguagePackManagerImpl$ProxyProgressListener;->mListener:Lcom/touchtype_fluency/util/ProgressListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
