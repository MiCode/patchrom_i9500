.class public interface abstract Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface;
.super Ljava/lang/Object;
.source "SimeXt9DLManagerInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$DownloadStatusListener;,
        Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$LanguageListListener;,
        Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$KLDLMConfiguration;
    }
.end annotation


# virtual methods
.method public abstract cancel(I)V
.end method

.method public abstract download(ILcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$DownloadStatusListener;)V
.end method

.method public abstract getAvailableLanguages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCurrentDownloadLanguage()I
.end method

.method public abstract getDownloadedLanguages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUpdatableLanguages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWaitDownloadLanguages()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract registerDownloadListner(ILcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$DownloadStatusListener;)V
.end method

.method public abstract serviceActive()Z
.end method

.method public abstract setConnectionCB(Lcom/nuance/connect/language/KLConnectionCallback;)V
.end method

.method public abstract setDeviceCB(Lcom/nuance/connect/language/KLDeviceCallback;)V
.end method

.method public abstract start(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$KLDLMConfiguration;Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$LanguageListListener;Z)Z
.end method

.method public abstract stop()Z
.end method

.method public abstract stop(Z)Z
.end method

.method public abstract unRegisterDownloadListner(I)V
.end method

.method public abstract uninstall(I)V
.end method
