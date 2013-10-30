.class public interface abstract Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$DownloadStatusListener;
.super Ljava/lang/Object;
.source "SimeXt9DLManagerInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DownloadStatusListener"
.end annotation


# virtual methods
.method public abstract completed(ILjava/io/File;)V
.end method

.method public abstract completed(ILjava/io/File;Ljava/lang/String;)V
.end method

.method public abstract started(I)V
.end method

.method public abstract stopped(II)V
.end method

.method public abstract updated(II)V
.end method
