.class public Lcom/nuance/swype/connect/manager/SessionManager;
.super Lcom/nuance/swype/connect/manager/AbstractCommandManager;
.source "SessionManager.java"


# static fields
.field public static final COMMAND_CREATE:Ljava/lang/String; = "create"

.field public static final COMMAND_FAMILY:Ljava/lang/String; = "session"

.field public static final COMMAND_INVALIDATE:Ljava/lang/String; = "invalidate"

.field public static final COMMAND_POLL:Ljava/lang/String; = "poll"

.field public static final COMMAND_VALIDATE:Ljava/lang/String; = "validate"

.field public static final COMMAND_VERSION:I = 0x2

.field public static final MANAGER_NAME:Ljava/lang/String; = "session"

.field private static final MESSAGES_HANDLED:[I = null

.field private static final MINIMUM_POLLING_INVERVAL:I = 0x14

.field public static final POLL:Ljava/lang/String; = "poll"

.field private static final SESSION_ID_KEY:Ljava/lang/String; = "SESSION_ID"

.field private static final SESSION_TRANSID_KEY:Ljava/lang/String; = "SESSION_TRANSID"


# instance fields
.field private pollingChangeListener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

.field protected pollingInterval:I

.field private volatile sessionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nuance/swype/connect/manager/SessionManager;->MESSAGES_HANDLED:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0xeet 0x0t 0x0t 0x0t
        0x1bt 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/nuance/swype/connect/ConnectClient;)V
    .locals 4
    .parameter "ctx"

    .prologue
    const/4 v3, 0x2

    .line 78
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    .line 40
    const/16 v0, 0x14

    iput v0, p0, Lcom/nuance/swype/connect/manager/SessionManager;->pollingInterval:I

    .line 44
    new-instance v0, Lcom/nuance/swype/connect/manager/SessionManager$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/connect/manager/SessionManager$1;-><init>(Lcom/nuance/swype/connect/manager/SessionManager;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/SessionManager;->pollingChangeListener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

    .line 79
    iput v3, p0, Lcom/nuance/swype/connect/manager/SessionManager;->version:I

    .line 80
    const-string v0, "session"

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/SessionManager;->commandFamily:Ljava/lang/String;

    .line 81
    sget-object v0, Lcom/nuance/swype/connect/manager/SessionManager;->MESSAGES_HANDLED:[I

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/SessionManager;->messages:[I

    .line 84
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SessionManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "create"

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 88
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SessionManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "validate"

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 92
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SessionManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "invalidate"

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 96
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SessionManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "poll"

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 100
    return-void

    .line 84
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
    .end array-data

    .line 88
    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 92
    :array_2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 96
    :array_3
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private determineNextPoll()V
    .locals 5

    .prologue
    .line 286
    iget v1, p0, Lcom/nuance/swype/connect/manager/SessionManager;->pollingInterval:I

    if-nez v1, :cond_0

    .line 294
    :goto_0
    return-void

    .line 290
    :cond_0
    new-instance v1, Lcom/nuance/swype/connect/util/Alarm$Builder;

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/SessionManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/ConnectClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/nuance/swype/connect/manager/SessionManager;

    const-string v4, "poll"

    invoke-direct {v1, v2, v3, v4}, Lcom/nuance/swype/connect/util/Alarm$Builder;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    iget v2, p0, Lcom/nuance/swype/connect/manager/SessionManager;->pollingInterval:I

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/util/Alarm$Builder;->seconds(I)Lcom/nuance/swype/connect/util/Alarm$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/util/Alarm$Builder;->build()Lcom/nuance/swype/connect/util/Alarm;

    move-result-object v0

    .line 292
    .local v0, alarm:Lcom/nuance/swype/connect/util/Alarm;
    invoke-virtual {v0}, Lcom/nuance/swype/connect/util/Alarm;->set()V

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "determineNextPoll "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/nuance/swype/connect/util/Alarm;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadPreferences()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 382
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/SessionManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v0

    .line 383
    .local v0, prefs:Lcom/nuance/swype/connect/store/PersistentDataStore;
    const-string v1, "SESSION_ID"

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/connect/manager/SessionManager;->sessionId:Ljava/lang/String;

    .line 384
    const-string v1, "SESSION_TRANSID"

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/connect/manager/SessionManager;->transactionId:Ljava/lang/String;

    .line 385
    return-void
.end method

.method private processCreateSessionResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 298
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/connect/manager/SessionManager;->preProcessResponse(Lcom/nuance/swype/connect/util/Response;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    iget v0, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 304
    :pswitch_0
    iget-object v0, p1, Lcom/nuance/swype/connect/util/Response;->sessionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/SessionManager;->sessionId:Ljava/lang/String;

    .line 306
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SessionManager;->managerStartState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    sget-object v1, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/SessionManager;->poll()V

    .line 308
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/SessionManager;->managerStartComplete()V

    goto :goto_0

    .line 302
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private processInvalidateSessionResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 342
    const/4 v0, 0x7

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/connect/manager/SessionManager;->preProcessResponse(Lcom/nuance/swype/connect/util/Response;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    iget v0, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 347
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/SessionManager;->resetSession()V

    goto :goto_0

    .line 348
    :cond_2
    iget v0, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    if-nez v0, :cond_0

    .line 349
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/SessionManager;->invalidateSession()V

    goto :goto_0
.end method

.method private processPollResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 6
    .parameter "response"

    .prologue
    .line 354
    const-string v4, "Received Message Response from Server"

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 356
    const/16 v4, 0xe

    invoke-virtual {p0, p1, v4}, Lcom/nuance/swype/connect/manager/SessionManager;->preProcessResponse(Lcom/nuance/swype/connect/util/Response;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    iget v4, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 363
    iget-object v4, p1, Lcom/nuance/swype/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v5, "29"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/nuance/swype/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v5, "29"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/json/JSONArray;

    if-eqz v4, :cond_0

    .line 367
    :try_start_0
    iget-object v4, p1, Lcom/nuance/swype/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v5, "29"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    .line 368
    .local v3, tasks:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 369
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 371
    .local v2, taskString:Ljava/lang/String;
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/SessionManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v4, v2}, Lcom/nuance/swype/connect/ConnectClient;->performTask(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 374
    .end local v1           #i:I
    .end local v2           #taskString:Ljava/lang/String;
    .end local v3           #tasks:Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 375
    .local v0, ex:Lorg/json/JSONException;
    const-string v4, "Exception processing poll responses"

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processValidateSessionResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 320
    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/connect/manager/SessionManager;->preProcessResponse(Lcom/nuance/swype/connect/util/Response;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    iget v0, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 334
    :pswitch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/SessionManager;->sessionId:Ljava/lang/String;

    .line 335
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/SessionManager;->createSession()V

    goto :goto_0

    .line 328
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SessionManager;->managerStartState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    sget-object v1, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/SessionManager;->poll()V

    .line 330
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/SessionManager;->managerStartComplete()V

    goto :goto_0

    .line 324
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private resetSession()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 409
    iput-object v0, p0, Lcom/nuance/swype/connect/manager/SessionManager;->sessionId:Ljava/lang/String;

    .line 410
    iput-object v0, p0, Lcom/nuance/swype/connect/manager/SessionManager;->transactionId:Ljava/lang/String;

    .line 411
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/SessionManager;->savePreferences()V

    .line 412
    return-void
.end method

.method private savePreferences()V
    .locals 3

    .prologue
    .line 388
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/SessionManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v0

    .line 389
    .local v0, prefs:Lcom/nuance/swype/connect/store/PersistentDataStore;
    const-string v1, "SESSION_ID"

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/SessionManager;->sessionId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 390
    const-string v1, "SESSION_TRANSID"

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/SessionManager;->transactionId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 391
    return-void
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter "type"
    .parameter "data"

    .prologue
    .line 222
    const-string v0, "poll"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/SessionManager;->poll()V

    .line 225
    :cond_0
    return-void
.end method

.method public createSession()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 231
    const-string v1, "create"

    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/manager/SessionManager;->createCommand(Ljava/lang/String;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 232
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    iput-boolean v2, v0, Lcom/nuance/swype/connect/util/Command;->requireSession:Z

    .line 233
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nuance/swype/connect/util/Command;->requireDevice:Z

    .line 234
    iput-boolean v2, v0, Lcom/nuance/swype/connect/util/Command;->allowDuplicateOfCommand:Z

    .line 236
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/SessionManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    .line 237
    return-void
.end method

.method public deregister()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Lcom/nuance/swype/connect/manager/SessionManager;->sessionId:Ljava/lang/String;

    .line 137
    iput-object v0, p0, Lcom/nuance/swype/connect/manager/SessionManager;->transactionId:Ljava/lang/String;

    .line 138
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/SessionManager;->savePreferences()V

    .line 139
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 131
    invoke-super {p0}, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->destroy()V

    .line 132
    return-void
.end method

.method public getDependencies()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 120
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "device"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getDependency()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SessionManager;->sessionId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 400
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/SessionManager;->loadPreferences()V

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SessionManager;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/SessionManager;->loadPreferences()V

    .line 104
    return-void
.end method

.method public invalidateSession()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 257
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/SessionManager;->sessionId:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 268
    :goto_0
    return-void

    .line 261
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 262
    .local v1, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "3"

    iget-object v3, p0, Lcom/nuance/swype/connect/manager/SessionManager;->sessionId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v2, "invalidate"

    invoke-virtual {p0, v2, v1}, Lcom/nuance/swype/connect/manager/SessionManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 264
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    iput-boolean v4, v0, Lcom/nuance/swype/connect/util/Command;->requireSession:Z

    .line 265
    iput-boolean v4, v0, Lcom/nuance/swype/connect/util/Command;->requireDevice:Z

    .line 267
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/SessionManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    goto :goto_0
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "message"

    .prologue
    .line 146
    const/4 v2, 0x0

    .line 147
    .local v2, handled:Z
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 200
    :goto_0
    return v2

    .line 149
    :sswitch_0
    const-string v3, "Message: Command Session Create"

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/SessionManager;->createSession()V

    .line 151
    const/4 v2, 0x1

    .line 152
    goto :goto_0

    .line 155
    :sswitch_1
    const-string v3, "Message: Command Session Validate"

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/SessionManager;->validateSession()V

    .line 157
    const/4 v2, 0x1

    .line 158
    goto :goto_0

    .line 161
    :sswitch_2
    const-string v3, "Message: Command Session Invalidate"

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/SessionManager;->invalidateSession()V

    .line 163
    const/4 v2, 0x1

    .line 164
    goto :goto_0

    .line 167
    :sswitch_3
    const-string v3, "Message: Command Session Invalidate"

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/SessionManager;->poll()V

    .line 169
    const/4 v2, 0x1

    .line 170
    goto :goto_0

    .line 173
    :sswitch_4
    const-string v3, "Message: MESSAGE_RESET_SESSION"

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 174
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/SessionManager;->resetSession()V

    .line 175
    const/4 v2, 0x1

    .line 176
    goto :goto_0

    .line 179
    :sswitch_5
    const-string v3, "Message: MESSAGE_CLIENT_REFRESH"

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/SessionManager;->poll()V

    .line 181
    const/4 v2, 0x1

    .line 182
    goto :goto_0

    .line 185
    :sswitch_6
    const-string v3, "Message: MESSAGE_CLIENT_SET_POLLING_FREQUENCY"

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 187
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "DEFAULT_KEY"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 189
    .local v1, frequency:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MESSAGE_CLIENT_SET_POLLING_FREQUENCY Frequency="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "POLLING_FREQUENCY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 191
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/SessionManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/ConnectClient;->getConfiguration()Lcom/nuance/swype/connect/configuration/ConnectConfiguration;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "POLLING_FREQUENCY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->updateFromString(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 194
    .end local v1           #frequency:I
    :catch_0
    move-exception v0

    .line 195
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "Frequency formatted incorrectly"

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 147
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x6 -> :sswitch_1
        0x7 -> :sswitch_2
        0x8 -> :sswitch_3
        0x3c -> :sswitch_4
        0xee -> :sswitch_5
        0x11b -> :sswitch_6
    .end sparse-switch
.end method

.method public onResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 205
    iget-object v0, p1, Lcom/nuance/swype/connect/util/Response;->transactionId:Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/SessionManager;->transactionId:Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SessionManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "create"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/SessionManager;->processCreateSessionResponse(Lcom/nuance/swype/connect/util/Response;)V

    .line 217
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/SessionManager;->savePreferences()V

    .line 218
    return-void

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SessionManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "validate"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/SessionManager;->processValidateSessionResponse(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SessionManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "invalidate"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 212
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/SessionManager;->processInvalidateSessionResponse(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0

    .line 213
    :cond_3
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SessionManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "poll"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/SessionManager;->processPollResponse(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0
.end method

.method public poll()V
    .locals 2

    .prologue
    .line 274
    const-string v1, "Session.Poll"

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 275
    const-string v1, "poll"

    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/manager/SessionManager;->createCommand(Ljava/lang/String;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 276
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nuance/swype/connect/util/Command;->allowDuplicateOfCommand:Z

    .line 277
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nuance/swype/connect/util/Command;->realTimeEnabled:Z

    .line 278
    const-string v1, "s"

    iput-object v1, v0, Lcom/nuance/swype/connect/util/Command;->realTimeTopic:Ljava/lang/String;

    .line 279
    const-string v1, "0"

    iput-object v1, v0, Lcom/nuance/swype/connect/util/Command;->realTimeSubTopic:Ljava/lang/String;

    .line 280
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/SessionManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    .line 282
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/SessionManager;->determineNextPoll()V

    .line 283
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 107
    sget-object v0, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/SessionManager;->managerStartState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    .line 109
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SessionManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getConfiguration()Lcom/nuance/swype/connect/configuration/ConnectConfiguration;

    move-result-object v0

    const-string v1, "POLLING_FREQUENCY"

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/SessionManager;->pollingChangeListener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->setConfigurationListener(Ljava/lang/String;Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;Z)V

    .line 112
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SessionManager;->sessionId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/SessionManager;->createSession()V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/SessionManager;->sessionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/SessionManager;->validateSession()V

    goto :goto_0
.end method

.method public validateSession()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 241
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/SessionManager;->sessionId:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/SessionManager;->createSession()V

    .line 253
    :goto_0
    return-void

    .line 246
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 247
    .local v1, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "3"

    iget-object v3, p0, Lcom/nuance/swype/connect/manager/SessionManager;->sessionId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v2, "validate"

    invoke-virtual {p0, v2, v1}, Lcom/nuance/swype/connect/manager/SessionManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 249
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    iput-boolean v4, v0, Lcom/nuance/swype/connect/util/Command;->requireSession:Z

    .line 250
    iput-boolean v4, v0, Lcom/nuance/swype/connect/util/Command;->requireDevice:Z

    .line 252
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/SessionManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    goto :goto_0
.end method
