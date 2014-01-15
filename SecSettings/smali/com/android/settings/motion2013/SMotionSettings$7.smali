.class Lcom/android/settings_ex/motion2013/SMotionSettings$7;
.super Ljava/lang/Object;
.source "SMotionSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/motion2013/SMotionSettings;->showTalkBackDisableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/motion2013/SMotionSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/motion2013/SMotionSettings;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/settings_ex/motion2013/SMotionSettings$7;->this$0:Lcom/android/settings_ex/motion2013/SMotionSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x1

    .line 274
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/SMotionSettings$7;->this$0:Lcom/android/settings_ex/motion2013/SMotionSettings;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 275
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/SMotionSettings$7;->this$0:Lcom/android/settings_ex/motion2013/SMotionSettings;

    #calls: Lcom/android/settings_ex/motion2013/SMotionSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings_ex/motion2013/SMotionSettings;->access$600(Lcom/android/settings_ex/motion2013/SMotionSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_motion_engine"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 276
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/SMotionSettings$7;->this$0:Lcom/android/settings_ex/motion2013/SMotionSettings;

    #calls: Lcom/android/settings_ex/motion2013/SMotionSettings;->broadcastAirMotionChanged(Z)V
    invoke-static {v2, v4}, Lcom/android/settings_ex/motion2013/SMotionSettings;->access$700(Lcom/android/settings_ex/motion2013/SMotionSettings;Z)V

    .line 277
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/SMotionSettings$7;->this$0:Lcom/android/settings_ex/motion2013/SMotionSettings;

    invoke-virtual {v2}, Lcom/android/settings_ex/motion2013/SMotionSettings;->isAllAirMotionDisabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 278
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/SMotionSettings$7;->this$0:Lcom/android/settings_ex/motion2013/SMotionSettings;

    const v3, 0x7f090c14

    const v4, 0x7f090c1f

    const-string v5, "air_motion"

    #calls: Lcom/android/settings_ex/motion2013/SMotionSettings;->showAllOptionDisabledDialog(IILjava/lang/String;)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/settings_ex/motion2013/SMotionSettings;->access$800(Lcom/android/settings_ex/motion2013/SMotionSettings;IILjava/lang/String;)V

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/SMotionSettings$7;->this$0:Lcom/android/settings_ex/motion2013/SMotionSettings;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 281
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v2, "pref_air_motion_sensor_noti"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 282
    .local v0, do_not_show_again:Z
    if-nez v0, :cond_0

    .line 283
    iget-object v2, p0, Lcom/android/settings_ex/motion2013/SMotionSettings$7;->this$0:Lcom/android/settings_ex/motion2013/SMotionSettings;

    #calls: Lcom/android/settings_ex/motion2013/SMotionSettings;->showGuideDialog(Z)V
    invoke-static {v2, v4}, Lcom/android/settings_ex/motion2013/SMotionSettings;->access$900(Lcom/android/settings_ex/motion2013/SMotionSettings;Z)V

    goto :goto_0
.end method
