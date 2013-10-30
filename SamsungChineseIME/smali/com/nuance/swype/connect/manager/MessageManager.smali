.class public Lcom/nuance/swype/connect/manager/MessageManager;
.super Lcom/nuance/swype/connect/manager/AbstractCommandManager;
.source "MessageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;
    }
.end annotation


# static fields
.field public static final COMMAND_FAMILY:Ljava/lang/String; = "messaging"

.field public static final COMMAND_GET_NEXT:Ljava/lang/String; = "getNext"

.field public static final COMMAND_VERSION:I = 0x3

.field public static final MANAGER_NAME:Ljava/lang/String; = "messaging"

.field private static final MESSAGES_HANDLED:[I


# instance fields
.field private lastMessage:Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;

.field private messageExperationListener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

.field private messageExperationSeconds:I

.field private systemMessages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nuance/swype/connect/manager/MessageManager;->MESSAGES_HANDLED:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x3ft 0x0t 0x0t 0x0t
        0xdft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/nuance/swype/connect/ConnectClient;)V
    .locals 5
    .parameter "ctx"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 86
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    .line 36
    const v0, 0x76a700

    iput v0, p0, Lcom/nuance/swype/connect/manager/MessageManager;->messageExperationSeconds:I

    .line 77
    new-instance v0, Lcom/nuance/swype/connect/manager/MessageManager$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/connect/manager/MessageManager$1;-><init>(Lcom/nuance/swype/connect/manager/MessageManager;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/MessageManager;->messageExperationListener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

    .line 87
    const/4 v0, 0x3

    iput v0, p0, Lcom/nuance/swype/connect/manager/MessageManager;->version:I

    .line 88
    const-string v0, "messaging"

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/MessageManager;->commandFamily:Ljava/lang/String;

    .line 89
    sget-object v0, Lcom/nuance/swype/connect/manager/MessageManager;->MESSAGES_HANDLED:[I

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/MessageManager;->messages:[I

    .line 90
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/MessageManager;->systemMessages:Ljava/util/Map;

    .line 93
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/MessageManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "getNext"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 96
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/MessageManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "get"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 99
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/MessageManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "ack"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 102
    return-void
.end method

.method static synthetic access$002(Lcom/nuance/swype/connect/manager/MessageManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/nuance/swype/connect/manager/MessageManager;->messageExperationSeconds:I

    return p1
.end method

.method private deleteMessage(Ljava/lang/String;)V
    .locals 3
    .parameter "messageId"

    .prologue
    .line 437
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/MessageManager;->systemMessages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/MessageManager;->savePreferences()V

    .line 439
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/MessageManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x52

    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/MessageManager;->getMessagesAsBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILandroid/os/Bundle;)V

    .line 441
    return-void
.end method

.method private doNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "message"
    .parameter "target"
    .parameter "url"

    .prologue
    .line 456
    const-string v0, "com.nuance.swype.input.MessagesActivity"

    .line 457
    .local v0, action:Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 459
    .local v1, extras:Landroid/os/Bundle;
    if-eqz p2, :cond_0

    .line 460
    const-string v2, "UPGRADE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 461
    const-string v0, "com.nuance.swype.input.Upgrade"

    .line 476
    :cond_0
    :goto_0
    new-instance v2, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    iget-object v3, p0, Lcom/nuance/swype/connect/manager/MessageManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-direct {v2, v3}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    invoke-virtual {v2, v0}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setAction(Ljava/lang/String;)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setMessage(Ljava/lang/String;)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setTarget(Ljava/lang/String;)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setUrl(Ljava/lang/String;)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setExtras(Landroid/os/Bundle;)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->send()Lcom/nuance/swype/connect/util/StatusBarNotification;

    .line 482
    return-void

    .line 462
    :cond_1
    const-string v2, "PRIVACY"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 463
    const-string v0, "com.nuance.swype.input.DisplaySettings"

    .line 464
    const-string v2, "DEFAULT_KEY"

    const-string v3, "PRIVACY"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 465
    :cond_2
    const-string v2, "SETTINGS"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 466
    const-string v0, "com.nuance.swype.input.DisplaySettings"

    goto :goto_0

    .line 467
    :cond_3
    const-string v2, "SETTINGS_CONNECT"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 468
    const-string v0, "com.nuance.swype.input.DisplaySettings"

    .line 469
    const-string v2, "DEFAULT_KEY"

    const-string v3, "CONNECT"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 470
    :cond_4
    const-string v2, "SETTINGS_UPGRADE"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 471
    const-string v0, "com.nuance.swype.input.DisplaySettings"

    .line 472
    const-string v2, "DEFAULT_KEY"

    const-string v3, "UPDATES"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getMessagesAsBundle()Landroid/os/Bundle;
    .locals 8

    .prologue
    .line 277
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 278
    .local v0, b:Landroid/os/Bundle;
    iget-object v6, p0, Lcom/nuance/swype/connect/manager/MessageManager;->systemMessages:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 279
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .local v4, keys:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/nuance/swype/connect/manager/MessageManager;->systemMessages:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 281
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 282
    .local v3, key:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;

    .line 283
    .local v5, m:Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_subject"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;->subject:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_body"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;->body:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_time"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;->time:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x2c

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 288
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;>;"
    .end local v3           #key:Ljava/lang/String;
    .end local v5           #m:Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;
    :cond_0
    const-string v6, "MessageIDs"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #keys:Ljava/lang/StringBuilder;
    :cond_1
    return-object v0
.end method

.method private loadPreferences()V
    .locals 1

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/MessageManager;->loadSystemMessages()Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/MessageManager;->systemMessages:Ljava/util/Map;

    .line 385
    return-void
.end method

.method private loadSystemMessages()Ljava/util/LinkedHashMap;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 389
    iget-object v8, p0, Lcom/nuance/swype/connect/manager/MessageManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v8}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v8

    const-string v9, "MESSAGES_STORED"

    invoke-interface {v8, v9}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedHashMap;

    .line 391
    .local v3, hash:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;>;"
    if-nez v3, :cond_0

    .line 392
    new-instance v3, Ljava/util/LinkedHashMap;

    .end local v3           #hash:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;>;"
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 397
    .restart local v3       #hash:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;>;"
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget v10, p0, Lcom/nuance/swype/connect/manager/MessageManager;->messageExperationSeconds:I

    mul-int/lit16 v10, v10, 0x3e8

    int-to-long v10, v10

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 398
    .local v2, expireTime:Ljava/lang/Long;
    const/4 v6, 0x0

    .line 399
    .local v6, messageListUpdated:Z
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 400
    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;>;>;"
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 401
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 402
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;

    .line 403
    .local v5, m:Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;
    const-wide/high16 v8, -0x8000

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 405
    .local v7, messageTimestamp:Ljava/lang/Long;
    :try_start_0
    iget-object v8, v5, Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;->time:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 410
    :goto_1
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    .line 411
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadSystemMessages() -- removing message "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 412
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 413
    const/4 v6, 0x1

    .line 414
    goto :goto_0

    .line 406
    :catch_0
    move-exception v0

    .line 408
    .local v0, e:Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadSystemMessages() -- invalid timestamp "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 417
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;>;"
    .end local v5           #m:Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;
    .end local v7           #messageTimestamp:Ljava/lang/Long;
    :cond_2
    if-eqz v6, :cond_3

    .line 418
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/MessageManager;->savePreferences()V

    .line 421
    :cond_3
    return-object v3
.end method

.method private messageFromResponse(Lcom/nuance/swype/connect/util/Response;)Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;
    .locals 14
    .parameter "response"

    .prologue
    const/4 v5, 0x0

    .line 315
    iget-object v6, p1, Lcom/nuance/swype/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v12, "38"

    invoke-virtual {v6, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 316
    .local v2, subject:Ljava/lang/String;
    iget-object v6, p1, Lcom/nuance/swype/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v12, "39"

    invoke-virtual {v6, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 317
    .local v3, body:Ljava/lang/String;
    iget-object v6, p1, Lcom/nuance/swype/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v12, "41"

    invoke-virtual {v6, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/nuance/swype/connect/manager/MessageManager;->translateTargetId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 318
    .local v4, target:Ljava/lang/String;
    iget-object v6, p1, Lcom/nuance/swype/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v12, "42"

    invoke-virtual {v6, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 319
    .local v1, messageId:Ljava/lang/String;
    iget-object v6, p1, Lcom/nuance/swype/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v12, "11"

    invoke-virtual {v6, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 320
    .local v7, language:Ljava/lang/String;
    iget-object v8, p1, Lcom/nuance/swype/connect/util/Response;->thirdPartyURL:Ljava/lang/String;

    .line 322
    .local v8, url:Ljava/lang/String;
    new-instance v0, Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;

    invoke-static {}, Lcom/nuance/swype/connect/util/TimeConversion;->getCurrentTime()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v8}, Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    .local v0, message:Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    Message=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] messageId=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "url["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 327
    :try_start_0
    iget-object v5, p1, Lcom/nuance/swype/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v6, "40"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/json/JSONArray;

    .line 328
    .local v11, modes:Lorg/json/JSONArray;
    if-eqz v11, :cond_0

    .line 329
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v5, v5, [I

    iput-object v5, v0, Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;->modes:[I

    .line 330
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v10, v5, :cond_1

    .line 331
    iget-object v5, v0, Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;->modes:[I

    invoke-virtual {v11, v10}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    aput v6, v5, v10

    .line 330
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 334
    .end local v10           #i:I
    :cond_0
    const/4 v5, 0x0

    iput-object v5, v0, Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;->modes:[I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    .end local v11           #modes:Lorg/json/JSONArray;
    :cond_1
    :goto_1
    return-object v0

    .line 336
    :catch_0
    move-exception v9

    .line 337
    .local v9, e:Lorg/json/JSONException;
    invoke-virtual {v9}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private processAckMessageResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 6
    .parameter "response"

    .prologue
    .line 350
    const/16 v3, 0xc

    invoke-virtual {p0, p1, v3}, Lcom/nuance/swype/connect/manager/MessageManager;->preProcessResponse(Lcom/nuance/swype/connect/util/Response;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 377
    :goto_0
    return-void

    .line 354
    :cond_0
    iget v3, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/nuance/swype/connect/manager/MessageManager;->lastMessage:Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;

    iget-object v3, v3, Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;->modes:[I

    if-eqz v3, :cond_1

    .line 355
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/MessageManager;->lastMessage:Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;

    iget-object v3, v3, Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;->modes:[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 356
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/MessageManager;->lastMessage:Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;

    iget-object v3, v3, Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;->modes:[I

    aget v2, v3, v0

    .line 358
    .local v2, mode:I
    packed-switch v2, :pswitch_data_0

    .line 355
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 360
    :pswitch_0
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/MessageManager;->lastMessage:Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;

    .line 361
    .local v1, m:Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/MessageManager;->systemMessages:Ljava/util/Map;

    iget-object v4, p0, Lcom/nuance/swype/connect/manager/MessageManager;->lastMessage:Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;

    iget-object v4, v4, Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;->messageId:Ljava/lang/String;

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 364
    .end local v1           #m:Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;
    :pswitch_1
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/MessageManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v4, 0x4f

    iget-object v5, p0, Lcom/nuance/swype/connect/manager/MessageManager;->lastMessage:Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;

    iget-object v5, v5, Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;->subject:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILjava/lang/String;)V

    goto :goto_2

    .line 368
    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processAckMessageResponse lastMessage.url"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/swype/connect/manager/MessageManager;->lastMessage:Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;

    iget-object v4, v4, Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 369
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/MessageManager;->lastMessage:Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;

    iget-object v3, v3, Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;->subject:Ljava/lang/String;

    iget-object v4, p0, Lcom/nuance/swype/connect/manager/MessageManager;->lastMessage:Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;

    iget-object v4, v4, Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;->target:Ljava/lang/String;

    iget-object v5, p0, Lcom/nuance/swype/connect/manager/MessageManager;->lastMessage:Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;

    iget-object v5, v5, Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;->url:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5}, Lcom/nuance/swype/connect/manager/MessageManager;->doNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 374
    .end local v0           #i:I
    .end local v2           #mode:I
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/MessageManager;->savePreferences()V

    .line 375
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/MessageManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v4, 0x52

    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/MessageManager;->getMessagesAsBundle()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 358
    nop

    :pswitch_data_0
    .packed-switch 0x1fe
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private processMessageResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 5
    .parameter "response"

    .prologue
    .line 249
    const/16 v2, 0xd

    invoke-virtual {p0, p1, v2}, Lcom/nuance/swype/connect/manager/MessageManager;->preProcessResponse(Lcom/nuance/swype/connect/util/Response;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 274
    :goto_0
    return-void

    .line 253
    :cond_0
    iget v2, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 254
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/MessageManager;->messageFromResponse(Lcom/nuance/swype/connect/util/Response;)Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;

    move-result-object v1

    .line 257
    .local v1, message:Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/MessageManager;->systemMessages:Ljava/util/Map;

    iget-object v3, v1, Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;->messageId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 258
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/MessageManager;->systemMessages:Ljava/util/Map;

    iget-object v3, v1, Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;->messageId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;

    .line 259
    .local v0, m:Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;
    iget-object v2, v1, Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;->subject:Ljava/lang/String;

    iput-object v2, v0, Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;->subject:Ljava/lang/String;

    .line 260
    iget-object v2, v1, Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;->body:Ljava/lang/String;

    iput-object v2, v0, Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;->body:Ljava/lang/String;

    .line 261
    iget-object v2, v1, Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;->target:Ljava/lang/String;

    iput-object v2, v0, Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;->target:Ljava/lang/String;

    .line 262
    iget-object v2, v1, Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;->modes:[I

    iput-object v2, v0, Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;->modes:[I

    .line 263
    iget-object v2, v1, Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;->language:Ljava/lang/String;

    iput-object v2, v0, Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;->language:Ljava/lang/String;

    .line 264
    iget-object v2, v1, Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;->url:Ljava/lang/String;

    iput-object v2, v0, Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;->url:Ljava/lang/String;

    .line 268
    :goto_1
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/MessageManager;->systemMessages:Ljava/util/Map;

    iget-object v3, v0, Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;->messageId:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    .end local v0           #m:Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;
    .end local v1           #message:Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;
    :cond_1
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/MessageManager;->savePreferences()V

    .line 272
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/MessageManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v3, 0x52

    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/MessageManager;->getMessagesAsBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 266
    .restart local v1       #message:Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;
    :cond_2
    move-object v0, v1

    .restart local v0       #m:Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;
    goto :goto_1
.end method

.method private processNextMessageResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 299
    const-string v0, "Received Message Response from Server"

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 301
    const/16 v0, 0xc

    invoke-virtual {p0, p1, v0}, Lcom/nuance/swype/connect/manager/MessageManager;->preProcessResponse(Lcom/nuance/swype/connect/util/Response;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    iget v0, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 306
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/MessageManager;->messageFromResponse(Lcom/nuance/swype/connect/util/Response;)Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/MessageManager;->lastMessage:Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;

    .line 308
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/MessageManager;->lastMessage:Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;

    iget-object v0, v0, Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;->messageId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/MessageManager;->lastMessage:Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;

    iget-object v0, v0, Lcom/nuance/swype/connect/manager/MessageManager$SwypeMessage;->messageId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/MessageManager;->ackMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private savePreferences()V
    .locals 3

    .prologue
    .line 428
    const-string v0, "MessgeManager.savePreference()"

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/MessageManager;->systemMessages:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/swype/connect/manager/MessageManager;->systemMessages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/MessageManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "MESSAGES_STORED"

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/MessageManager;->systemMessages:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveObject(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 434
    :goto_0
    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/MessageManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "MESSAGES_STORED"

    invoke-interface {v0, v1}, Lcom/nuance/swype/connect/store/PersistentDataStore;->delete(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private translateTargetId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "targetId"

    .prologue
    .line 495
    const/16 v0, 0x1fd

    .line 496
    .local v0, target:I
    const-string v1, "NONE"

    .line 499
    .local v1, translated:Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 504
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 535
    :pswitch_0
    const-string v1, "NONE"

    .line 539
    :goto_1
    return-object v1

    .line 506
    :pswitch_1
    const-string v1, "MESSAGE"

    .line 507
    goto :goto_1

    .line 510
    :pswitch_2
    const-string v1, "UPGRADE"

    .line 511
    goto :goto_1

    .line 514
    :pswitch_3
    const-string v1, "PRIVACY"

    .line 515
    goto :goto_1

    .line 518
    :pswitch_4
    const-string v1, "URL"

    .line 519
    goto :goto_1

    .line 522
    :pswitch_5
    const-string v1, "SETTINGS"

    .line 523
    goto :goto_1

    .line 526
    :pswitch_6
    const-string v1, "SETTINGS_CONNECT"

    .line 527
    goto :goto_1

    .line 530
    :pswitch_7
    const-string v1, "SETTINGS_UPGRADE"

    .line 531
    goto :goto_1

    .line 500
    :catch_0
    move-exception v2

    goto :goto_0

    .line 504
    nop

    :pswitch_data_0
    .packed-switch 0x1f9
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public ackMessage(Ljava/lang/String;)V
    .locals 3
    .parameter "msgID"

    .prologue
    .line 200
    if-nez p1, :cond_0

    .line 201
    const-string v2, "Attempting to acknowledge a null message"

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 210
    :goto_0
    return-void

    .line 205
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 206
    .local v1, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "42"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v2, "ack"

    invoke-virtual {p0, v2, v1}, Lcom/nuance/swype/connect/manager/MessageManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 208
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/MessageManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    .line 209
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/MessageManager;->loadPreferences()V

    goto :goto_0
.end method

.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .parameter "type"
    .parameter "data"

    .prologue
    .line 241
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/MessageManager;->savePreferences()V

    .line 125
    invoke-super {p0}, Lcom/nuance/swype/connect/manager/AbstractCommandManager;->destroy()V

    .line 126
    return-void
.end method

.method public getDependencies()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 119
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "session"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getMessage(Ljava/lang/String;)V
    .locals 4
    .parameter "msgID"

    .prologue
    .line 173
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 174
    .local v1, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "11"

    iget-object v3, p0, Lcom/nuance/swype/connect/manager/MessageManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/ConnectClient;->getCurrentLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v2, "42"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v2, "get"

    invoke-virtual {p0, v2, v1}, Lcom/nuance/swype/connect/manager/MessageManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 177
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/MessageManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    .line 178
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/MessageManager;->loadPreferences()V

    .line 179
    return-void
.end method

.method public getNextMessage()V
    .locals 4

    .prologue
    .line 185
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 186
    .local v1, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "11"

    iget-object v3, p0, Lcom/nuance/swype/connect/manager/MessageManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/ConnectClient;->getCurrentLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v2, "getNext"

    invoke-virtual {p0, v2, v1}, Lcom/nuance/swype/connect/manager/MessageManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 188
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/nuance/swype/connect/util/Command;->allowDuplicateOfCommand:Z

    .line 189
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/MessageManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    .line 190
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/MessageManager;->loadPreferences()V

    .line 191
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/MessageManager;->loadPreferences()V

    .line 106
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/MessageManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x52

    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/MessageManager;->getMessagesAsBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILandroid/os/Bundle;)V

    .line 108
    return-void
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "message"

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, handled:Z
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 163
    :goto_0
    return v0

    .line 136
    :sswitch_0
    const-string v2, "MessageManager.onHandleMessage(MESSAGE_COMMAND_RETRIEVE_MESSAGE)"

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/MessageManager;->getNextMessage()V

    .line 138
    const/4 v0, 0x1

    .line 139
    goto :goto_0

    .line 142
    :sswitch_1
    const-string v2, "MessageManager.onHandleMessage(MESSAGE_COMMAND_RETRIEVE_MESSAGE_BY_ID)"

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "DEFAULT_KEY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, messageId:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message Retrieve Message by ID("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/manager/MessageManager;->getMessage(Ljava/lang/String;)V

    .line 146
    const/4 v0, 0x1

    .line 147
    goto :goto_0

    .line 150
    .end local v1           #messageId:Ljava/lang/String;
    :sswitch_2
    const-string v2, "MessageManager.onHandleMessage(MESSAGE_REFRESH_MESSAGES)"

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/MessageManager;->refreshMessages()V

    .line 152
    const/4 v0, 0x1

    .line 153
    goto :goto_0

    .line 156
    :sswitch_3
    const-string v2, "MessageManager.onHandleMessage(MESSAGE_DELETE_MESSAGE)"

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "DEFAULT_KEY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    .restart local v1       #messageId:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/nuance/swype/connect/manager/MessageManager;->deleteMessage(Ljava/lang/String;)V

    .line 159
    const/4 v0, 0x1

    .line 160
    goto :goto_0

    .line 134
    nop

    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_0
        0xd -> :sswitch_1
        0x3f -> :sswitch_2
        0xdf -> :sswitch_3
    .end sparse-switch
.end method

.method public onResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/MessageManager;->loadPreferences()V

    .line 228
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/MessageManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "get"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/MessageManager;->processMessageResponse(Lcom/nuance/swype/connect/util/Response;)V

    .line 237
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/MessageManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "getNext"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/MessageManager;->processNextMessageResponse(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/MessageManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "ack"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 233
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/MessageManager;->processAckMessageResponse(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0

    .line 235
    :cond_2
    const-string v0, "unknown command sent to SystemManager"

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public refreshMessages()V
    .locals 4

    .prologue
    .line 216
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/MessageManager;->managerStartState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    sget-object v3, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->STARTED:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {v2, v3}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/MessageManager;->loadPreferences()V

    .line 218
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/MessageManager;->systemMessages:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 219
    .local v1, messageId:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/manager/MessageManager;->getMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 222
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #messageId:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 111
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/MessageManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getConfiguration()Lcom/nuance/swype/connect/configuration/ConnectConfiguration;

    move-result-object v0

    const-string v1, "MESSAGE_EXPERATION"

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/MessageManager;->messageExperationListener:Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/connect/configuration/ConnectConfiguration;->setConfigurationListener(Ljava/lang/String;Lcom/nuance/swype/connect/configuration/ConnectConfigurationListener;Z)V

    .line 115
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/MessageManager;->managerStartComplete()V

    .line 116
    return-void
.end method
