.class public Lcom/nuance/swype/connect/manager/SystemManager;
.super Lcom/nuance/swype/connect/manager/AbstractCommandManager;
.source "SystemManager.java"


# static fields
.field public static final COMMAND_FAMILY:Ljava/lang/String; = "system"

.field public static final COMMAND_PING:Ljava/lang/String; = "ping"

.field public static final COMMAND_VERSION:I = 0x2

.field public static final MANAGER_NAME:Ljava/lang/String; = "system"

.field private static final MESSAGES_HANDLED:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/nuance/swype/connect/manager/SystemManager;->MESSAGES_HANDLED:[I

    return-void
.end method

.method public constructor <init>(Lcom/nuance/swype/connect/ConnectClient;)V
    .locals 5
    .parameter "ctx"

    .prologue
    const/4 v4, 0x1

    .line 26
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    .line 27
    const/4 v0, 0x2

    iput v0, p0, Lcom/nuance/swype/connect/manager/SystemManager;->version:I

    .line 28
    const-string v0, "system"

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/SystemManager;->commandFamily:Ljava/lang/String;

    .line 29
    sget-object v0, Lcom/nuance/swype/connect/manager/SystemManager;->MESSAGES_HANDLED:[I

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/SystemManager;->messages:[I

    .line 31
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SystemManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "ping"

    new-array v2, v4, [I

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 32
    return-void
.end method

.method private processPingResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 89
    const-string v0, "Received Ping Response from Server"

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 90
    return-void
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .parameter "type"
    .parameter "data"

    .prologue
    .line 67
    return-void
.end method

.method public getDependencies()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "message"

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, handled:Z
    iget v1, p1, Landroid/os/Message;->what:I

    .line 53
    return v0
.end method

.method public onResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SystemManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "ping"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/SystemManager;->processPingResponse(Lcom/nuance/swype/connect/util/Response;)V

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    const-string v0, "unknown command sent to SystemManager"

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendPing()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 75
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 76
    .local v1, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "1"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v2, "ping"

    invoke-virtual {p0, v2, v1}, Lcom/nuance/swype/connect/manager/SystemManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 78
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    iput-boolean v5, v0, Lcom/nuance/swype/connect/util/Command;->requireDevice:Z

    .line 79
    iput-boolean v5, v0, Lcom/nuance/swype/connect/util/Command;->requireSession:Z

    .line 81
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/SystemManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    .line 82
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/SystemManager;->managerStartComplete()V

    .line 39
    return-void
.end method
