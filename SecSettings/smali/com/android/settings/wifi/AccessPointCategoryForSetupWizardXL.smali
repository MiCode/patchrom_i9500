.class public Lcom/android/settings_ex/wifi/AccessPointCategoryForSetupWizardXL;
.super Lcom/android/settings_ex/ProgressCategoryBase;
.source "AccessPointCategoryForSetupWizardXL.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/high16 v0, 0x7f04

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 29
    return-void
.end method


# virtual methods
.method public setProgress(Z)V
    .locals 0
    .parameter "progressOn"

    .prologue
    .line 33
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 34
    return-void
.end method
