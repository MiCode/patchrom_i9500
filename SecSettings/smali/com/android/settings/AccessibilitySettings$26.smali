.class Lcom/android/settings_ex/AccessibilitySettings$26;
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
    .line 2179
    iput-object p1, p0, Lcom/android/settings_ex/AccessibilitySettings$26;->this$0:Lcom/android/settings_ex/AccessibilitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2182
    iget-object v1, p0, Lcom/android/settings_ex/AccessibilitySettings$26;->this$0:Lcom/android/settings_ex/AccessibilitySettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "access_control_use"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2183
    iget-object v1, p0, Lcom/android/settings_ex/AccessibilitySettings$26;->this$0:Lcom/android/settings_ex/AccessibilitySettings;

    invoke-virtual {v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assistant_menu"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2184
    iget-object v1, p0, Lcom/android/settings_ex/AccessibilitySettings$26;->this$0:Lcom/android/settings_ex/AccessibilitySettings;

    #getter for: Lcom/android/settings_ex/AccessibilitySettings;->mToggleAccessControlPreference:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v1}, Lcom/android/settings_ex/AccessibilitySettings;->access$1400(Lcom/android/settings_ex/AccessibilitySettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 2186
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2187
    .local v0, assistantMenu:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.app.assistantmenu"

    const-string v3, "com.samsung.android.app.assistantmenu.serviceframework.AssistantMenuService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2189
    iget-object v1, p0, Lcom/android/settings_ex/AccessibilitySettings$26;->this$0:Lcom/android/settings_ex/AccessibilitySettings;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 2191
    iget-object v1, p0, Lcom/android/settings_ex/AccessibilitySettings$26;->this$0:Lcom/android/settings_ex/AccessibilitySettings;

    #getter for: Lcom/android/settings_ex/AccessibilitySettings;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v1}, Lcom/android/settings_ex/AccessibilitySettings;->access$1500(Lcom/android/settings_ex/AccessibilitySettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 2192
    iget-object v1, p0, Lcom/android/settings_ex/AccessibilitySettings$26;->this$0:Lcom/android/settings_ex/AccessibilitySettings;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->removeDialog(I)V

    .line 2193
    return-void
.end method
