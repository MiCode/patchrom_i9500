.class Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessControlPreferenceFragment$2;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->onInstallActionBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessControlPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessControlPreferenceFragment;)V
    .locals 0

    .prologue
    .line 2925
    iput-object p1, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch;Z)Z
    .locals 4
    .parameter "toggleSwitch"
    .parameter "checked"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2928
    if-eqz p2, :cond_2

    .line 2930
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assistant_menu"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2931
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    .line 2950
    :goto_0
    return v2

    .line 2932
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2933
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 2935
    :cond_1
    invoke-virtual {p1, v3}, Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 2936
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "checked"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2937
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    iget-object v1, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    iget-object v1, v1, Lcom/android/settings_ex/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 2938
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_use"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 2942
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 2943
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 2945
    :cond_3
    invoke-virtual {p1, v2}, Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 2946
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "checked"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2947
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    iget-object v1, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessControlPreferenceFragment$2;->this$0:Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    iget-object v1, v1, Lcom/android/settings_ex/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessControlPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    goto :goto_0
.end method
