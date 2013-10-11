.class public Landroid/app/IrdaService;
.super Landroid/app/IIrdaService$Stub;
.source "IrdaService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IrdaService"

.field private static bEnabled:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLEDBlinkTimer:Ljava/util/Timer;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStr:Ljava/lang/String;

.field private read_ir_send:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/app/IIrdaService$Stub;-><init>()V

    .line 74
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/app/IrdaService;->mLEDBlinkTimer:Ljava/util/Timer;

    .line 228
    new-instance v3, Landroid/app/IrdaService$2;

    invoke-direct {v3, p0}, Landroid/app/IrdaService$2;-><init>(Landroid/app/IrdaService;)V

    iput-object v3, p0, Landroid/app/IrdaService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 59
    const-string v3, "IrdaService"

    const-string v4, "IrdaService : Create"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iput-object p1, p0, Landroid/app/IrdaService;->mContext:Landroid/content/Context;

    .line 61
    const/4 v3, 0x1

    sput-boolean v3, Landroid/app/IrdaService;->bEnabled:Z

    .line 62
    invoke-direct {p0}, Landroid/app/IrdaService;->isEnalbed()V

    .line 64
    :try_start_0
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 65
    .local v2, filter:Landroid/content/IntentFilter;
    const-class v3, Landroid/app/admin/DevicePolicyManager;

    const-string v4, "ACTION_DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 66
    .local v1, field:Ljava/lang/reflect/Field;
    const-string v3, "IrdaService"

    const-string v4, "Field ACTION_DEVICE_POLICY_MANAGER_STATE_CHANGED found"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    iget-object v3, p0, Landroid/app/IrdaService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/app/IrdaService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v1           #field:Ljava/lang/reflect/Field;
    .end local v2           #filter:Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, ex:Ljava/lang/NoSuchFieldException;
    const-string v3, "IrdaService"

    const-string v4, "Field ACTION_DEVICE_POLICY_MANAGER_STATE_CHANGED not found"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/app/IrdaService;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/app/IrdaService;->onoffLED(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/app/IrdaService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/IrdaService;->isEnalbed()V

    return-void
.end method

.method private blinkLED()V
    .locals 4

    .prologue
    .line 85
    const-string v0, "IrdaService"

    const-string v1, "IrdaService:blinkLED"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-direct {p0}, Landroid/app/IrdaService;->stopLEDBlink()V

    .line 87
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/IrdaService;->onoffLED(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Landroid/app/IrdaService;->mLEDBlinkTimer:Ljava/util/Timer;

    .line 90
    iget-object v0, p0, Landroid/app/IrdaService;->mLEDBlinkTimer:Ljava/util/Timer;

    new-instance v1, Landroid/app/IrdaService$1;

    invoke-direct {v1, p0}, Landroid/app/IrdaService$1;-><init>(Landroid/app/IrdaService;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 97
    :cond_0
    return-void
.end method

.method private isEnalbed()V
    .locals 0

    .prologue
    .line 227
    return-void
.end method

.method private onoffLED(I)Z
    .locals 7
    .parameter "onoff"

    .prologue
    .line 101
    const/4 v3, 0x0

    .line 102
    .local v3, ret:Z
    const/4 v1, 0x0

    .line 105
    .local v1, fLed:Ljava/io/FileWriter;
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    const-string v4, "/sys/class/sec/led/led_b"

    invoke-direct {v2, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 106
    .end local v1           #fLed:Ljava/io/FileWriter;
    .local v2, fLed:Ljava/io/FileWriter;
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    .line 107
    :try_start_1
    const-string v4, "40"

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 111
    :goto_0
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 112
    const-string v4, "IrdaService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IrdaService:write LED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    .line 113
    const/4 v3, 0x1

    .line 121
    if-eqz v2, :cond_3

    .line 123
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v2

    .line 130
    .end local v2           #fLed:Ljava/io/FileWriter;
    .restart local v1       #fLed:Ljava/io/FileWriter;
    :cond_0
    :goto_1
    return v3

    .line 109
    .end local v1           #fLed:Ljava/io/FileWriter;
    .restart local v2       #fLed:Ljava/io/FileWriter;
    :cond_1
    :try_start_3
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 115
    .end local v2           #fLed:Ljava/io/FileWriter;
    .local v0, ex:Ljava/io/FileNotFoundException;
    .restart local v1       #fLed:Ljava/io/FileWriter;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 121
    if-eqz v1, :cond_0

    .line 123
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 124
    :catch_1
    move-exception v4

    goto :goto_1

    .end local v0           #ex:Ljava/io/FileNotFoundException;
    .end local v1           #fLed:Ljava/io/FileWriter;
    .restart local v2       #fLed:Ljava/io/FileWriter;
    :catch_2
    move-exception v4

    move-object v1, v2

    .line 126
    .end local v2           #fLed:Ljava/io/FileWriter;
    .restart local v1       #fLed:Ljava/io/FileWriter;
    goto :goto_1

    .line 116
    :catch_3
    move-exception v0

    .line 117
    .local v0, ex:Ljava/io/IOException;
    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 121
    if-eqz v1, :cond_0

    .line 123
    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 124
    :catch_4
    move-exception v4

    goto :goto_1

    .line 118
    .end local v0           #ex:Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 119
    .local v0, ex:Ljava/lang/Exception;
    :goto_4
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 121
    if-eqz v1, :cond_0

    .line 123
    :try_start_9
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_1

    .line 124
    :catch_6
    move-exception v4

    goto :goto_1

    .line 121
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_5
    if-eqz v1, :cond_2

    .line 123
    :try_start_a
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 126
    :cond_2
    :goto_6
    throw v4

    .line 124
    :catch_7
    move-exception v5

    goto :goto_6

    .line 121
    .end local v1           #fLed:Ljava/io/FileWriter;
    .restart local v2       #fLed:Ljava/io/FileWriter;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #fLed:Ljava/io/FileWriter;
    .restart local v1       #fLed:Ljava/io/FileWriter;
    goto :goto_5

    .line 118
    .end local v1           #fLed:Ljava/io/FileWriter;
    .restart local v2       #fLed:Ljava/io/FileWriter;
    :catch_8
    move-exception v0

    move-object v1, v2

    .end local v2           #fLed:Ljava/io/FileWriter;
    .restart local v1       #fLed:Ljava/io/FileWriter;
    goto :goto_4

    .line 116
    .end local v1           #fLed:Ljava/io/FileWriter;
    .restart local v2       #fLed:Ljava/io/FileWriter;
    :catch_9
    move-exception v0

    move-object v1, v2

    .end local v2           #fLed:Ljava/io/FileWriter;
    .restart local v1       #fLed:Ljava/io/FileWriter;
    goto :goto_3

    .line 114
    :catch_a
    move-exception v0

    goto :goto_2

    .end local v1           #fLed:Ljava/io/FileWriter;
    .restart local v2       #fLed:Ljava/io/FileWriter;
    :cond_3
    move-object v1, v2

    .end local v2           #fLed:Ljava/io/FileWriter;
    .restart local v1       #fLed:Ljava/io/FileWriter;
    goto :goto_1
.end method

.method private stopLEDBlink()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Landroid/app/IrdaService;->mLEDBlinkTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Landroid/app/IrdaService;->mLEDBlinkTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/IrdaService;->mLEDBlinkTimer:Ljava/util/Timer;

    .line 81
    :cond_0
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Landroid/app/IrdaService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/app/IrdaService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 244
    invoke-super {p0}, Landroid/os/Binder;->finalize()V

    .line 245
    const-string v0, "IrdaService"

    const-string v1, "IrdaService : finalize"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return-void
.end method

.method public read_irsend()Ljava/lang/String;
    .locals 8

    .prologue
    .line 170
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 171
    .local v1, irsend_value:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 172
    .local v2, reader:Ljava/io/BufferedReader;
    const-string v5, ""

    iput-object v5, p0, Landroid/app/IrdaService;->read_ir_send:Ljava/lang/String;

    .line 174
    sget-boolean v5, Landroid/app/IrdaService;->bEnabled:Z

    if-nez v5, :cond_0

    .line 175
    const-string v5, "IrdaService"

    const-string v6, "IrdaService - read_irsend : bEnabled = false. Return empty string!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v5, p0, Landroid/app/IrdaService;->read_ir_send:Ljava/lang/String;

    .line 203
    :goto_0
    return-object v5

    .line 178
    :cond_0
    monitor-enter p0

    .line 180
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/class/sec/sec_ir/ir_send"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x400

    invoke-direct {v3, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 182
    .end local v2           #reader:Ljava/io/BufferedReader;
    .local v3, reader:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 183
    .local v4, temp:Ljava/lang/String;
    :goto_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 184
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    goto :goto_1

    .line 186
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 187
    .end local v3           #reader:Ljava/io/BufferedReader;
    .end local v4           #temp:Ljava/lang/String;
    .local v0, ex:Ljava/io/FileNotFoundException;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 193
    if-eqz v2, :cond_1

    .line 195
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/app/IrdaService;->read_ir_send:Ljava/lang/String;

    .line 196
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 197
    const-string v5, "IrdaService"

    const-string v6, "IrdaService READ COMPLETE"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 203
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    :cond_1
    :goto_3
    :try_start_4
    iget-object v5, p0, Landroid/app/IrdaService;->read_ir_send:Ljava/lang/String;

    monitor-exit p0

    goto :goto_0

    .line 204
    :catchall_0
    move-exception v5

    :goto_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 193
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    .restart local v4       #temp:Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_4

    .line 195
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/app/IrdaService;->read_ir_send:Ljava/lang/String;

    .line 196
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 197
    const-string v5, "IrdaService"

    const-string v6, "IrdaService READ COMPLETE"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v2, v3

    .line 200
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_3

    .line 198
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 199
    .local v0, ex:Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object v2, v3

    .line 200
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_3

    .line 198
    .end local v4           #temp:Ljava/lang/String;
    .local v0, ex:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 199
    .local v0, ex:Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 188
    .end local v0           #ex:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 189
    .restart local v0       #ex:Ljava/io/IOException;
    :goto_5
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 193
    if-eqz v2, :cond_1

    .line 195
    :try_start_9
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/app/IrdaService;->read_ir_send:Ljava/lang/String;

    .line 196
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 197
    const-string v5, "IrdaService"

    const-string v6, "IrdaService READ COMPLETE"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_3

    .line 198
    :catch_4
    move-exception v0

    .line 199
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3

    .line 190
    .end local v0           #ex:Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 191
    .local v0, ex:Ljava/lang/Exception;
    :goto_6
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 193
    if-eqz v2, :cond_1

    .line 195
    :try_start_c
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/app/IrdaService;->read_ir_send:Ljava/lang/String;

    .line 196
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 197
    const-string v5, "IrdaService"

    const-string v6, "IrdaService READ COMPLETE"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_3

    .line 198
    :catch_6
    move-exception v0

    .line 199
    .local v0, ex:Ljava/io/IOException;
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_3

    .line 193
    .end local v0           #ex:Ljava/io/IOException;
    :catchall_1
    move-exception v5

    :goto_7
    if-eqz v2, :cond_3

    .line 195
    :try_start_e
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/app/IrdaService;->read_ir_send:Ljava/lang/String;

    .line 196
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 197
    const-string v6, "IrdaService"

    const-string v7, "IrdaService READ COMPLETE"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    .line 200
    :cond_3
    :goto_8
    :try_start_f
    throw v5

    .line 198
    :catch_7
    move-exception v0

    .line 199
    .restart local v0       #ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_8

    .line 204
    .end local v0           #ex:Ljava/io/IOException;
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    .restart local v4       #temp:Ljava/lang/String;
    :catchall_2
    move-exception v5

    move-object v2, v3

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_4

    .line 193
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catchall_3
    move-exception v5

    move-object v2, v3

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_7

    .line 190
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catch_8
    move-exception v0

    move-object v2, v3

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_6

    .line 188
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catch_9
    move-exception v0

    move-object v2, v3

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_5

    .line 186
    .end local v4           #temp:Ljava/lang/String;
    :catch_a
    move-exception v0

    goto/16 :goto_2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    .restart local v4       #temp:Ljava/lang/String;
    :cond_4
    move-object v2, v3

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto/16 :goto_3
.end method

.method public write_irsend(Ljava/lang/String;)V
    .locals 6
    .parameter "data"

    .prologue
    .line 134
    const/4 v1, 0x0

    .line 135
    .local v1, out:Ljava/io/FileWriter;
    sget-boolean v4, Landroid/app/IrdaService;->bEnabled:Z

    if-nez v4, :cond_0

    .line 136
    const-string v4, "IrdaService"

    const-string v5, "IrdaService - write_irsend : bEnabled = false. Return!!"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :goto_0
    return-void

    .line 139
    :cond_0
    monitor-enter p0

    .line 141
    :try_start_0
    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 142
    .local v3, utf8:[B
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v4, p0, Landroid/app/IrdaService;->mStr:Ljava/lang/String;

    .line 143
    new-instance v2, Ljava/io/FileWriter;

    const-string v4, "/sys/class/sec/sec_ir/ir_send"

    invoke-direct {v2, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 144
    .end local v1           #out:Ljava/io/FileWriter;
    .local v2, out:Ljava/io/FileWriter;
    :try_start_1
    iget-object v4, p0, Landroid/app/IrdaService;->mStr:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 146
    const-string v4, "IrdaService"

    const-string v5, "IrdaService WRITE COMPLETE"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-direct {p0}, Landroid/app/IrdaService;->blinkLED()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    .line 158
    if-eqz v2, :cond_3

    .line 160
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 166
    .end local v2           #out:Ljava/io/FileWriter;
    .end local v3           #utf8:[B
    .restart local v1       #out:Ljava/io/FileWriter;
    :cond_1
    :goto_1
    :try_start_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v4

    :goto_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 161
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    .restart local v3       #utf8:[B
    :catch_0
    move-exception v4

    move-object v1, v2

    .line 163
    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_1

    .line 151
    .end local v3           #utf8:[B
    :catch_1
    move-exception v0

    .line 152
    .local v0, ex:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 158
    if-eqz v1, :cond_1

    .line 160
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 161
    :catch_2
    move-exception v4

    goto :goto_1

    .line 153
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    .line 154
    .local v0, ex:Ljava/io/IOException;
    :goto_4
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 158
    if-eqz v1, :cond_1

    .line 160
    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 161
    :catch_4
    move-exception v4

    goto :goto_1

    .line 155
    .end local v0           #ex:Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 156
    .local v0, ex:Ljava/lang/Exception;
    :goto_5
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 158
    if-eqz v1, :cond_1

    .line 160
    :try_start_9
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_1

    .line 161
    :catch_6
    move-exception v4

    goto :goto_1

    .line 158
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    :goto_6
    if-eqz v1, :cond_2

    .line 160
    :try_start_a
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 163
    :cond_2
    :goto_7
    :try_start_b
    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 161
    :catch_7
    move-exception v5

    goto :goto_7

    .line 166
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    .restart local v3       #utf8:[B
    :catchall_2
    move-exception v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_2

    .line 158
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catchall_3
    move-exception v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_6

    .line 155
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catch_8
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_5

    .line 153
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catch_9
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_4

    .line 151
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catch_a
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_3

    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :cond_3
    move-object v1, v2

    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_1
.end method
