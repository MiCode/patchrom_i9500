.class Lcom/android/server/TvoutService$8;
.super Landroid/content/BroadcastReceiver;
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
    .line 1015
    iput-object p1, p0, Lcom/android/server/TvoutService$8;->this$0:Lcom/android/server/TvoutService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intentArgs"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 1018
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1019
    .local v0, action:Ljava/lang/String;
    const-string v2, "samsung.intent.action.ANDROID_HDMI_START_VFB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1020
    iget-object v2, p0, Lcom/android/server/TvoutService$8;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;
    invoke-static {v2}, Lcom/android/server/TvoutService;->access$1900(Lcom/android/server/TvoutService;)Landroid/hardware/Tvout;

    move-result-object v2

    const/16 v3, 0x780

    const/16 v4, 0x438

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/Tvout;->TvoutStartStopVFBThread(IIZ)Z

    .line 1027
    :cond_0
    :goto_0
    return-void

    .line 1021
    :cond_1
    const-string v2, "samsung.intent.action.ANDROID_HDMI_STOP_VFB"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1022
    iget-object v2, p0, Lcom/android/server/TvoutService$8;->this$0:Lcom/android/server/TvoutService;

    #getter for: Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;
    invoke-static {v2}, Lcom/android/server/TvoutService;->access$1900(Lcom/android/server/TvoutService;)Landroid/hardware/Tvout;

    move-result-object v2

    invoke-virtual {v2, v3, v3, v3}, Landroid/hardware/Tvout;->TvoutStartStopVFBThread(IIZ)Z

    goto :goto_0

    .line 1023
    :cond_2
    const-string v2, "samsung.intent.action.ANDROID_HDMI_SET_FORCE_MIRROR_MODE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1024
    const-string v2, "isForceMirror"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1025
    .local v1, argument:Z
    const-string v2, "TvoutService_Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ANDROID_HDMI_SET_FORCE_MIRROR_MODE :  argument:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
