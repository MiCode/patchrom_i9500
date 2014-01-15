.class public Lcom/android/settings_ex/wifi/WifiInternetServiceCheckDialog;
.super Landroid/app/AlertDialog;
.source "WifiInternetServiceCheckDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private check:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private final mContext:Landroid/content/Context;

.field private mListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiInternetServiceCheckDialog;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/android/settings_ex/wifi/WifiInternetServiceCheckDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 44
    return-void
.end method


# virtual methods
.method public WifiInternetServiceCheckBoxChecked()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiInternetServiceCheckDialog;->check:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 69
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiInternetServiceCheckDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040178

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 49
    .local v0, view:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiInternetServiceCheckDialog;->setView(Landroid/view/View;)V

    .line 50
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiInternetServiceCheckDialog;->setInverseBackgroundForced(Z)V

    .line 52
    const v1, 0x7f0903d6

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/WifiInternetServiceCheckDialog;->setTitle(I)V

    .line 54
    const v1, 0x7f0b0485

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiInternetServiceCheckDialog;->check:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 56
    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiInternetServiceCheckDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090699

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiInternetServiceCheckDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiInternetServiceCheckDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 58
    const/4 v1, -0x2

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiInternetServiceCheckDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0903e4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiInternetServiceCheckDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiInternetServiceCheckDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 61
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 62
    return-void
.end method
