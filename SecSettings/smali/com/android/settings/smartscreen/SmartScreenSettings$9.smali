.class Lcom/android/settings_ex/smartscreen/SmartScreenSettings$9;
.super Ljava/lang/Object;
.source "SmartScreenSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/smartscreen/SmartScreenSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/smartscreen/SmartScreenSettings;)V
    .locals 0

    .prologue
    .line 508
    iput-object p1, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$9;->this$0:Lcom/android/settings_ex/smartscreen/SmartScreenSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 510
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$9;->this$0:Lcom/android/settings_ex/smartscreen/SmartScreenSettings;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 512
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$9;->this$0:Lcom/android/settings_ex/smartscreen/SmartScreenSettings;

    iget-object v0, v0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v1, "pref_smart_stay_noti"

    if-ne v0, v1, :cond_1

    .line 513
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$9;->this$0:Lcom/android/settings_ex/smartscreen/SmartScreenSettings;

    #calls: Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->access$1100(Lcom/android/settings_ex/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "intelligent_sleep_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 514
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$9;->this$0:Lcom/android/settings_ex/smartscreen/SmartScreenSettings;

    iget-object v1, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$9;->this$0:Lcom/android/settings_ex/smartscreen/SmartScreenSettings;

    iget-object v1, v1, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->createGuideDialog(Ljava/lang/String;)V

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$9;->this$0:Lcom/android/settings_ex/smartscreen/SmartScreenSettings;

    iget-object v0, v0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v1, "pref_smart_rotation_noti"

    if-ne v0, v1, :cond_2

    .line 516
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$9;->this$0:Lcom/android/settings_ex/smartscreen/SmartScreenSettings;

    #calls: Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->access$1200(Lcom/android/settings_ex/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "intelligent_rotation_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 517
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$9;->this$0:Lcom/android/settings_ex/smartscreen/SmartScreenSettings;

    iget-object v1, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$9;->this$0:Lcom/android/settings_ex/smartscreen/SmartScreenSettings;

    iget-object v1, v1, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->createGuideDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 518
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$9;->this$0:Lcom/android/settings_ex/smartscreen/SmartScreenSettings;

    iget-object v0, v0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v1, "pref_smart_pause_noti"

    if-ne v0, v1, :cond_3

    .line 519
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$9;->this$0:Lcom/android/settings_ex/smartscreen/SmartScreenSettings;

    #calls: Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->access$1300(Lcom/android/settings_ex/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_pause"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 520
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$9;->this$0:Lcom/android/settings_ex/smartscreen/SmartScreenSettings;

    const-string v1, "com.sec.SMART_PAUSE_CHANGED"

    #calls: Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->broadcastStatusChanged(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->access$500(Lcom/android/settings_ex/smartscreen/SmartScreenSettings;Ljava/lang/String;Z)V

    .line 521
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$9;->this$0:Lcom/android/settings_ex/smartscreen/SmartScreenSettings;

    iget-object v1, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$9;->this$0:Lcom/android/settings_ex/smartscreen/SmartScreenSettings;

    iget-object v1, v1, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->createGuideDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 522
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$9;->this$0:Lcom/android/settings_ex/smartscreen/SmartScreenSettings;

    iget-object v0, v0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    const-string v1, "pref_smart_scroll_noti"

    if-ne v0, v1, :cond_0

    .line 523
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$9;->this$0:Lcom/android/settings_ex/smartscreen/SmartScreenSettings;

    #calls: Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->access$1400(Lcom/android/settings_ex/smartscreen/SmartScreenSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_scroll"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 524
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$9;->this$0:Lcom/android/settings_ex/smartscreen/SmartScreenSettings;

    const-string v1, "com.sec.SMART_SCROLL_CHANGED"

    #calls: Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->broadcastStatusChanged(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->access$500(Lcom/android/settings_ex/smartscreen/SmartScreenSettings;Ljava/lang/String;Z)V

    .line 525
    iget-object v0, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$9;->this$0:Lcom/android/settings_ex/smartscreen/SmartScreenSettings;

    iget-object v1, p0, Lcom/android/settings_ex/smartscreen/SmartScreenSettings$9;->this$0:Lcom/android/settings_ex/smartscreen/SmartScreenSettings;

    iget-object v1, v1, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->pref_common_noti:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/smartscreen/SmartScreenSettings;->createGuideDialog(Ljava/lang/String;)V

    goto :goto_0
.end method
