.class public Lcom/samsung/inputmethod/comm/SimeToast;
.super Landroid/os/Handler;
.source "SimeToast.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mToast:Landroid/widget/Toast;

.field private mToastThread:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/samsung/inputmethod/comm/SimeToast;->mContext:Landroid/content/Context;

    .line 28
    iput-object v0, p0, Lcom/samsung/inputmethod/comm/SimeToast;->mToast:Landroid/widget/Toast;

    .line 29
    iput-object v0, p0, Lcom/samsung/inputmethod/comm/SimeToast;->mHandler:Landroid/os/Handler;

    .line 31
    new-instance v0, Lcom/samsung/inputmethod/comm/SimeToast$1;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/comm/SimeToast$1;-><init>(Lcom/samsung/inputmethod/comm/SimeToast;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/comm/SimeToast;->mToastThread:Ljava/lang/Runnable;

    .line 42
    iput-object p1, p0, Lcom/samsung/inputmethod/comm/SimeToast;->mContext:Landroid/content/Context;

    .line 43
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/inputmethod/comm/SimeToast;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/comm/SimeToast;->mHandler:Landroid/os/Handler;

    .line 44
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeToast;->mContext:Landroid/content/Context;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/comm/SimeToast;->mToast:Landroid/widget/Toast;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/comm/SimeToast;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeToast;->mToast:Landroid/widget/Toast;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/inputmethod/comm/SimeToast;->mToastThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 57
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 58
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 49
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/inputmethod/comm/SimeToast;->mToastThread:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    return-void
.end method
