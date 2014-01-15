.class public Lcom/android/settings_ex/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;
.super Lcom/android/settings_ex/AccessibilitySettings$ToggleFeaturePreferenceFragment;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToggleScreenMagnificationPreferenceFragment"
.end annotation


# static fields
.field private static final DIALOG_EXCLUSIVE_AIRVIEW:I = 0x1


# instance fields
.field private final mIcObserver:Landroid/database/ContentObserver;

.field private mShownDialogId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 2758
    invoke-direct {p0}, Lcom/android/settings_ex/AccessibilitySettings$ToggleFeaturePreferenceFragment;-><init>()V

    .line 2764
    new-instance v0, Lcom/android/settings_ex/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$1;-><init>(Lcom/android/settings_ex/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->mIcObserver:Landroid/database/ContentObserver;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2853
    packed-switch p2, :pswitch_data_0

    .line 2877
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 2855
    :pswitch_0
    iget v1, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->mShownDialogId:I

    if-ne v1, v4, :cond_0

    .line 2856
    iget-object v1, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v1, v4}, Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 2857
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "checked"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2858
    iget-object v1, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v1, v4}, Lcom/android/settings_ex/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 2860
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "finger_air_view"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2861
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "finger_air_view_highlight"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2862
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2863
    .local v0, finger_air_view_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2864
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 2879
    .end local v0           #finger_air_view_changed:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 2868
    :pswitch_1
    iget v1, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->mShownDialogId:I

    if-ne v1, v4, :cond_0

    .line 2869
    iget-object v1, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v1, v3}, Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 2870
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "checked"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2871
    iget-object v1, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lcom/android/settings_ex/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2853
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "dialogId"

    .prologue
    const/4 v2, 0x1

    .line 2821
    if-ne p1, v2, :cond_0

    .line 2822
    iput v2, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->mShownDialogId:I

    .line 2823
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f090781

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2824
    .local v1, title:Ljava/lang/String;
    const v2, 0x7f090782

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2826
    .local v0, message:Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings_ex/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$3;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$3;-><init>(Lcom/android/settings_ex/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 2847
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #title:Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onInstallActionBarToggleSwitch()V
    .locals 2

    .prologue
    .line 2800
    invoke-super {p0}, Lcom/android/settings_ex/AccessibilitySettings$ToggleFeaturePreferenceFragment;->onInstallActionBarToggleSwitch()V

    .line 2801
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch;

    new-instance v1, Lcom/android/settings_ex/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment$2;-><init>(Lcom/android/settings_ex/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 2813
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 2788
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->mIcObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2789
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 2790
    return-void
.end method

.method protected onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 3
    .parameter "preferenceKey"
    .parameter "enabled"

    .prologue
    .line 2794
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_magnification_enabled"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2796
    return-void

    .line 2794
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2777
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 2778
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleScreenMagnificationPreferenceFragment;->mIcObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2780
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2781
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2784
    :goto_0
    return-void

    .line 2783
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method
