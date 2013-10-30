.class public Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;
.super Ljava/lang/Object;
.source "SimeTabEditDialog.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimeTabEditDialog"


# instance fields
.field private mBuilder:Landroid/app/AlertDialog$Builder;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mEditTabListView:Landroid/widget/ListView;

.field private mListAdapter:Lcom/samsung/inputmethod/tabmode/SimeTabListAdapter;

.field private mLoadFromSettings:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "fromSetting"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;->mLoadFromSettings:Z

    .line 39
    iput-object p1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;->mContext:Landroid/content/Context;

    .line 40
    iput-boolean p2, p0, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;->mLoadFromSettings:Z

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;->mLoadFromSettings:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;->updateTabBarUI()V

    return-void
.end method

.method private createListView()Landroid/widget/ListView;
    .locals 3

    .prologue
    .line 128
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 130
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f03001d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;->mEditTabListView:Landroid/widget/ListView;

    .line 131
    new-instance v1, Lcom/samsung/inputmethod/tabmode/SimeTabListAdapter;

    iget-object v2, p0, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/inputmethod/tabmode/SimeTabListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;->mListAdapter:Lcom/samsung/inputmethod/tabmode/SimeTabListAdapter;

    .line 132
    invoke-static {}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->getInstance()Lcom/samsung/inputmethod/tabmode/SimeTabDataService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->initCheckedtData()V

    .line 134
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;->mEditTabListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;->mListAdapter:Lcom/samsung/inputmethod/tabmode/SimeTabListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 135
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;->mEditTabListView:Landroid/widget/ListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 136
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;->mEditTabListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 137
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;->mEditTabListView:Landroid/widget/ListView;

    new-instance v2, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog$3;

    invoke-direct {v2, p0}, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog$3;-><init>(Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 161
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;->mEditTabListView:Landroid/widget/ListView;

    return-object v1
.end method

.method private updateTabBarUI()V
    .locals 2

    .prologue
    .line 117
    iget-boolean v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;->mLoadFromSettings:Z

    if-nez v1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/samsung/inputmethod/SamsungIME;

    .line 119
    .local v0, ime:Lcom/samsung/inputmethod/SamsungIME;
    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeBySettings()Z

    .line 120
    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getTabContainer()Lcom/samsung/inputmethod/tabmode/SimeTabContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->updateTabContainer()V

    .line 122
    .end local v0           #ime:Lcom/samsung/inputmethod/SamsungIME;
    :cond_0
    return-void
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 105
    :cond_0
    return-void
.end method

.method public isDialogShowing()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    .line 111
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showDialog()V
    .locals 8

    .prologue
    const/high16 v7, 0x2

    const/16 v6, 0x3eb

    .line 45
    invoke-static {}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->getInstance()Lcom/samsung/inputmethod/tabmode/SimeTabDataService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->initCheckedtData()V

    .line 46
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    :goto_0
    return-void

    .line 50
    :cond_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 51
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;->createListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 52
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const v4, 0x7f0b0297

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 53
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const v4, 0x104000a

    new-instance v5, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog$1;

    invoke-direct {v5, p0}, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog$1;-><init>(Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 63
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const/high16 v4, 0x104

    new-instance v5, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog$2;

    invoke-direct {v5, p0}, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog$2;-><init>(Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 71
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;->mDialog:Landroid/app/AlertDialog;

    .line 74
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;->mContext:Landroid/content/Context;

    instance-of v3, v3, Lcom/samsung/inputmethod/SamsungIME;

    if-eqz v3, :cond_3

    .line 75
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/samsung/inputmethod/SamsungIME;

    .line 76
    .local v0, ime:Lcom/samsung/inputmethod/SamsungIME;
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 77
    .local v2, window:Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 78
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getValidWindowToken()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 79
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v3, v4, :cond_1

    .line 80
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 88
    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 89
    invoke-virtual {v2, v7}, Landroid/view/Window;->addFlags(I)V

    .line 98
    .end local v0           #ime:Lcom/samsung/inputmethod/SamsungIME;
    :goto_2
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 82
    .restart local v0       #ime:Lcom/samsung/inputmethod/SamsungIME;
    :cond_1
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isPlatformKey()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 83
    const/16 v3, 0x7d8

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_1

    .line 85
    :cond_2
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_1

    .line 92
    .end local v0           #ime:Lcom/samsung/inputmethod/SamsungIME;
    .end local v1           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v2           #window:Landroid/view/Window;
    :cond_3
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 93
    .restart local v2       #window:Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 94
    .restart local v1       #lp:Landroid/view/WindowManager$LayoutParams;
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 95
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 96
    invoke-virtual {v2, v7}, Landroid/view/Window;->addFlags(I)V

    goto :goto_2
.end method
