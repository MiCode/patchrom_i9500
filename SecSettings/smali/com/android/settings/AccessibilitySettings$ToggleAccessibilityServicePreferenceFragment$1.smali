.class Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$1;
.super Lcom/android/settings_ex/AccessibilitySettings$SettingsContentObserver;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 2423
    iput-object p1, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$1;->this$0:Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    invoke-direct {p0, p2}, Lcom/android/settings_ex/AccessibilitySettings$SettingsContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 2426
    iget-object v3, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$1;->this$0:Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v3}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enabled_accessibility_services"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2428
    .local v2, settingValue:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$1;->this$0:Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    #getter for: Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mComponentName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->access$1700(Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 2429
    .local v0, enabled:Z
    iget-object v3, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$1;->this$0:Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    iget-object v3, v3, Lcom/android/settings_ex/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v3, v0}, Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 2431
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.settings_ex.action.talkback_off"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2432
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$1;->this$0:Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 2433
    return-void
.end method
