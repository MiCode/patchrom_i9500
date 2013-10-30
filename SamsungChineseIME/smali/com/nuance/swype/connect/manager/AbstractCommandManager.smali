.class public abstract Lcom/nuance/swype/connect/manager/AbstractCommandManager;
.super Ljava/lang/Object;
.source "AbstractCommandManager.java"

# interfaces
.implements Lcom/nuance/swype/connect/manager/interfaces/CommandManager;
.implements Lcom/nuance/swype/connect/manager/interfaces/Manager;
.implements Lcom/nuance/swype/connect/manager/interfaces/MessageProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/connect/manager/AbstractCommandManager$DownloadState;,
        Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;,
        Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;
    }
.end annotation


# static fields
.field public static final ANTI_SPAM_DELAY:I = 0x5

.field public static final COMMAND_ACK:Ljava/lang/String; = "ack"

.field public static final COMMAND_DOWNLOAD:Ljava/lang/String; = "download"

.field public static final COMMAND_GET:Ljava/lang/String; = "get"

.field public static final COMMAND_LIST:Ljava/lang/String; = "list"

.field static final COMMAND_RESPONSE_SUCCESS:[I = null

.field public static final COMMAND_STATUS:Ljava/lang/String; = "status"

.field public static final DOWNLOAD_LIST_STATE:Ljava/lang/String; = "DOWNLOAD_LIST_STATE"

.field public static final MAX_RETRIES_BEFORE_FAILURE:I = 0x3


# instance fields
.field protected client:Lcom/nuance/swype/connect/ConnectClient;

.field protected commandFamily:Ljava/lang/String;

.field protected lastCommand:Ljava/lang/String;

.field protected lastCommandRetryCount:I

.field protected managerDownloadListState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$DownloadState;

.field protected managerStartState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

.field protected messages:[I

.field protected final sentCommands:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/swype/connect/util/Command;",
            ">;>;"
        }
    .end annotation
.end field

.field protected trackSentCommands:Z

.field protected transactionId:Ljava/lang/String;

.field protected validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

.field protected version:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 187
    new-array v0, v2, [I

    const/4 v1, 0x0

    aput v2, v0, v1

    sput-object v0, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->COMMAND_RESPONSE_SUCCESS:[I

    return-void
.end method

.method public constructor <init>(Lcom/nuance/swype/connect/ConnectClient;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->sentCommands:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->trackSentCommands:Z

    .line 160
    sget-object v0, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->DISABLED:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->managerStartState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    .line 167
    sget-object v0, Lcom/nuance/swype/connect/manager/AbstractCommandManager$DownloadState;->DOWNLOAD_LIST_STATE_UNKNOWN:Lcom/nuance/swype/connect/manager/AbstractCommandManager$DownloadState;

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->managerDownloadListState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$DownloadState;

    .line 343
    iput-object p1, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    .line 344
    new-instance v0, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    invoke-direct {v0}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    .line 345
    return-void
.end method


# virtual methods
.method public abstract alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method protected calcDefaultMilliDelay()J
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const-string v1, "DEFAULT_DELAY"

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->getConfigurationIntValue(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/nuance/swype/connect/util/TimeConversion;->convertSecondsToMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected calcMessageSendDelay()J
    .locals 6

    .prologue
    .line 378
    const-wide/high16 v2, 0x4000

    iget v4, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->lastCommandRetryCount:I

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide/16 v4, 0x5

    invoke-static {v4, v5}, Lcom/nuance/swype/connect/util/TimeConversion;->convertSecondsToMillis(J)J

    move-result-wide v4

    long-to-double v4, v4

    mul-double v0, v2, v4

    .line 379
    .local v0, d:D
    double-to-long v2, v0

    return-wide v2
.end method

.method protected cancelCommand(Lcom/nuance/swype/connect/util/Command;)Z
    .locals 2
    .parameter "command"

    .prologue
    .line 237
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v1, p1}, Lcom/nuance/swype/connect/ConnectClient;->cancelCommand(Lcom/nuance/swype/connect/util/Command;)Z

    move-result v0

    .line 238
    .local v0, result:Z
    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->sentCommandFilter(Lcom/nuance/swype/connect/util/Command;)Lcom/nuance/swype/connect/util/Command;

    .line 241
    :cond_0
    return v0
.end method

.method protected createCommand(Ljava/lang/String;)Lcom/nuance/swype/connect/util/Command;
    .locals 2
    .parameter "action"

    .prologue
    .line 278
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 280
    .local v0, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v1

    return-object v1
.end method

.method protected createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/nuance/swype/connect/util/Command;
    .locals 2
    .parameter "action"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/nuance/swype/connect/util/Command;"
        }
    .end annotation

    .prologue
    .line 251
    .local p2, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p2, :cond_0

    .line 253
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->createCommand(Ljava/lang/String;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 269
    :goto_0
    return-object v0

    .line 256
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    invoke-virtual {v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->hasName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 257
    new-instance v0, Lcom/nuance/swype/connect/util/Command;

    invoke-direct {v0}, Lcom/nuance/swype/connect/util/Command;-><init>()V

    .line 258
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    goto :goto_0

    .line 263
    .end local v0           #command:Lcom/nuance/swype/connect/util/Command;
    :cond_1
    new-instance v0, Lcom/nuance/swype/connect/util/Command;

    invoke-direct {v0}, Lcom/nuance/swype/connect/util/Command;-><init>()V

    .line 264
    .restart local v0       #command:Lcom/nuance/swype/connect/util/Command;
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->commandFamily:Ljava/lang/String;

    iput-object v1, v0, Lcom/nuance/swype/connect/util/Command;->commandFamily:Ljava/lang/String;

    .line 265
    iget v1, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->version:I

    iput v1, v0, Lcom/nuance/swype/connect/util/Command;->version:I

    .line 266
    iput-object p1, v0, Lcom/nuance/swype/connect/util/Command;->command:Ljava/lang/String;

    .line 267
    iput-object p2, v0, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    .line 268
    iput-object p0, v0, Lcom/nuance/swype/connect/util/Command;->callbackManager:Lcom/nuance/swype/connect/manager/AbstractCommandManager;

    goto :goto_0
.end method

.method public delayFirstStart()J
    .locals 2

    .prologue
    .line 502
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public deregister()V
    .locals 0

    .prologue
    .line 511
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 205
    sget-object v0, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->DISABLED:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->managerStartState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    .line 206
    return-void
.end method

.method public getCommandFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->commandFamily:Ljava/lang/String;

    return-object v0
.end method

.method public getManagerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->commandFamily:Ljava/lang/String;

    return-object v0
.end method

.method public getManagerStartState()Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->managerStartState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    return-object v0
.end method

.method public getMessageIDs()[I
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->messages:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 392
    iget v0, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->version:I

    return v0
.end method

.method public abstract init()V
.end method

.method protected managerStartComplete()V
    .locals 2

    .prologue
    .line 497
    sget-object v0, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->managerStartState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    .line 498
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->getManagerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->managerStartComplete(Ljava/lang/String;)V

    .line 499
    return-void
.end method

.method public onCancel(Lcom/nuance/swype/connect/util/Command;)V
    .locals 1
    .parameter "command"

    .prologue
    .line 304
    iget-boolean v0, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->trackSentCommands:Z

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->sentCommandFilter(Lcom/nuance/swype/connect/util/Command;)Lcom/nuance/swype/connect/util/Command;

    .line 307
    :cond_0
    return-void
.end method

.method public onDownloadStatusResponse(Lcom/nuance/swype/connect/util/Command;II)V
    .locals 0
    .parameter "command"
    .parameter "downloaded"
    .parameter "total"

    .prologue
    .line 320
    return-void
.end method

.method public onFailure(Lcom/nuance/swype/connect/util/Command;)V
    .locals 2
    .parameter "command"

    .prologue
    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Abstract.onFailure("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 523
    iget-boolean v0, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->trackSentCommands:Z

    if-eqz v0, :cond_0

    .line 524
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->sentCommandFilter(Lcom/nuance/swype/connect/util/Command;)Lcom/nuance/swype/connect/util/Command;

    .line 526
    :cond_0
    return-void
.end method

.method public onFileResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->trackSentCommands:Z

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p1, Lcom/nuance/swype/connect/util/Response;->initialCommand:Lcom/nuance/swype/connect/util/Command;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->sentCommandFilter(Lcom/nuance/swype/connect/util/Command;)Lcom/nuance/swype/connect/util/Command;

    .line 293
    :cond_0
    return-void
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "message"

    .prologue
    .line 323
    const/4 v0, 0x0

    return v0
.end method

.method public onIOExceptionResponse(Lcom/nuance/swype/connect/util/Command;)V
    .locals 1
    .parameter "command"

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->trackSentCommands:Z

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->sentCommandFilter(Lcom/nuance/swype/connect/util/Command;)Lcom/nuance/swype/connect/util/Command;

    .line 300
    :cond_0
    return-void
.end method

.method public onNetworkTimeout(Lcom/nuance/swype/connect/util/Command;)V
    .locals 1
    .parameter "command"

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->trackSentCommands:Z

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->sentCommandFilter(Lcom/nuance/swype/connect/util/Command;)Lcom/nuance/swype/connect/util/Command;

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/connect/ConnectClient;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    .line 316
    return-void
.end method

.method public onResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->trackSentCommands:Z

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p1, Lcom/nuance/swype/connect/util/Response;->initialCommand:Lcom/nuance/swype/connect/util/Command;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->sentCommandFilter(Lcom/nuance/swype/connect/util/Command;)Lcom/nuance/swype/connect/util/Command;

    .line 334
    :cond_0
    return-void
.end method

.method public postStart()V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method public postUpgrade()V
    .locals 0

    .prologue
    .line 519
    return-void
.end method

.method protected preProcessResponse(Lcom/nuance/swype/connect/util/Response;I)Z
    .locals 3
    .parameter "response"
    .parameter "messageId"

    .prologue
    .line 481
    const/4 v0, 0x0

    .line 482
    .local v0, handledInternally:Z
    iget-object v1, p1, Lcom/nuance/swype/connect/util/Response;->command:Ljava/lang/String;

    iget v2, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    invoke-virtual {p0, v1, v2, p2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->preProcessResponse(Ljava/lang/String;II)Z

    .line 483
    return v0
.end method

.method protected preProcessResponse(Ljava/lang/Enum;Ljava/lang/String;I)Z
    .locals 10
    .parameter
    .parameter "responseStatus"
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<+",
            "Ljava/lang/Enum",
            "<*>;>;",
            "Ljava/lang/String;",
            "I)Z"
        }
    .end annotation

    .prologue
    .local p1, genericValidCommandsEnum:Ljava/lang/Enum;,"Ljava/lang/Enum<+Ljava/lang/Enum<*>;>;"
    const/4 v2, 0x0

    .line 419
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "preProcessResponse() command: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 421
    const/4 v1, 0x0

    .line 422
    .local v1, expectedResponse:Z
    const-string v4, "NONE"

    .line 424
    .local v4, processedCommand:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "isExpectedResponse"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 428
    .local v3, m:Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-virtual {v3, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 431
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "preProcessResponse() isExpectedResponse "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    const/4 v2, 0x0

    .line 438
    .local v2, handled:Z
    if-nez v1, :cond_0

    .line 439
    const/4 v2, 0x1

    .line 440
    iget v5, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->lastCommandRetryCount:I

    const/4 v6, 0x3

    if-gt v5, v6, :cond_0

    .line 441
    iget-object v5, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->calcMessageSendDelay()J

    move-result-wide v6

    invoke-virtual {v5, p3, v6, v7}, Lcom/nuance/swype/connect/ConnectClient;->postMessageDelayed(IJ)V

    .line 442
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "preProcessResponse() -- Response from server is not an expected response.  Command: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Response Status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 446
    .end local v2           #handled:Z
    .end local v3           #m:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return v2

    .line 432
    :catch_0
    move-exception v0

    .line 433
    .local v0, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "preProcessResponse() exception invoking isExpectedResponse !!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected preProcessResponse(Ljava/lang/String;II)Z
    .locals 4
    .parameter "name"
    .parameter "responseStatus"
    .parameter "messageId"

    .prologue
    .line 464
    const/4 v0, 0x0

    .line 466
    .local v0, handledInternally:Z
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    invoke-virtual {v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->hasName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    invoke-virtual {v1, p1, p2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isExpectedResponse(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 468
    iget v1, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->lastCommandRetryCount:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_0

    .line 469
    const/4 v0, 0x1

    .line 470
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->calcMessageSendDelay()J

    move-result-wide v2

    invoke-virtual {v1, p3, v2, v3}, Lcom/nuance/swype/connect/ConnectClient;->postMessageDelayed(IJ)V

    .line 471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response from server is not an expected response. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->commandFamily:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Response Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->i(Ljava/lang/String;)V

    .line 477
    :cond_0
    return v0
.end method

.method public prepareForUpgrade()V
    .locals 0

    .prologue
    .line 515
    return-void
.end method

.method public rebind()V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method protected removePreference(Ljava/lang/String;)V
    .locals 1
    .parameter "preference"

    .prologue
    .line 353
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/nuance/swype/connect/store/PersistentDataStore;->delete(Ljava/lang/String;)Z

    .line 354
    return-void
.end method

.method protected removePreferences([Ljava/lang/String;)V
    .locals 5
    .parameter "preferences"

    .prologue
    .line 363
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 364
    .local v3, preference:Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v4}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/nuance/swype/connect/store/PersistentDataStore;->delete(Ljava/lang/String;)Z

    .line 363
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 366
    .end local v3           #preference:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public restart()V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method protected sendCommand(Lcom/nuance/swype/connect/util/Command;)V
    .locals 2
    .parameter "command"

    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".sendCommand() - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/nuance/swype/connect/util/Command;->commandFamily:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/nuance/swype/connect/util/Command;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/nuance/swype/connect/util/Command;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 223
    iget-boolean v0, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->trackSentCommands:Z

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->sentCommands:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->managerStartState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    sget-object v1, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->DISABLED:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    iget-object v0, p1, Lcom/nuance/swype/connect/util/Command;->command:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->setLastCommand(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/connect/ConnectClient;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    .line 234
    :goto_0
    return-void

    .line 230
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendCommand() attempting to send command when "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has not completed starting. Attempted command:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/nuance/swype/connect/util/Command;->commandFamily:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/nuance/swype/connect/util/Command;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/nuance/swype/connect/util/Command;->command:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected sentCommandFilter(Lcom/nuance/swype/connect/util/Command;)Lcom/nuance/swype/connect/util/Command;
    .locals 4
    .parameter "incomingCommand"

    .prologue
    .line 529
    const/4 v2, 0x0

    .line 530
    .local v2, sentCommand:Lcom/nuance/swype/connect/util/Command;
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->sentCommands:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/nuance/swype/connect/util/Command;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 531
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/util/Command;

    .line 532
    .local v0, c:Lcom/nuance/swype/connect/util/Command;
    if-nez v0, :cond_1

    .line 533
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 536
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 537
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 538
    move-object v2, v0

    .line 542
    .end local v0           #c:Lcom/nuance/swype/connect/util/Command;
    :cond_2
    return-object v2
.end method

.method protected setLastCommand(Ljava/lang/String;)V
    .locals 1
    .parameter "command"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->lastCommand:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget v0, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->lastCommandRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->lastCommandRetryCount:I

    .line 374
    :goto_0
    iput-object p1, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->lastCommand:Ljava/lang/String;

    .line 375
    return-void

    .line 372
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->lastCommandRetryCount:I

    goto :goto_0
.end method

.method public abstract start()V
.end method
