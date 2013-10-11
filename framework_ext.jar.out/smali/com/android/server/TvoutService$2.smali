.class Lcom/android/server/TvoutService$2;
.super Landroid/os/Handler;
.source "TvoutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TvoutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TvoutService;


# direct methods
.method constructor <init>(Lcom/android/server/TvoutService;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 154
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/TvoutService;->TvoutToast(I)V

    .line 158
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/server/TvoutService$2;->this$0:Lcom/android/server/TvoutService;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/TvoutService;->TvoutToast(I)V

    goto :goto_0
.end method
