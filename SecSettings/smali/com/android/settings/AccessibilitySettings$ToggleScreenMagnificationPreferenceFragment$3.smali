.class Lcom/android/settings_ex/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$3;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;)V
    .locals 0

    .prologue
    .line 2832
    iput-object p1, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$3;->this$0:Lcom/android/settings_ex/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 2834
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 2835
    iget-object v1, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$3;->this$0:Lcom/android/settings_ex/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;

    iget-object v1, v1, Lcom/android/settings_ex/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 2836
    iget-object v1, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$3;->this$0:Lcom/android/settings_ex/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "checked"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2837
    iget-object v1, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$3;->this$0:Lcom/android/settings_ex/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;

    iget-object v2, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$3;->this$0:Lcom/android/settings_ex/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;

    iget-object v2, v2, Lcom/android/settings_ex/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings_ex/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 2838
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 2839
    const/4 v0, 0x1

    .line 2841
    :cond_0
    return v0
.end method
