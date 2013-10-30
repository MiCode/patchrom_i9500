.class Lcom/nuance/connect/language/KLManager$IncomingHandler;
.super Landroid/os/Handler;
.source "KLManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/language/KLManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IncomingHandler"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final managerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/connect/language/KLManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const-class v0, Lcom/nuance/connect/language/KLManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nuance/connect/language/KLManager$IncomingHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/nuance/connect/language/KLManager;)V
    .locals 1
    .parameter "manager"

    .prologue
    .line 88
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 89
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/connect/language/KLManager$IncomingHandler;->managerRef:Ljava/lang/ref/WeakReference;

    .line 90
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 101
    sget-boolean v1, Lcom/nuance/connect/language/KLManager$IncomingHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x122

    if-le v1, v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/nuance/connect/language/KLManager$IncomingHandler;->managerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/connect/language/KLManager;

    .line 103
    .local v0, manager:Lcom/nuance/connect/language/KLManager;
    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {v0, p0, p1}, Lcom/nuance/connect/language/KLManager;->handleMessage(Landroid/os/Handler;Landroid/os/Message;)V

    .line 106
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 93
    iget-object v1, p0, Lcom/nuance/connect/language/KLManager$IncomingHandler;->managerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 94
    const/4 v0, 0x0

    .local v0, what:I
    :goto_0
    const/16 v1, 0x122

    if-gt v0, v1, :cond_0

    .line 95
    invoke-virtual {p0, v0}, Lcom/nuance/connect/language/KLManager$IncomingHandler;->removeMessages(I)V

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    return-void
.end method
