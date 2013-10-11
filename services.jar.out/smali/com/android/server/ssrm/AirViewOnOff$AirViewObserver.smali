.class Lcom/android/server/ssrm/AirViewOnOff$AirViewObserver;
.super Landroid/database/ContentObserver;
.source "AirViewOnOff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/AirViewOnOff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AirViewObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/AirViewOnOff;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/AirViewOnOff;)V
    .locals 1

    .prologue
    .line 548
    iput-object p1, p0, Lcom/android/server/ssrm/AirViewOnOff$AirViewObserver;->this$0:Lcom/android/server/ssrm/AirViewOnOff;

    .line 549
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 550
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    .line 554
    invoke-static {}, Lcom/android/server/ssrm/AirViewOnOff;->access$100()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ssrm/AirViewOnOff;->access$402(Landroid/content/ContentResolver;)Landroid/content/ContentResolver;

    .line 555
    invoke-static {}, Lcom/android/server/ssrm/AirViewOnOff;->access$400()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 557
    invoke-static {}, Lcom/android/server/ssrm/AirViewOnOff;->access$400()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "finger_air_view"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 558
    const/4 v0, 0x1

    .line 562
    .local v0, newFingerHoverSetting:Z
    :goto_0
    invoke-static {}, Lcom/android/server/ssrm/AirViewOnOff;->access$700()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 563
    invoke-static {v0}, Lcom/android/server/ssrm/AirViewOnOff;->access$702(Z)Z

    .line 564
    #calls: Lcom/android/server/ssrm/AirViewOnOff;->updateAirViewStatus()V
    invoke-static {}, Lcom/android/server/ssrm/AirViewOnOff;->access$600()V

    .line 566
    :cond_0
    invoke-static {}, Lcom/android/server/ssrm/AirViewOnOff;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AirViewObserver::onChange, mSettingFingerOverViewOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/ssrm/AirViewOnOff;->access$700()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/AirViewOnOff;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    .end local v0           #newFingerHoverSetting:Z
    :cond_1
    return-void

    .line 560
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #newFingerHoverSetting:Z
    goto :goto_0
.end method
