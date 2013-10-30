.class Lcom/nuance/swype/connect/ConnectClient$MessageHandler;
.super Landroid/os/Handler;
.source "ConnectClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/connect/ConnectClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageHandler"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final connectRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/swype/connect/ConnectClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 163
    const-class v0, Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nuance/swype/connect/ConnectClient$MessageHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/nuance/swype/connect/ConnectClient;)V
    .locals 1
    .parameter "connect"

    .prologue
    .line 166
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 167
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/ConnectClient$MessageHandler;->connectRef:Ljava/lang/ref/WeakReference;

    .line 168
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 179
    sget-boolean v1, Lcom/nuance/swype/connect/ConnectClient$MessageHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x122

    if-le v1, v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectClient$MessageHandler;->connectRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/ConnectClient;

    .line 181
    .local v0, connect:Lcom/nuance/swype/connect/ConnectClient;
    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {v0, p0, p1}, Lcom/nuance/swype/connect/ConnectClient;->handleMessage(Landroid/os/Handler;Landroid/os/Message;)V

    .line 184
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 171
    iget-object v1, p0, Lcom/nuance/swype/connect/ConnectClient$MessageHandler;->connectRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 172
    const/4 v0, 0x0

    .local v0, what:I
    :goto_0
    const/16 v1, 0x122

    if-gt v0, v1, :cond_0

    .line 173
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/ConnectClient$MessageHandler;->removeMessages(I)V

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_0
    return-void
.end method
