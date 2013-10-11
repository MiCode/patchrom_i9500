.class Lcom/android/server/TvoutService$1;
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
    .line 136
    iput-object p1, p0, Lcom/android/server/TvoutService$1;->this$0:Lcom/android/server/TvoutService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    const/4 v1, 0x1

    .line 140
    iget-object v0, p0, Lcom/android/server/TvoutService$1;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v0, v1}, Lcom/android/server/TvoutService;->TvoutSetStatus(Z)Z

    .line 141
    iget-object v0, p0, Lcom/android/server/TvoutService$1;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v0, v1}, Lcom/android/server/TvoutService;->TvoutSetCableStatus(Z)Z

    .line 142
    iget-object v0, p0, Lcom/android/server/TvoutService$1;->this$0:Lcom/android/server/TvoutService;

    #calls: Lcom/android/server/TvoutService;->TvoutSetWakeLock(Z)V
    invoke-static {v0, v1}, Lcom/android/server/TvoutService;->access$000(Lcom/android/server/TvoutService;Z)V

    .line 143
    iget-object v0, p0, Lcom/android/server/TvoutService$1;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v0}, Lcom/android/server/TvoutService;->TvoutSetDefaultString()Z

    .line 144
    iget-object v0, p0, Lcom/android/server/TvoutService$1;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v0}, Lcom/android/server/TvoutService;->TvoutGetAudioChannel()I

    .line 145
    iget-object v0, p0, Lcom/android/server/TvoutService$1;->this$0:Lcom/android/server/TvoutService;

    invoke-virtual {v0, v1}, Lcom/android/server/TvoutService;->TvoutToast(I)V

    .line 146
    iget-object v0, p0, Lcom/android/server/TvoutService$1;->this$0:Lcom/android/server/TvoutService;

    #calls: Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V
    invoke-static {v0, v1}, Lcom/android/server/TvoutService;->access$100(Lcom/android/server/TvoutService;Z)V

    .line 147
    return-void
.end method
