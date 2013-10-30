.class public Lcom/nuance/swype/connect/configuration/ConnectProperty;
.super Ljava/lang/Object;
.source "ConnectProperty.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;
    }
.end annotation


# static fields
.field private static final PREFERENCE_NAME:Ljava/lang/String; = "CONNPREFS_"


# instance fields
.field private configurationFrom:Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;

.field private context:Lcom/nuance/swype/connect/ConnectClient;

.field private currentValue:Ljava/lang/Object;

.field private defaultValue:Ljava/lang/Object;

.field listeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private serverOverrideAllowed:Z

.field private type:I

.field private verification:I


# direct methods
.method protected constructor <init>(Lcom/nuance/swype/connect/ConnectClient;Ljava/lang/String;IZLjava/lang/Object;)V
    .locals 1
    .parameter "context"
    .parameter "name"
    .parameter "type"
    .parameter "serverOverrideConfig"
    .parameter "defaultValue"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-object v0, Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;->DEFAULT:Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;

    iput-object v0, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->configurationFrom:Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->listeners:Ljava/util/HashSet;

    .line 31
    iput-object p1, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->context:Lcom/nuance/swype/connect/ConnectClient;

    .line 32
    iput-object p2, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->name:Ljava/lang/String;

    .line 33
    iput p3, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->type:I

    .line 34
    iput-boolean p4, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->serverOverrideAllowed:Z

    .line 35
    iput-object p5, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->defaultValue:Ljava/lang/Object;

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->verification:I

    .line 37
    invoke-direct {p0}, Lcom/nuance/swype/connect/configuration/ConnectProperty;->load()V

    .line 38
    return-void
.end method

.method protected constructor <init>(Lcom/nuance/swype/connect/ConnectClient;Ljava/lang/String;IZLjava/lang/Object;I)V
    .locals 1
    .parameter "context"
    .parameter "name"
    .parameter "type"
    .parameter "serverOverrideConfig"
    .parameter "defaultValue"
    .parameter "verification"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-object v0, Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;->DEFAULT:Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;

    iput-object v0, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->configurationFrom:Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;

    .line 27
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->listeners:Ljava/util/HashSet;

    .line 42
    iput-object p1, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->context:Lcom/nuance/swype/connect/ConnectClient;

    .line 43
    iput-object p2, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->name:Ljava/lang/String;

    .line 44
    iput p3, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->type:I

    .line 45
    iput-boolean p4, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->serverOverrideAllowed:Z

    .line 46
    iput-object p5, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->defaultValue:Ljava/lang/Object;

    .line 47
    iput p6, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->verification:I

    .line 49
    invoke-direct {p0}, Lcom/nuance/swype/connect/configuration/ConnectProperty;->load()V

    .line 50
    return-void
.end method

.method private load()V
    .locals 4

    .prologue
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .local v0, preferenceName:Ljava/lang/StringBuilder;
    const-string v2, "CONNPREFS_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    iget-object v2, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    iget-object v2, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->context:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 209
    .local v1, result:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 210
    sget-object v2, Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;->SERVER:Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;

    iput-object v2, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->configurationFrom:Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;

    .line 211
    iput-object v1, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->currentValue:Ljava/lang/Object;

    .line 213
    :cond_0
    return-void
.end method

.method private notifyChange()V
    .locals 3

    .prologue
    .line 240
    iget-object v2, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->listeners:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

    .line 241
    .local v1, listener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;
    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/configuration/ConnectProperty;->sendValue(Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;)V

    goto :goto_0

    .line 243
    .end local v1           #listener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;
    :cond_0
    return-void
.end method

.method private save()V
    .locals 4

    .prologue
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .local v0, preferenceName:Ljava/lang/StringBuilder;
    const-string v1, "CONNPREFS_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    iget-object v1, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    iget-object v1, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->context:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->currentValue:Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveObject(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 220
    invoke-direct {p0}, Lcom/nuance/swype/connect/configuration/ConnectProperty;->notifyChange()V

    .line 221
    return-void
.end method


