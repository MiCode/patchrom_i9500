.class public Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch;
.super Landroid/widget/Switch;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToggleSwitch"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;
    }
.end annotation


# instance fields
.field private mOnBeforeListener:Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 2391
    invoke-direct {p0, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 2392
    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 2400
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch;->mOnBeforeListener:Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch;->mOnBeforeListener:Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;->onBeforeCheckedChanged(Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2405
    :goto_0
    return-void

    .line 2404
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method public setCheckedInternal(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 2408
    invoke-super {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 2409
    return-void
.end method

.method public setOnBeforeCheckedChangeListener(Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2395
    iput-object p1, p0, Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch;->mOnBeforeListener:Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;

    .line 2396
    return-void
.end method
