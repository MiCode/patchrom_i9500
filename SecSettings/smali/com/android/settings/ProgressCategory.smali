.class public Lcom/android/settings_ex/ProgressCategory;
.super Lcom/android/settings_ex/ProgressCategoryBase;
.source "ProgressCategory.java"


# instance fields
.field private mChangeProgressText:Z

.field private mCheckIgnore:Z

.field private final mEmptyTextRes:I

.field private mNoDeviceIgnore:Z

.field private mNoDeviceTitle:I

.field private mProgress:Z

.field private mProgressText:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput-boolean v0, p0, Lcom/android/settings_ex/ProgressCategory;->mProgress:Z

    .line 34
    iput-boolean v0, p0, Lcom/android/settings_ex/ProgressCategory;->mCheckIgnore:Z

    .line 35
    iput-boolean v0, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceIgnore:Z

    .line 36
    iput-boolean v0, p0, Lcom/android/settings_ex/ProgressCategory;->mChangeProgressText:Z

    .line 38
    const v0, 0x7f090fc7

    iput v0, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceTitle:I

    .line 42
    const v0, 0x7f0400f6

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/ProgressCategory;->mEmptyTextRes:I

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "emptyTextRes"

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/ProgressCategoryBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput-boolean v0, p0, Lcom/android/settings_ex/ProgressCategory;->mProgress:Z

    .line 34
    iput-boolean v0, p0, Lcom/android/settings_ex/ProgressCategory;->mCheckIgnore:Z

    .line 35
    iput-boolean v0, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceIgnore:Z

    .line 36
    iput-boolean v0, p0, Lcom/android/settings_ex/ProgressCategory;->mChangeProgressText:Z

    .line 38
    const v0, 0x7f090fc7

    iput v0, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceTitle:I

    .line 49
    const v0, 0x7f0400f6

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 50
    iput p3, p0, Lcom/android/settings_ex/ProgressCategory;->mEmptyTextRes:I

    .line 51
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 56
    const v2, 0x7f0b02ea

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 57
    .local v1, textView:Landroid/widget/TextView;
    const v2, 0x7f0b02e9

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, progressBar:Landroid/view/View;
    iget-boolean v2, p0, Lcom/android/settings_ex/ProgressCategory;->mChangeProgressText:Z

    if-nez v2, :cond_1

    .line 61
    iget-boolean v2, p0, Lcom/android/settings_ex/ProgressCategory;->mProgress:Z

    if-eqz v2, :cond_0

    const v2, 0x7f0900c5

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 75
    :goto_1
    iget-boolean v2, p0, Lcom/android/settings_ex/ProgressCategory;->mProgress:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 97
    return-void

    .line 61
    :cond_0
    const v2, 0x7f0900c2

    goto :goto_0

    .line 64
    :cond_1
    iget v2, p0, Lcom/android/settings_ex/ProgressCategory;->mProgressText:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 75
    :cond_2
    const/16 v2, 0x8

    goto :goto_2
.end method

.method public setIgnoreMessage(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/settings_ex/ProgressCategory;->mCheckIgnore:Z

    .line 107
    return-void
.end method

.method public setIgnoreNoDevice(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceIgnore:Z

    .line 111
    return-void
.end method

.method public setNoDeviceFoundText(I)V
    .locals 0
    .parameter "resource_id"

    .prologue
    .line 122
    iput p1, p0, Lcom/android/settings_ex/ProgressCategory;->mNoDeviceTitle:I

    .line 123
    return-void
.end method

.method public setProgress(Z)V
    .locals 0
    .parameter "progressOn"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/settings_ex/ProgressCategory;->mProgress:Z

    .line 102
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    .line 103
    return-void
.end method

.method public setProgressText(ZI)V
    .locals 1
    .parameter "flag"
    .parameter "resource_id"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/settings_ex/ProgressCategory;->mChangeProgressText:Z

    .line 115
    iget-boolean v0, p0, Lcom/android/settings_ex/ProgressCategory;->mChangeProgressText:Z

    if-eqz v0, :cond_0

    .line 116
    iput p2, p0, Lcom/android/settings_ex/ProgressCategory;->mProgressText:I

    .line 119
    :goto_0
    return-void

    .line 118
    :cond_0
    const v0, 0x7f0900c5

    iput v0, p0, Lcom/android/settings_ex/ProgressCategory;->mProgressText:I

    goto :goto_0
.end method
