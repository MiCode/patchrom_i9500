.class public Lcom/android/settings_ex/CryptKeeperConfirm;
.super Landroid/app/Fragment;
.source "CryptKeeperConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/CryptKeeperConfirm$Blank;
    }
.end annotation


# instance fields
.field private mContentView:Landroid/view/View;

.field private mFastEncryptionChecker:Landroid/view/View$OnClickListener;

.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 92
    new-instance v0, Lcom/android/settings_ex/CryptKeeperConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/CryptKeeperConfirm$1;-><init>(Lcom/android/settings_ex/CryptKeeperConfirm;)V

    iput-object v0, p0, Lcom/android/settings_ex/CryptKeeperConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 111
    new-instance v0, Lcom/android/settings_ex/CryptKeeperConfirm$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/CryptKeeperConfirm$2;-><init>(Lcom/android/settings_ex/CryptKeeperConfirm;)V

    iput-object v0, p0, Lcom/android/settings_ex/CryptKeeperConfirm;->mFastEncryptionChecker:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeperConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0b00ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ex/CryptKeeperConfirm;->mFinalButton:Landroid/widget/Button;

    .line 108
    iget-object v0, p0, Lcom/android/settings_ex/CryptKeeperConfirm;->mFinalButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings_ex/CryptKeeperConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 124
    const v2, 0x7f04003d

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/CryptKeeperConfirm;->mContentView:Landroid/view/View;

    .line 126
    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeperConfirm;->mContentView:Landroid/view/View;

    const v3, 0x7f0b00aa

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 127
    .local v0, fastEncryption:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeperConfirm;->mFastEncryptionChecker:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeperConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f090a9a

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings_ex/CryptKeeperConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f090a9b

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, text:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-direct {p0}, Lcom/android/settings_ex/CryptKeeperConfirm;->establishFinalConfirmationState()V

    .line 133
    iget-object v2, p0, Lcom/android/settings_ex/CryptKeeperConfirm;->mContentView:Landroid/view/View;

    return-object v2
.end method
