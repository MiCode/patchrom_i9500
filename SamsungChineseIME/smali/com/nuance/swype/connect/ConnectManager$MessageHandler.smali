.class Lcom/nuance/swype/connect/ConnectManager$MessageHandler;
.super Landroid/os/Handler;
.source "ConnectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/connect/ConnectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageHandler"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mgrRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/swype/connect/ConnectManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 239
    const-class v0, Lcom/nuance/swype/connect/ConnectManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nuance/swype/connect/ConnectManager$MessageHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/nuance/swype/connect/ConnectManager;)V
    .locals 1
    .parameter "mgr"

    .prologue
    .line 242
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 243
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/ConnectManager$MessageHandler;->mgrRef:Ljava/lang/ref/WeakReference;

    .line 244
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 255
    sget-boolean v1, Lcom/nuance/swype/connect/ConnectManager$MessageHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x6

    if-le v1, v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 256
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectManager$MessageHandler;->mgrRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/ConnectManager;

    .line 257
    .local v0, ime:Lcom/nuance/swype/connect/ConnectManager;
    if-eqz v0, :cond_1

    .line 258
    invoke-virtual {v0, p0, p1}, Lcom/nuance/swype/connect/ConnectManager;->handleMessage(Lcom/nuance/swype/connect/ConnectManager$MessageHandler;Landroid/os/Message;)V

    .line 260
    :cond_1
    return-void
.end method

.method public sendMessageDelayedMinutes(Landroid/os/Message;I)V
    .locals 3
    .parameter "msg"
    .parameter "minutes"

    .prologue
    .line 269
    mul-int/lit8 v1, p2, 0x3c

    mul-int/lit16 v0, v1, 0x3e8

    .line 270
    .local v0, milliseconds:I
    int-to-long v1, v0

    invoke-virtual {p0, p1, v1, v2}, Lcom/nuance/swype/connect/ConnectManager$MessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 271
    return-void
.end method

.method public sendMessageDelayedSeconds(Landroid/os/Message;I)V
    .locals 3
    .parameter "msg"
    .parameter "seconds"

    .prologue
    .line 263
    mul-int/lit16 v0, p2, 0x3e8

    .line 264
    .local v0, milliseconds:I
    int-to-long v1, v0

    invoke-virtual {p0, p1, v1, v2}, Lcom/nuance/swype/connect/ConnectManager$MessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 265
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 247
    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectManager$MessageHandler;->mgrRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 248
    const/4 v0, 0x0

    .local v0, what:I
    :goto_0
    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    .line 249
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/ConnectManager$MessageHandler;->removeMessages(I)V

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    :cond_0
    return-void
.end method
