.class public Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;
.super Landroid/preference/DialogPreference;
.source "DeleteDynamicLanguageModelDialog.java"


# instance fields
.field private mSettings:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;->mSettings:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    .line 14
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;->setEnabled(Z)V

    .line 16
    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 1
    .parameter "positiveResult"

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 37
    if-eqz p1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;->mSettings:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;->mSettings:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-virtual {v0}, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->clearUserModel()V

    .line 42
    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 30
    const v0, 0x1010355

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 31
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 32
    return-void
.end method

.method public setConfiguration(Lcom/touchtype/personalizer/PersonalizerSettingsActivity;)V
    .locals 0
    .parameter "configuration"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/touchtype/personalizer/DeleteDynamicLanguageModelDialog;->mSettings:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    .line 26
    return-void
.end method
