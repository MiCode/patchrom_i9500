.class Lcom/android/settings_ex/FeatureSettings$8;
.super Ljava/lang/Object;
.source "FeatureSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/FeatureSettings;->showTalkBackDisableDialog(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/FeatureSettings;

.field final synthetic val$setting_type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/FeatureSettings;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 999
    iput-object p1, p0, Lcom/android/settings_ex/FeatureSettings$8;->this$0:Lcom/android/settings_ex/FeatureSettings;

    iput-object p2, p0, Lcom/android/settings_ex/FeatureSettings$8;->val$setting_type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5
    .parameter "dialog"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1003
    const-string v2, "air_motion"

    iget-object v3, p0, Lcom/android/settings_ex/FeatureSettings$8;->val$setting_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1004
    iget-object v2, p0, Lcom/android/settings_ex/FeatureSettings$8;->this$0:Lcom/android/settings_ex/FeatureSettings;

    #getter for: Lcom/android/settings_ex/FeatureSettings;->mAirMotion:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v2}, Lcom/android/settings_ex/FeatureSettings;->access$000(Lcom/android/settings_ex/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/FeatureSettings$8;->this$0:Lcom/android/settings_ex/FeatureSettings;

    iget-object v3, v3, Lcom/android/settings_ex/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "air_motion_engine"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1014
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 1004
    goto :goto_0

    .line 1005
    :cond_2
    const-string v2, "air_view"

    iget-object v3, p0, Lcom/android/settings_ex/FeatureSettings$8;->val$setting_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1006
    iget-object v2, p0, Lcom/android/settings_ex/FeatureSettings$8;->this$0:Lcom/android/settings_ex/FeatureSettings;

    #getter for: Lcom/android/settings_ex/FeatureSettings;->mAirView:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v2}, Lcom/android/settings_ex/FeatureSettings;->access$100(Lcom/android/settings_ex/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/FeatureSettings$8;->this$0:Lcom/android/settings_ex/FeatureSettings;

    iget-object v3, v3, Lcom/android/settings_ex/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "finger_air_view"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_3

    :goto_2
    invoke-virtual {v2, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    .line 1007
    :cond_4
    const-string v2, "smart_stay"

    iget-object v3, p0, Lcom/android/settings_ex/FeatureSettings$8;->val$setting_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1008
    iget-object v2, p0, Lcom/android/settings_ex/FeatureSettings$8;->this$0:Lcom/android/settings_ex/FeatureSettings;

    #getter for: Lcom/android/settings_ex/FeatureSettings;->mSmartStay:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v2}, Lcom/android/settings_ex/FeatureSettings;->access$200(Lcom/android/settings_ex/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/FeatureSettings$8;->this$0:Lcom/android/settings_ex/FeatureSettings;

    iget-object v3, v3, Lcom/android/settings_ex/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "intelligent_sleep_mode"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_5

    :goto_3
    invoke-virtual {v2, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_3

    .line 1009
    :cond_6
    const-string v2, "smart_pause"

    iget-object v3, p0, Lcom/android/settings_ex/FeatureSettings$8;->val$setting_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1010
    iget-object v2, p0, Lcom/android/settings_ex/FeatureSettings$8;->this$0:Lcom/android/settings_ex/FeatureSettings;

    #getter for: Lcom/android/settings_ex/FeatureSettings;->mSmartPause:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v2}, Lcom/android/settings_ex/FeatureSettings;->access$300(Lcom/android/settings_ex/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/FeatureSettings$8;->this$0:Lcom/android/settings_ex/FeatureSettings;

    iget-object v3, v3, Lcom/android/settings_ex/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "smart_pause"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_7

    :goto_4
    invoke-virtual {v2, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_4

    .line 1011
    :cond_8
    const-string v2, "smart_scroll"

    iget-object v3, p0, Lcom/android/settings_ex/FeatureSettings$8;->val$setting_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1012
    iget-object v2, p0, Lcom/android/settings_ex/FeatureSettings$8;->this$0:Lcom/android/settings_ex/FeatureSettings;

    #getter for: Lcom/android/settings_ex/FeatureSettings;->mSmartScroll:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v2}, Lcom/android/settings_ex/FeatureSettings;->access$400(Lcom/android/settings_ex/FeatureSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/FeatureSettings$8;->this$0:Lcom/android/settings_ex/FeatureSettings;

    iget-object v3, v3, Lcom/android/settings_ex/FeatureSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "smart_scroll"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_9

    :goto_5
    invoke-virtual {v2, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_9
    move v0, v1

    goto :goto_5
.end method
