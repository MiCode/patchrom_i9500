.class public Lcom/android/settings_ex/TermsAndConditionActivity;
.super Landroid/app/Activity;
.source "TermsAndConditionActivity.java"


# static fields
.field private static final FILE_PATH:Ljava/lang/String; = "txt/%y%z/eula.txt"

.field private static final TAG:Ljava/lang/String; = "TermsAndConditionActivity"


# instance fields
.field private handler_loading:Landroid/os/Handler;

.field private loadingDialog:Landroid/app/ProgressDialog;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mTextDlg:Landroid/app/AlertDialog;

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/TermsAndConditionActivity;->s:Ljava/lang/String;

    .line 55
    new-instance v0, Lcom/android/settings_ex/TermsAndConditionActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/TermsAndConditionActivity$1;-><init>(Lcom/android/settings_ex/TermsAndConditionActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/TermsAndConditionActivity;->handler_loading:Landroid/os/Handler;

    .line 66
    iput-object v1, p0, Lcom/android/settings_ex/TermsAndConditionActivity;->mHandler:Landroid/os/Handler;

    .line 67
    iput-object v1, p0, Lcom/android/settings_ex/TermsAndConditionActivity;->loadingDialog:Landroid/app/ProgressDialog;

    .line 68
    iput-object v1, p0, Lcom/android/settings_ex/TermsAndConditionActivity;->mTextDlg:Landroid/app/AlertDialog;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/TermsAndConditionActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings_ex/TermsAndConditionActivity;->loadingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/TermsAndConditionActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings_ex/TermsAndConditionActivity;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings_ex/TermsAndConditionActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/settings_ex/TermsAndConditionActivity;->s:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings_ex/TermsAndConditionActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings_ex/TermsAndConditionActivity;->showPageOfText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/TermsAndConditionActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings_ex/TermsAndConditionActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/TermsAndConditionActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings_ex/TermsAndConditionActivity;->getFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/TermsAndConditionActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings_ex/TermsAndConditionActivity;->handler_loading:Landroid/os/Handler;

    return-object v0
.end method

.method private createThreadAndDialog()V
    .locals 5

    .prologue
    .line 105
    const-string v1, ""

    const-string v2, "Now Loading..."

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/TermsAndConditionActivity;->loadingDialog:Landroid/app/ProgressDialog;

    .line 107
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings_ex/TermsAndConditionActivity$3;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/TermsAndConditionActivity$3;-><init>(Lcom/android/settings_ex/TermsAndConditionActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 113
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 114
    return-void
.end method

.method private getFilePath()Ljava/lang/String;
    .locals 8

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/android/settings_ex/TermsAndConditionActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 118
    .local v0, assetManager:Landroid/content/res/AssetManager;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 119
    .local v2, locale:Ljava/util/Locale;
    const-string v5, "txt/%y%z/eula.txt"

    const-string v6, "%y"

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, path:Ljava/lang/String;
    const-string v5, "%z"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x5f

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 122
    :try_start_0
    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    if-eqz v3, :cond_0

    move-object v4, v3

    .line 143
    .end local v3           #path:Ljava/lang/String;
    .local v4, path:Ljava/lang/String;
    :goto_1
    return-object v4

    .line 123
    .end local v4           #path:Ljava/lang/String;
    .restart local v3       #path:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 124
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "TermsAndConditionActivity"

    const-string v6, "country is not using in file path"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v3, 0x0

    goto :goto_0

    .line 130
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const-string v5, "txt/%y%z/eula.txt"

    const-string v6, "%y"

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 131
    const-string v5, "%z"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 134
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 140
    :goto_2
    const-string v5, "txt/%y%z/eula.txt"

    const-string v6, "%y"

    const-string v7, "en"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 141
    const-string v5, "%z"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .line 143
    .end local v3           #path:Ljava/lang/String;
    .restart local v4       #path:Ljava/lang/String;
    goto :goto_1

    .line 135
    .end local v4           #path:Ljava/lang/String;
    .restart local v3       #path:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 136
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v5, "TermsAndConditionActivity"

    const-string v6, "country is not using in file path"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private showPageOfText(Ljava/lang/String;)V
    .locals 7
    .parameter "text"

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/android/settings_ex/TermsAndConditionActivity;->getApplicationContext()Landroid/content/Context;

    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/TermsAndConditionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 82
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f0400e2

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 83
    .local v2, layout:Landroid/view/View;
    const v5, 0x7f0b02b4

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 84
    .local v4, tv:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/settings_ex/TermsAndConditionActivity;->s:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    const v5, 0x7f0b010a

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 86
    .local v3, mcheck:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 88
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 89
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f090014

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 93
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/TermsAndConditionActivity;->mTextDlg:Landroid/app/AlertDialog;

    .line 94
    iget-object v5, p0, Lcom/android/settings_ex/TermsAndConditionActivity;->mTextDlg:Landroid/app/AlertDialog;

    new-instance v6, Lcom/android/settings_ex/TermsAndConditionActivity$2;

    invoke-direct {v6, p0}, Lcom/android/settings_ex/TermsAndConditionActivity$2;-><init>(Lcom/android/settings_ex/TermsAndConditionActivity;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 100
    iget-object v5, p0, Lcom/android/settings_ex/TermsAndConditionActivity;->mTextDlg:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 101
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/TermsAndConditionActivity;->setVisible(Z)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings_ex/TermsAndConditionActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/TermsAndConditionActivity;->mContext:Landroid/content/Context;

    .line 77
    invoke-direct {p0}, Lcom/android/settings_ex/TermsAndConditionActivity;->createThreadAndDialog()V

    .line 78
    return-void
.end method
