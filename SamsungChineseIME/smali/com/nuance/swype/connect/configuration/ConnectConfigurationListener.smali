.class public Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;
.super Ljava/lang/Object;
.source "ConnectConfigurationListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationBoolChange(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 16
    const-string v0, "Attempting to set a configuration but no override set."

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public onConfigurationIntChange(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 12
    const-string v0, "Attempting to set a configuration but no override set."

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public onConfigurationStringChange(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 8
    const-string v0, "Attempting to set a configuration but no override set."

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 9
    return-void
.end method
