.class public Lcom/android/settings_ex/cloud/NumberPickerDialog;
.super Landroid/app/AlertDialog;
.source "NumberPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/cloud/NumberPickerDialog$OnNumberSetListener;
    }
.end annotation


# static fields
.field private static final NUMBER:Ljava/lang/String; = "number"


# instance fields
.field private final mCallback:Lcom/android/settings_ex/cloud/NumberPickerDialog$OnNumberSetListener;

.field private final mNumberPicker:Landroid/widget/NumberPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/settings_ex/cloud/NumberPickerDialog$OnNumberSetListener;IIII)V
    .locals 6
    .parameter "context"
    .parameter "theme"
    .parameter "callBack"
    .parameter "number"
    .parameter "rangeMin"
    .parameter "rangeMax"
    .parameter "title"

    .prologue
    const/4 v3, 0x0

    .line 82
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 83
    iput-object p3, p0, Lcom/android/settings_ex/cloud/NumberPickerDialog;->mCallback:Lcom/android/settings_ex/cloud/NumberPickerDialog$OnNumberSetListener;

    .line 85
    invoke-virtual {p0, p7}, Landroid/app/Dialog;->setTitle(I)V

    .line 87
    const/4 v2, -0x1

    const v4, 0x7f0910d4

    invoke-virtual {p1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v2, v4, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 88
    const/4 v4, -0x2

    const/high16 v2, 0x104

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v2, v3

    check-cast v2, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v4, v5, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 91
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 93
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f0400c7

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 94
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 95
    const v2, 0x7f0b0232

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/NumberPicker;

    iput-object v2, p0, Lcom/android/settings_ex/cloud/NumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    .line 98
    iget-object v2, p0, Lcom/android/settings_ex/cloud/NumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2, p5}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 99
    iget-object v2, p0, Lcom/android/settings_ex/cloud/NumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2, p6}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 100
    iget-object v2, p0, Lcom/android/settings_ex/cloud/NumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2, p4}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 101
    iget-object v2, p0, Lcom/android/settings_ex/cloud/NumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 103
    iget-object v2, p0, Lcom/android/settings_ex/cloud/NumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/cloud/NumberPickerDialog$OnNumberSetListener;IIII)V
    .locals 8
    .parameter "context"
    .parameter "callBack"
    .parameter "number"
    .parameter "rangeMin"
    .parameter "rangeMax"
    .parameter "title"

    .prologue
    .line 66
    const/4 v2, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ex/cloud/NumberPickerDialog;-><init>(Landroid/content/Context;ILcom/android/settings_ex/cloud/NumberPickerDialog$OnNumberSetListener;IIII)V

    .line 67
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/settings_ex/cloud/NumberPickerDialog;->mCallback:Lcom/android/settings_ex/cloud/NumberPickerDialog$OnNumberSetListener;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/settings_ex/cloud/NumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearFocus()V

    .line 110
    iget-object v0, p0, Lcom/android/settings_ex/cloud/NumberPickerDialog;->mCallback:Lcom/android/settings_ex/cloud/NumberPickerDialog$OnNumberSetListener;

    iget-object v1, p0, Lcom/android/settings_ex/cloud/NumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/settings_ex/cloud/NumberPickerDialog$OnNumberSetListener;->onNumberSet(I)V

    .line 111
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 113
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 125
    const-string v1, "number"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 126
    .local v0, number:I
    iget-object v1, p0, Lcom/android/settings_ex/cloud/NumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 127
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 117
    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 118
    .local v0, state:Landroid/os/Bundle;
    const-string v1, "number"

    iget-object v2, p0, Lcom/android/settings_ex/cloud/NumberPickerDialog;->mNumberPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 119
    return-object v0
.end method
