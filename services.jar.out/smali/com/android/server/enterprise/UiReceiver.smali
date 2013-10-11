.class public Lcom/android/server/enterprise/UiReceiver;
.super Ljava/lang/Object;
.source "UiReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/UiReceiver$ToastHandler;
    }
.end annotation


# static fields
.field private static final MSG_TIMEOUT:I = 0x1

.field public static final UI_INTENT:Ljava/lang/String; = "android.intent.action.enterprise.SHOW_UI"

.field private static mHandler:Landroid/os/Handler;

.field private static mReceiver:Landroid/content/BroadcastReceiver;

.field private static mSentMessageQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 125
    invoke-static {p0, p1}, Lcom/android/server/enterprise/UiReceiver;->sendMessage(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/android/server/enterprise/UiReceiver;->mSentMessageQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static initUiReceiver(Landroid/content/Context;)V
    .locals 3
    .parameter "cxt"

    .prologue
    .line 139
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/server/enterprise/UiReceiver;->mSentMessageQueue:Ljava/util/ArrayList;

    .line 141
    new-instance v1, Lcom/android/server/enterprise/UiReceiver$1;

    invoke-direct {v1}, Lcom/android/server/enterprise/UiReceiver$1;-><init>()V

    sput-object v1, Lcom/android/server/enterprise/UiReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 157
    new-instance v1, Lcom/android/server/enterprise/UiReceiver$ToastHandler;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/UiReceiver$ToastHandler;-><init>(Lcom/android/server/enterprise/UiReceiver$1;)V

    sput-object v1, Lcom/android/server/enterprise/UiReceiver;->mHandler:Landroid/os/Handler;

    .line 159
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 161
    .local v0, filter:Landroid/content/IntentFilter;
    sget-object v1, Lcom/android/server/enterprise/UiReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 163
    return-void
.end method

.method private static sendMessage(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .parameter "msg"
    .parameter "cxt"

    .prologue
    const/4 v2, 0x1

    .line 169
    if-nez p0, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    sget-object v1, Lcom/android/server/enterprise/UiReceiver;->mSentMessageQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    invoke-static {p1, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 183
    sget-object v1, Lcom/android/server/enterprise/UiReceiver;->mSentMessageQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    sget-object v1, Lcom/android/server/enterprise/UiReceiver;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 187
    .local v0, m:Landroid/os/Message;
    sget-object v1, Lcom/android/server/enterprise/UiReceiver;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xdac

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
