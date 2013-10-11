.class public Lcom/android/internal/atfwd/AtCrslCmdHandler;
.super Lcom/android/internal/atfwd/AtCmdBaseHandler;
.source "AtCrslCmdHandler.java"

# interfaces
.implements Lcom/android/internal/atfwd/AtCmdHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "AtCrslCmdHandler"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/atfwd/AtCmdHandler$AtCmdHandlerInstantiationException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/internal/atfwd/AtCmdBaseHandler;-><init>(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method private static getAudioService()Landroid/media/IAudioService;
    .locals 3

    .prologue
    .line 49
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 51
    .local v0, audioService:Landroid/media/IAudioService;
    if-nez v0, :cond_0

    .line 52
    const-string v1, "AtCrslCmdHandler"

    const-string v2, "Unable to find IAudioService interface."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    return-object v0
.end method

.method private getFormattedRingerVolumeRange()Ljava/lang/String;
    .locals 4

    .prologue
    .line 87
    const-string v1, ""

    .line 89
    .local v1, ret:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/atfwd/AtCrslCmdHandler;->getMaxVolume()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 90
    .local v0, nMaxVol:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_0

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(0-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    :cond_0
    return-object v1
.end method

.method private getMaxVolume()I
    .locals 7

    .prologue
    .line 73
    const/4 v2, -0x1

    .line 74
    .local v2, nMaxVol:I
    invoke-static {}, Lcom/android/internal/atfwd/AtCrslCmdHandler;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .line 75
    .local v0, audioService:Landroid/media/IAudioService;
    if-nez v0, :cond_0

    move v3, v2

    .line 83
    .end local v2           #nMaxVol:I
    .local v3, nMaxVol:I
    :goto_0
    return v3

    .line 79
    .end local v3           #nMaxVol:I
    .restart local v2       #nMaxVol:I
    :cond_0
    const/4 v4, 0x2

    :try_start_0
    invoke-interface {v0, v4}, Landroid/media/IAudioService;->getStreamMaxVolume(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_1
    move v3, v2

    .line 83
    .end local v2           #nMaxVol:I
    .restart local v3       #nMaxVol:I
    goto :goto_0

    .line 80
    .end local v3           #nMaxVol:I
    .restart local v2       #nMaxVol:I
    :catch_0
    move-exception v1

    .line 81
    .local v1, ex:Landroid/os/RemoteException;
    const-string v4, "AtCrslCmdHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to obtain Ringer level : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method static getRingerVolume(Ljava/lang/String;)I
    .locals 5
    .parameter "input"

    .prologue
    .line 58
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 60
    .local v1, ringVolume:Ljava/lang/Integer;
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 69
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, ex:Ljava/lang/NumberFormatException;
    const-string v2, "AtCrslCmdHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not an Integer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getCommandName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    const-string v0, "+CRSL"

    return-object v0
.end method

.method public handleCommand(Lcom/android/internal/atfwd/AtCmd;)Lcom/android/internal/atfwd/AtCmdResponse;
    .locals 13
    .parameter "cmd"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x3

    .line 103
    invoke-virtual {p1}, Lcom/android/internal/atfwd/AtCmd;->getTokens()[Ljava/lang/String;

    move-result-object v7

    .line 104
    .local v7, tokens:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 105
    .local v5, result:Ljava/lang/String;
    const/4 v2, 0x0

    .line 106
    .local v2, isAtCmdRespOK:Z
    const/4 v3, 0x0

    .line 108
    .local v3, isSetCmd:Z
    invoke-static {}, Lcom/android/internal/atfwd/AtCrslCmdHandler;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .line 109
    .local v0, audioService:Landroid/media/IAudioService;
    if-nez v0, :cond_0

    .line 110
    new-instance v8, Lcom/android/internal/atfwd/AtCmdResponse;

    invoke-virtual {p1, v11}, Lcom/android/internal/atfwd/AtCmd;->getAtCmdErrStr(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v12, v9}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    .line 171
    :goto_0
    return-object v8

    .line 114
    :cond_0
    const-string v8, "AtCrslCmdHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OpCode"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/internal/atfwd/AtCmd;->getOpcode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p1}, Lcom/android/internal/atfwd/AtCmd;->getOpcode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 167
    :goto_1
    if-nez v3, :cond_1

    if-eqz v2, :cond_1

    .line 168
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/atfwd/AtCrslCmdHandler;->getCommandName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 171
    :cond_1
    if-eqz v2, :cond_7

    new-instance v8, Lcom/android/internal/atfwd/AtCmdResponse;

    const/4 v9, 0x1

    invoke-direct {v8, v9, v5}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 121
    :sswitch_0
    if-eqz v7, :cond_2

    :try_start_0
    array-length v8, v7

    if-nez v8, :cond_3

    .line 122
    :cond_2
    const/16 v8, 0x32

    invoke-virtual {p1, v8}, Lcom/android/internal/atfwd/AtCmd;->getAtCmdErrStr(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 125
    :cond_3
    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-static {v8}, Lcom/android/internal/atfwd/AtCrslCmdHandler;->getRingerVolume(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 126
    .local v6, ringVolume:Ljava/lang/Integer;
    invoke-direct {p0}, Lcom/android/internal/atfwd/AtCrslCmdHandler;->getMaxVolume()I

    move-result v4

    .line 128
    .local v4, nMaxVol:I
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ltz v8, :cond_4

    if-ltz v4, :cond_4

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-le v8, v4, :cond_5

    .line 129
    :cond_4
    const/4 v8, 0x3

    invoke-virtual {p1, v8}, Lcom/android/internal/atfwd/AtCmd;->getAtCmdErrStr(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 132
    :cond_5
    const/4 v8, 0x2

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x5

    invoke-interface {v0, v8, v9, v10}, Landroid/media/IAudioService;->setStreamVolume(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    const/4 v3, 0x1

    .line 135
    const/4 v2, 0x1

    goto :goto_1

    .line 137
    .end local v4           #nMaxVol:I
    .end local v6           #ringVolume:Ljava/lang/Integer;
    :catch_0
    move-exception v1

    .line 138
    .local v1, ex:Landroid/os/RemoteException;
    const-string v8, "AtCrslCmdHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to perfom AT+CRSL "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Exception : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p1, v11}, Lcom/android/internal/atfwd/AtCmd;->getAtCmdErrStr(I)Ljava/lang/String;

    move-result-object v5

    .line 141
    goto/16 :goto_1

    .line 146
    .end local v1           #ex:Landroid/os/RemoteException;
    :sswitch_1
    const/4 v8, 0x2

    :try_start_1
    invoke-interface {v0, v8}, Landroid/media/IAudioService;->getStreamVolume(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 147
    .restart local v6       #ringVolume:Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 148
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 150
    .end local v6           #ringVolume:Ljava/lang/Integer;
    :catch_1
    move-exception v1

    .line 151
    .restart local v1       #ex:Landroid/os/RemoteException;
    const-string v8, "AtCrslCmdHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to perfom AT+CRSL "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Exception : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p1, v11}, Lcom/android/internal/atfwd/AtCmd;->getAtCmdErrStr(I)Ljava/lang/String;

    move-result-object v5

    .line 154
    goto/16 :goto_1

    .line 158
    .end local v1           #ex:Landroid/os/RemoteException;
    :sswitch_2
    invoke-direct {p0}, Lcom/android/internal/atfwd/AtCrslCmdHandler;->getFormattedRingerVolumeRange()Ljava/lang/String;

    move-result-object v5

    .line 159
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6

    .line 160
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 162
    :cond_6
    invoke-virtual {p1, v11}, Lcom/android/internal/atfwd/AtCmd;->getAtCmdErrStr(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 171
    :cond_7
    new-instance v8, Lcom/android/internal/atfwd/AtCmdResponse;

    invoke-direct {v8, v12, v5}, Lcom/android/internal/atfwd/AtCmdResponse;-><init>(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 116
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0x7 -> :sswitch_2
        0xb -> :sswitch_0
    .end sparse-switch
.end method
