.class Lcom/android/settings_ex/AccessibilitySettings$32;
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
    .line 2272
    iput-object p1, p0, Lcom/android/settings_ex/AccessibilitySettings$32;->this$0:Lcom/android/settings_ex/AccessibilitySettings;

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

    .line 2274
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilitySettings$32;->this$0:Lcom/android/settings_ex/AccessibilitySettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_use"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2276
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilitySettings$32;->this$0:Lcom/android/settings_ex/AccessibilitySettings;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 2277
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilitySettings$32;->this$0:Lcom/android/settings_ex/AccessibilitySettings;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings_ex.action.talkback_off"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 2278
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilitySettings$32;->this$0:Lcom/android/settings_ex/AccessibilitySettings;

    #getter for: Lcom/android/settings_ex/AccessibilitySettings;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings_ex/AccessibilitySettings;->access$1400(Lcom/android/settings_ex/AccessibilitySettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 2279
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilitySettings$32;->this$0:Lcom/android/settings_ex/AccessibilitySettings;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->removeDialog(I)V

    .line 2280
    return-void
.end method