# virtual methods
.method public addListener(Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->listeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 233
    return-void
.end method

.method public getBoolean()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectProperty.getBoolean("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/connect/configuration/ConnectProperty;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/nuance/swype/connect/configuration/ConnectProperty;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getInt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 186
    iget v0, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 187
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid Type"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getInt("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/connect/configuration/ConnectProperty;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/nuance/swype/connect/configuration/ConnectProperty;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 195
    iget v0, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 196
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid Type"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getString("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/swype/connect/configuration/ConnectProperty;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/nuance/swype/connect/configuration/ConnectProperty;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->type:I

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->currentValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->currentValue:Ljava/lang/Object;

    .line 173
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->defaultValue:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getVerification()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->verification:I

    return v0
.end method

.method public removeListener(Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->listeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 237
    return-void
.end method

.method public sendValue(Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 247
    :try_start_0
    iget v1, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->type:I

    packed-switch v1, :pswitch_data_0

    .line 261
    :goto_0
    return-void

    .line 249
    :pswitch_0
    invoke-virtual {p0}, Lcom/nuance/swype/connect/configuration/ConnectProperty;->getInt()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;->onConfigurationIntChange(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, ex:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error sending configuration value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 252
    .end local v0           #ex:Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    invoke-virtual {p0}, Lcom/nuance/swype/connect/configuration/ConnectProperty;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;->onConfigurationStringChange(Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :pswitch_2
    invoke-virtual {p0}, Lcom/nuance/swype/connect/configuration/ConnectProperty;->getBoolean()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;->onConfigurationBoolChange(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 247
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setConfig(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 57
    sget-object v1, Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;->CONFIG:Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;

    iput-object v1, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->configurationFrom:Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;

    .line 59
    iget v1, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->type:I

    packed-switch v1, :pswitch_data_0

    .line 74
    :goto_0
    return-void

    .line 62
    :pswitch_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->currentValue:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, ex:Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error setting configuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    .end local v0           #ex:Ljava/lang/NumberFormatException;
    :pswitch_1
    iput-object p1, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->currentValue:Ljava/lang/Object;

    goto :goto_0

    .line 71
    :pswitch_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->currentValue:Ljava/lang/Object;

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setConfigValue(I)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 88
    iget v0, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 89
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid Type"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectProperty.setConfigValue("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->currentValue:Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;->CONFIG:Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;

    iput-object v0, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->configurationFrom:Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;

    .line 95
    invoke-direct {p0}, Lcom/nuance/swype/connect/configuration/ConnectProperty;->notifyChange()V

    .line 96
    return-void
.end method

.method public setConfigValue(Ljava/lang/String;)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 77
    iget v0, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid Type"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectProperty.setConfigValue("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 82
    iput-object p1, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->currentValue:Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;->CONFIG:Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;

    iput-object v0, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->configurationFrom:Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;

    .line 84
    invoke-direct {p0}, Lcom/nuance/swype/connect/configuration/ConnectProperty;->notifyChange()V

    .line 85
    return-void
.end method

.method public setConfigValue(Z)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 99
    iget v0, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->type:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 100
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid Type"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectProperty.setConfigValue("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 104
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->currentValue:Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;->CONFIG:Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;

    iput-object v0, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->configurationFrom:Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;

    .line 106
    invoke-direct {p0}, Lcom/nuance/swype/connect/configuration/ConnectProperty;->notifyChange()V

    .line 107
    return-void
.end method

.method public setServerValue(I)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 136
    iget v0, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 137
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid Type"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectProperty.setServerValue[i]("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") -["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->serverOverrideAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 143
    iget-boolean v0, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->serverOverrideAllowed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->configurationFrom:Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;

    sget-object v1, Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;->CONFIG:Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 144
    :cond_1
    sget-object v0, Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;->SERVER:Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;

    iput-object v0, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->configurationFrom:Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;

    .line 145
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->currentValue:Ljava/lang/Object;

    .line 146
    invoke-direct {p0}, Lcom/nuance/swype/connect/configuration/ConnectProperty;->save()V

    .line 148
    :cond_2
    return-void
.end method

.method public setServerValue(Ljava/lang/Object;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectProperty.setServerValue("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") -["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->serverOverrideAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 113
    iget-boolean v0, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->serverOverrideAllowed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->configurationFrom:Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;

    sget-object v1, Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;->CONFIG:Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    :cond_0
    iput-object p1, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->currentValue:Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;->SERVER:Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;

    iput-object v0, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->configurationFrom:Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;

    .line 116
    invoke-direct {p0}, Lcom/nuance/swype/connect/configuration/ConnectProperty;->save()V

    .line 118
    :cond_1
    return-void
.end method

.method public setServerValue(Ljava/lang/String;)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 121
    iget v0, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 122
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid Type"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectProperty.setServerValue[s]("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") -["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->serverOverrideAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 128
    iget-boolean v0, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->serverOverrideAllowed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->configurationFrom:Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;

    sget-object v1, Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;->CONFIG:Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 129
    :cond_1
    iput-object p1, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->currentValue:Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;->SERVER:Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;

    iput-object v0, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->configurationFrom:Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;

    .line 131
    invoke-direct {p0}, Lcom/nuance/swype/connect/configuration/ConnectProperty;->save()V

    .line 133
    :cond_2
    return-void
.end method

.method public setServerValue(Z)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 151
    iget v0, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->type:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 152
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid Type"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectProperty.setServerValue[b]("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") -["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->serverOverrideAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 158
    iget-boolean v0, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->serverOverrideAllowed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->configurationFrom:Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;

    sget-object v1, Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;->CONFIG:Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 159
    :cond_1
    sget-object v0, Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;->SERVER:Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;

    iput-object v0, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->configurationFrom:Lcom/nuance/swype/connect/configuration/ConnectProperty$ConfigurationType;

    .line 160
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/connect/configuration/ConnectProperty;->currentValue:Ljava/lang/Object;

    .line 161
    invoke-direct {p0}, Lcom/nuance/swype/connect/configuration/ConnectProperty;->save()V

    .line 163
    :cond_2
    return-void
.end method
