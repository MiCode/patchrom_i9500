.class public Lcom/nuance/swype/connect/manager/ResourcesManager;
.super Lcom/nuance/swype/connect/manager/AbstractCommandManager;
.source "ResourcesManager.java"


# static fields
.field public static final ALARM_UNIQUE_ID:I = 0x34940a1

.field public static final COMMAND_DOWNLOAD_IMAGE:Ljava/lang/String; = "downloadImage"

.field public static final COMMAND_DOWNLOAD_TEXT:Ljava/lang/String; = "downloadText"

.field public static final COMMAND_FAMILY:Ljava/lang/String; = "internal_resources"

.field public static final COMMAND_VERSION:I = 0x1

.field public static final MANAGER_NAME:Ljava/lang/String; = "internal_resources"

.field private static final MESSAGES_HANDLED:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nuance/swype/connect/manager/ResourcesManager;->MESSAGES_HANDLED:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x45t 0x0t 0x0t 0x0t
        0x46t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/nuance/swype/connect/ConnectClient;)V
    .locals 5
    .parameter "ctx"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 29
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    .line 30
    const-string v0, "internal_resources"

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/ResourcesManager;->commandFamily:Ljava/lang/String;

    .line 31
    iput v3, p0, Lcom/nuance/swype/connect/manager/ResourcesManager;->version:I

    .line 32
    sget-object v0, Lcom/nuance/swype/connect/manager/ResourcesManager;->MESSAGES_HANDLED:[I

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/ResourcesManager;->messages:[I

    .line 35
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ResourcesManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "downloadText"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 36
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ResourcesManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "downloadImage"

    new-array v2, v3, [I

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 37
    return-void
.end method

.method private getImageResource(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    const/4 v2, 0x0

    .line 103
    const-string v1, "downloadImage"

    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/manager/ResourcesManager;->createCommand(Ljava/lang/String;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 104
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    iput-object p1, v0, Lcom/nuance/swype/connect/util/Command;->thirdPartyURL:Ljava/lang/String;

    .line 105
    const-string v1, "GET"

    iput-object v1, v0, Lcom/nuance/swype/connect/util/Command;->method:Ljava/lang/String;

    .line 106
    iput-boolean v2, v0, Lcom/nuance/swype/connect/util/Command;->hasBody:Z

    .line 107
    iput-boolean v2, v0, Lcom/nuance/swype/connect/util/Command;->handleIOException:Z

    .line 108
    iput-boolean v2, v0, Lcom/nuance/swype/connect/util/Command;->notifyDownloadStatus:Z

    .line 109
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nuance/swype/connect/util/Command;->allowDuplicateOfCommand:Z

    .line 110
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/ResourcesManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    .line 111
    return-void
.end method

.method private getTextResource(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    const/4 v2, 0x0

    .line 114
    const-string v1, "downloadText"

    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/manager/ResourcesManager;->createCommand(Ljava/lang/String;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 115
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    iput-object p1, v0, Lcom/nuance/swype/connect/util/Command;->thirdPartyURL:Ljava/lang/String;

    .line 116
    const-string v1, "GET"

    iput-object v1, v0, Lcom/nuance/swype/connect/util/Command;->method:Ljava/lang/String;

    .line 117
    iput-boolean v2, v0, Lcom/nuance/swype/connect/util/Command;->hasBody:Z

    .line 118
    iput-boolean v2, v0, Lcom/nuance/swype/connect/util/Command;->handleIOException:Z

    .line 119
    iput-boolean v2, v0, Lcom/nuance/swype/connect/util/Command;->notifyDownloadStatus:Z

    .line 120
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nuance/swype/connect/util/Command;->allowDuplicateOfCommand:Z

    .line 121
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/ResourcesManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    .line 122
    return-void
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .parameter "type"
    .parameter "data"

    .prologue
    .line 74
    return-void
.end method

.method public getDependencies()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 68
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "session"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public onFileResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 5
    .parameter "response"

    .prologue
    .line 45
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 46
    .local v0, b:Landroid/os/Bundle;
    const-string v3, "KEY"

    iget-object v4, p1, Lcom/nuance/swype/connect/util/Response;->initialCommand:Lcom/nuance/swype/connect/util/Command;

    iget-object v4, v4, Lcom/nuance/swype/connect/util/Command;->thirdPartyURL:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const/16 v1, 0x44

    .line 49
    .local v1, id:I
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/ResourcesManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v4, "downloadText"

    invoke-virtual {v3, v4, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    const/16 v1, 0x43

    .line 51
    iget-object v3, p1, Lcom/nuance/swype/connect/util/Response;->file:Ljava/io/File;

    invoke-static {v3}, Lcom/nuance/swype/connect/util/StringUtils;->getFileContents(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, value:Ljava/lang/String;
    const-string v3, "VALUE"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .end local v2           #value:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/ResourcesManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v3, v1, v0}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILandroid/os/Bundle;)V

    .line 57
    return-void

    .line 54
    :cond_0
    const-string v3, "VALUE"

    iget-object v4, p1, Lcom/nuance/swype/connect/util/Response;->fileLocation:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "message"

    .prologue
    .line 78
    const/4 v1, 0x0

    .line 79
    .local v1, handled:Z
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 99
    :goto_0
    return v1

    .line 81
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 82
    .local v0, data:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 83
    const-string v3, "DEFAULT_KEY"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, url:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/nuance/swype/connect/manager/ResourcesManager;->getImageResource(Ljava/lang/String;)V

    .line 86
    .end local v2           #url:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    .line 87
    goto :goto_0

    .line 90
    .end local v0           #data:Landroid/os/Bundle;
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 91
    .restart local v0       #data:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 92
    const-string v3, "DEFAULT_KEY"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 93
    .restart local v2       #url:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/nuance/swype/connect/manager/ResourcesManager;->getTextResource(Ljava/lang/String;)V

    .line 95
    .end local v2           #url:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    .line 96
    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x45
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 41
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/ResourcesManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(I)V

    .line 64
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/ResourcesManager;->managerStartComplete()V

    .line 65
    return-void
.end method
