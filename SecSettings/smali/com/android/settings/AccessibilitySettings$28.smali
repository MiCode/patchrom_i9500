.class Lcom/android/settings_ex/AccessibilitySettings$28;
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
    .line 2247
    iput-object p1, p0, Lcom/android/settings_ex/AccessibilitySettings$28;->this$0:Lcom/android/settings_ex/AccessibilitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 2249
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilitySettings$28;->this$0:Lcom/android/settings_ex/AccessibilitySettings;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->removeDialog(I)V

    .line 2250
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilitySettings$28;->this$0:Lcom/android/settings_ex/AccessibilitySettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assistant_menu"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2251
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilitySettings$28;->this$0:Lcom/android/settings_ex/AccessibilitySettings;

    #getter for: Lcom/android/settings_ex/AccessibilitySettings;->mAssistantMenu:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v0}, Lcom/android/settings_ex/AccessibilitySettings;->access$1500(Lcom/android/settings_ex/AccessibilitySettings;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 2252
    return-void
.end method
