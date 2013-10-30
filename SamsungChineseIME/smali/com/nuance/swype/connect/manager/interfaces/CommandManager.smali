.class public interface abstract Lcom/nuance/swype/connect/manager/interfaces/CommandManager;
.super Ljava/lang/Object;
.source "CommandManager.java"


# virtual methods
.method public abstract alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract getCommandFamily()Ljava/lang/String;
.end method

.method public abstract getVersion()I
.end method

.method public abstract onCancel(Lcom/nuance/swype/connect/util/Command;)V
.end method

.method public abstract onDownloadStatusResponse(Lcom/nuance/swype/connect/util/Command;II)V
.end method

.method public abstract onFailure(Lcom/nuance/swype/connect/util/Command;)V
.end method

.method public abstract onFileResponse(Lcom/nuance/swype/connect/util/Response;)V
.end method

.method public abstract onIOExceptionResponse(Lcom/nuance/swype/connect/util/Command;)V
.end method

.method public abstract onNetworkTimeout(Lcom/nuance/swype/connect/util/Command;)V
.end method

.method public abstract onResponse(Lcom/nuance/swype/connect/util/Response;)V
.end method
