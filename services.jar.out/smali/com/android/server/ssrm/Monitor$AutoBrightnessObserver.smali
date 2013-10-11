.class Lcom/android/server/ssrm/Monitor$AutoBrightnessObserver;
.super Landroid/database/ContentObserver;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoBrightnessObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/Monitor;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/Monitor;)V
    .locals 1

    .prologue
    .line 450
    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$AutoBrightnessObserver;->this$0:Lcom/android/server/ssrm/Monitor;

    .line 451
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 452
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .parameter "selfChange"

    .prologue
    const/4 v5, 0x1

    .line 455
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1400()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 456
    .local v1, resolver:Landroid/content/ContentResolver;
    if-eqz v1, :cond_1

    .line 457
    const/4 v0, 0x0

    .line 458
    .local v0, autoBrightness:Z
    const-string v2, "screen_brightness_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 459
    const/4 v0, 0x1

    .line 461
    :cond_0
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$900()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AutoBrightnessObserver.onChange:: autoBrightness = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->access$1502(Z)Z

    .line 464
    sget-boolean v2, Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;->SIOP_FOR_BROWSER_BRIGHTNESS:Z

    if-eqz v2, :cond_1

    .line 465
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->access$1600()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 466
    #calls: Lcom/android/server/ssrm/Monitor;->sendSIOPUpdateMessage(Z)V
    invoke-static {v5}, Lcom/android/server/ssrm/Monitor;->access$1700(Z)V

    .line 470
    .end local v0           #autoBrightness:Z
    :cond_1
    return-void
.end method
