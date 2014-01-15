.class Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$2;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->onInstallActionBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)V
    .locals 0

    .prologue
    .line 2648
    iput-object p1, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch;Z)Z
    .locals 4
    .parameter "toggleSwitch"
    .parameter "checked"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2651
    if-eqz p2, :cond_1

    .line 2652
    iget-object v2, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    #getter for: Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->access$2000(Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2653
    invoke-virtual {p1, v1}, Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 2654
    iget-object v2, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "checked"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2655
    iget-object v1, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    .line 2668
    :goto_0
    return v0

    .line 2658
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    iget-object v3, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    iget-object v3, v3, Lcom/android/settings_ex/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    :goto_1
    move v0, v1

    .line 2668
    goto :goto_0

    .line 2660
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    #getter for: Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->mDisableWarningMessage:Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->access$2100(Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2661
    invoke-virtual {p1, v0}, Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 2662
    iget-object v1, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "checked"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2663
    iget-object v1, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 2666
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    iget-object v2, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment$2;->this$0:Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;

    iget-object v2, v2, Lcom/android/settings_ex/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/android/settings_ex/AccessibilitySettings$ToggleAccessibilityServicePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    goto :goto_1
.end method
