.class public Lcom/android/settings_ex/wifi/Hs20PickerDialog;
.super Landroid/app/Activity;
.source "Hs20PickerDialog.java"

# interfaces
.implements Lcom/android/settings_ex/wifi/Hs20Settings$OnScanStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/wifi/Hs20PickerDialog$OnScanButtonPressed;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Hs20PickerDialog"


# instance fields
.field private cancelBtn:Landroid/widget/Button;

.field mFragmentManager:Landroid/app/FragmentManager;

.field private scanBtn:Landroid/widget/Button;

.field public scanListner:Lcom/android/settings_ex/wifi/Hs20PickerDialog$OnScanButtonPressed;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v0, 0x7f090284

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 28
    const v0, 0x7f040095

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 29
    const v0, 0x7f0b0193

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/Hs20PickerDialog;->cancelBtn:Landroid/widget/Button;

    .line 30
    const v0, 0x7f0b0194

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/Hs20PickerDialog;->scanBtn:Landroid/widget/Button;

    .line 31
    iget-object v0, p0, Lcom/android/settings_ex/wifi/Hs20PickerDialog;->cancelBtn:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings_ex/wifi/Hs20PickerDialog$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/wifi/Hs20PickerDialog$1;-><init>(Lcom/android/settings_ex/wifi/Hs20PickerDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v0, p0, Lcom/android/settings_ex/wifi/Hs20PickerDialog;->scanBtn:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings_ex/wifi/Hs20PickerDialog$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/wifi/Hs20PickerDialog$2;-><init>(Lcom/android/settings_ex/wifi/Hs20PickerDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v0, p0, Lcom/android/settings_ex/wifi/Hs20PickerDialog;->scanBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/Hs20PickerDialog;->mFragmentManager:Landroid/app/FragmentManager;

    .line 48
    iget-object v0, p0, Lcom/android/settings_ex/wifi/Hs20PickerDialog;->mFragmentManager:Landroid/app/FragmentManager;

    new-instance v1, Lcom/android/settings_ex/wifi/Hs20PickerDialog$3;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/wifi/Hs20PickerDialog$3;-><init>(Lcom/android/settings_ex/wifi/Hs20PickerDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->addOnBackStackChangedListener(Landroid/app/FragmentManager$OnBackStackChangedListener;)V

    .line 57
    return-void
.end method

.method public onScanCompleted(Ljava/lang/Boolean;)V
    .locals 2
    .parameter "scanState"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings_ex/wifi/Hs20PickerDialog;->scanBtn:Landroid/widget/Button;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 62
    return-void
.end method
