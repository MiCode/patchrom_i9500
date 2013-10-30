.class public Lcom/samsung/inputmethod/setting/SimeHelp;
.super Lcom/android/internal/app/AlertActivity;
.source "SimeHelp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 5

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeHelp;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030023

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 32
    .local v1, dialogView:Landroid/view/View;
    const v2, 0x7f0c0085

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 33
    .local v0, checkBox:Landroid/widget/CheckBox;
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getShowToturial()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 34
    new-instance v2, Lcom/samsung/inputmethod/setting/SimeHelp$1;

    invoke-direct {v2, p0}, Lcom/samsung/inputmethod/setting/SimeHelp$1;-><init>(Lcom/samsung/inputmethod/setting/SimeHelp;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 39
    return-object v1

    .line 33
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 61
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeHelp;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 22
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f0b0051

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeHelp;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 23
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeHelp;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 24
    const v1, 0x7f0b005d

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/setting/SimeHelp;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 25
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 26
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeHelp;->setupAlert()V

    .line 27
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 55
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 50
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 44
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 45
    return-void
.end method
