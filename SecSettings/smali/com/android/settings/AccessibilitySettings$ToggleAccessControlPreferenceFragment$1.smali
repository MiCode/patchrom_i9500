.class Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessControlPreferenceFragment$1;
.super Lcom/android/settings_ex/AccessibilitySettings$SettingsContentObserver;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessControlPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessControlPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessControlPreferenceFragment;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 2890
    iput-object p1, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessControlPreferenceFragment$1;->this$0:Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    invoke-direct {p0, p2}, Lcom/android/settings_ex/AccessibilitySettings$SettingsContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 2896
    iget-object v1, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessControlPreferenceFragment$1;->this$0:Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "access_control_use"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 2897
    const/4 v0, 0x1

    .line 2900
    .local v0, settingValue:Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessControlPreferenceFragment$1;->this$0:Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessControlPreferenceFragment;

    iget-object v1, v1, Lcom/android/settings_ex/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 2901
    return-void

    .line 2899
    .end local v0           #settingValue:Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #settingValue:Z
    goto :goto_0
.end method
