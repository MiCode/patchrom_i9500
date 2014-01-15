.class Lcom/android/settings_ex/AccessibilitySettings$24;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/AccessibilitySettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/AccessibilitySettings;)V
    .locals 0

    .prologue
    .line 2149
    iput-object p1, p0, Lcom/android/settings_ex/AccessibilitySettings$24;->this$0:Lcom/android/settings_ex/AccessibilitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    .line 2152
    iget-object v1, p0, Lcom/android/settings_ex/AccessibilitySettings$24;->this$0:Lcom/android/settings_ex/AccessibilitySettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "access_control_use"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2153
    iget-object v1, p0, Lcom/android/settings_ex/AccessibilitySettings$24;->this$0:Lcom/android/settings_ex/AccessibilitySettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "access_control_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 2154
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.accesscontrol.TOGGLE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2155
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/AccessibilitySettings$24;->this$0:Lcom/android/settings_ex/AccessibilitySettings;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2157
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/AccessibilitySettings$24;->this$0:Lcom/android/settings_ex/AccessibilitySettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "access_control_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2158
    iget-object v1, p0, Lcom/android/settings_ex/AccessibilitySettings$24;->this$0:Lcom/android/settings_ex/AccessibilitySettings;

    #getter for: Lcom/android/settings_ex/AccessibilitySettings;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v1}, Lcom/android/settings_ex/AccessibilitySettings;->access$1400(Lcom/android/settings_ex/AccessibilitySettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 2159
    iget-object v1, p0, Lcom/android/settings_ex/AccessibilitySettings$24;->this$0:Lcom/android/settings_ex/AccessibilitySettings;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->removeDialog(I)V

    .line 2160
    return-void
.end method
