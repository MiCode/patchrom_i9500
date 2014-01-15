.class Lcom/android/settings_ex/FingerAirViewSettings$4;
.super Ljava/lang/Object;
.source "FingerAirViewSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/FingerAirViewSettings;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/FingerAirViewSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/FingerAirViewSettings;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/settings_ex/FingerAirViewSettings$4;->this$0:Lcom/android/settings_ex/FingerAirViewSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 315
    iget-object v0, p0, Lcom/android/settings_ex/FingerAirViewSettings$4;->this$0:Lcom/android/settings_ex/FingerAirViewSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 316
    iget-object v0, p0, Lcom/android/settings_ex/FingerAirViewSettings$4;->this$0:Lcom/android/settings_ex/FingerAirViewSettings;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 317
    iget-object v0, p0, Lcom/android/settings_ex/FingerAirViewSettings$4;->this$0:Lcom/android/settings_ex/FingerAirViewSettings;

    #getter for: Lcom/android/settings_ex/FingerAirViewSettings;->mActionBarSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings_ex/FingerAirViewSettings;->access$000(Lcom/android/settings_ex/FingerAirViewSettings;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 318
    iget-object v0, p0, Lcom/android/settings_ex/FingerAirViewSettings$4;->this$0:Lcom/android/settings_ex/FingerAirViewSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 319
    iget-object v0, p0, Lcom/android/settings_ex/FingerAirViewSettings$4;->this$0:Lcom/android/settings_ex/FingerAirViewSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_air_view_highlight"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 321
    iget-object v0, p0, Lcom/android/settings_ex/FingerAirViewSettings$4;->this$0:Lcom/android/settings_ex/FingerAirViewSettings;

    #calls: Lcom/android/settings_ex/FingerAirViewSettings;->broadcastFingerAirViewChanged(Z)V
    invoke-static {v0, v3}, Lcom/android/settings_ex/FingerAirViewSettings;->access$600(Lcom/android/settings_ex/FingerAirViewSettings;Z)V

    .line 324
    iget-object v0, p0, Lcom/android/settings_ex/FingerAirViewSettings$4;->this$0:Lcom/android/settings_ex/FingerAirViewSettings;

    #getter for: Lcom/android/settings_ex/FingerAirViewSettings;->mMagnifier:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings_ex/FingerAirViewSettings;->access$100(Lcom/android/settings_ex/FingerAirViewSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 326
    iget-object v0, p0, Lcom/android/settings_ex/FingerAirViewSettings$4;->this$0:Lcom/android/settings_ex/FingerAirViewSettings;

    #getter for: Lcom/android/settings_ex/FingerAirViewSettings;->mInforamtionPreview:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings_ex/FingerAirViewSettings;->access$200(Lcom/android/settings_ex/FingerAirViewSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 328
    iget-object v0, p0, Lcom/android/settings_ex/FingerAirViewSettings$4;->this$0:Lcom/android/settings_ex/FingerAirViewSettings;

    #getter for: Lcom/android/settings_ex/FingerAirViewSettings;->mSoundAndHapticFeedback:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings_ex/FingerAirViewSettings;->access$300(Lcom/android/settings_ex/FingerAirViewSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 330
    iget-object v0, p0, Lcom/android/settings_ex/FingerAirViewSettings$4;->this$0:Lcom/android/settings_ex/FingerAirViewSettings;

    #getter for: Lcom/android/settings_ex/FingerAirViewSettings;->mProgressBarPreview:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings_ex/FingerAirViewSettings;->access$400(Lcom/android/settings_ex/FingerAirViewSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 331
    iget-object v0, p0, Lcom/android/settings_ex/FingerAirViewSettings$4;->this$0:Lcom/android/settings_ex/FingerAirViewSettings;

    #getter for: Lcom/android/settings_ex/FingerAirViewSettings;->mSpeedDialTip:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings_ex/FingerAirViewSettings;->access$500(Lcom/android/settings_ex/FingerAirViewSettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 332
    return-void
.end method
