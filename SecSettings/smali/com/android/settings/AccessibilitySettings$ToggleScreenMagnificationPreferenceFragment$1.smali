.class Lcom/android/settings_ex/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$1;
.super Landroid/database/ContentObserver;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 2764
    iput-object p1, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings_ex/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 2768
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings_ex/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2769
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings_ex/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;

    iget-object v0, v0, Lcom/android/settings_ex/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2772
    :goto_0
    return-void

    .line 2771
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$1;->this$0:Lcom/android/settings_ex/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;

    iget-object v0, v0, Lcom/android/settings_ex/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method
