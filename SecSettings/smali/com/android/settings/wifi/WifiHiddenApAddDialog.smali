.class public Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;
.super Landroid/app/AlertDialog;
.source "WifiHiddenApAddDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiHiddenApAddDialog"


# instance fields
.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mSsid:Landroid/widget/EditText;

.field private mTempSsid:Ljava/lang/String;

.field ssidWatcher:Landroid/text/TextWatcher;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 26
    const v0, 0x7f100032

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;->mTempSsid:Ljava/lang/String;

    .line 63
    new-instance v0, Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog$1;-><init>(Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;->ssidWatcher:Landroid/text/TextWatcher;

    .line 28
    iput-object p2, p0, Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 29
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;->mTempSsid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;->mSsid:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;->validate()V

    return-void
.end method

.method private validate()V
    .locals 3

    .prologue
    .line 80
    const/4 v1, 0x1

    .line 81
    .local v1, enabled:Z
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 83
    .local v0, button:Landroid/widget/Button;
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 84
    const/4 v1, 0x0

    .line 87
    :cond_0
    if-eqz v0, :cond_1

    .line 88
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 90
    :cond_1
    return-void
.end method


# virtual methods
.method public getSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040174

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 36
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 38
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 39
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/app/AlertDialog;->setInverseBackgroundForced(Z)V

    .line 41
    const v2, 0x7f0b0420

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;->mSsid:Landroid/widget/EditText;

    .line 42
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;->mSsid:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;->ssidWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 44
    const/4 v2, -0x1

    const v3, 0x7f0903e3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 45
    const/4 v2, -0x2

    const v3, 0x7f0903e4

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 47
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiHiddenApAddDialog;->validate()V

    .line 50
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 56
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 57
    return-void
.end method
