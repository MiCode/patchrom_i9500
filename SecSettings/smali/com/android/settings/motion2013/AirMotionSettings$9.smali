.class Lcom/android/settings_ex/motion2013/AirMotionSettings$9;
.super Ljava/lang/Object;
.source "AirMotionSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/motion2013/AirMotionSettings;->showAllOptionDisabledDialog(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/motion2013/AirMotionSettings;

.field final synthetic val$motion_type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/motion2013/AirMotionSettings;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings$9;->this$0:Lcom/android/settings_ex/motion2013/AirMotionSettings;

    iput-object p2, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings$9;->val$motion_type:Ljava/lang/String;

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

    .line 429
    const-string v0, "air_scroll"

    iget-object v1, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings$9;->val$motion_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 430
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings$9;->this$0:Lcom/android/settings_ex/motion2013/AirMotionSettings;

    #calls: Lcom/android/settings_ex/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->access$1400(Lcom/android/settings_ex/motion2013/AirMotionSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_scroll"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 431
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings$9;->this$0:Lcom/android/settings_ex/motion2013/AirMotionSettings;

    #calls: Lcom/android/settings_ex/motion2013/AirMotionSettings;->broadcastAirScrollChanged(Z)V
    invoke-static {v0, v2}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->access$1500(Lcom/android/settings_ex/motion2013/AirMotionSettings;Z)V

    .line 432
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings$9;->this$0:Lcom/android/settings_ex/motion2013/AirMotionSettings;

    iget-object v1, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings$9;->this$0:Lcom/android/settings_ex/motion2013/AirMotionSettings;

    invoke-virtual {v1}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings$9;->this$0:Lcom/android/settings_ex/motion2013/AirMotionSettings;

    #getter for: Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAirScroll:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v2}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->access$100(Lcom/android/settings_ex/motion2013/AirMotionSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    .line 438
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    const-string v0, "air_turn"

    iget-object v1, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings$9;->val$motion_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings$9;->this$0:Lcom/android/settings_ex/motion2013/AirMotionSettings;

    #calls: Lcom/android/settings_ex/motion2013/AirMotionSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->access$1600(Lcom/android/settings_ex/motion2013/AirMotionSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "air_motion_turn"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 435
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings$9;->this$0:Lcom/android/settings_ex/motion2013/AirMotionSettings;

    #calls: Lcom/android/settings_ex/motion2013/AirMotionSettings;->broadcastAirBrowseChanged(Z)V
    invoke-static {v0, v2}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->access$1700(Lcom/android/settings_ex/motion2013/AirMotionSettings;Z)V

    .line 436
    iget-object v0, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings$9;->this$0:Lcom/android/settings_ex/motion2013/AirMotionSettings;

    iget-object v1, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings$9;->this$0:Lcom/android/settings_ex/motion2013/AirMotionSettings;

    invoke-virtual {v1}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/motion2013/AirMotionSettings$9;->this$0:Lcom/android/settings_ex/motion2013/AirMotionSettings;

    #getter for: Lcom/android/settings_ex/motion2013/AirMotionSettings;->mAirTurn:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v2}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->access$200(Lcom/android/settings_ex/motion2013/AirMotionSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/motion2013/AirMotionSettings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto :goto_0
.end method
