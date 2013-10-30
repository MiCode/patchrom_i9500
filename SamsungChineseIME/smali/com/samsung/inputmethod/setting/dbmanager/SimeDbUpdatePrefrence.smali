.class public Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;
.super Landroid/preference/Preference;
.source "SimeDbUpdatePrefrence.java"

# interfaces
.implements Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$updateHandler;
    }
.end annotation


# static fields
.field private static final DIALOG_UPDATE_CONNECT_ATTENTION:I = 0x9

.field private static final DIALOG_UPDATE_CONNECT_ERROR:I = 0x8

.field private static final DIALOG_UPDATE_FAILED:I = 0x2

.field private static final DIALOG_UPDATE_NETWORK_DOWN:I = 0x4

.field private static final DIALOG_UPDATE_NOTIFICATION_ATTENTION:I = 0xa

.field private static final DIALOG_UPDATE_NO_NETWORK:I = 0x3

.field private static final DIALOG_UPDATE_SAME_VERSION:I = 0x5

.field private static final DIALOG_UPDATE_SUCCESSFUL:I = 0x1

.field private static final DIALOG_UPDATE_TIMEOUT:I = 0x6


# instance fields
.field private cancelUpdateHandler:Landroid/view/View$OnClickListener;

.field private mAlertDialg:Landroid/app/AlertDialog;

.field private mCancelButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mDBName:Landroid/widget/TextView;

.field private mDBUpdateDate:Landroid/widget/TextView;

.field private mDbUpdateHandler:Landroid/os/Handler;

.field private mDefaultSummaryView:Landroid/widget/TextView;

.field private mDefaultTitleView:Landroid/widget/TextView;

.field private mDialogId:I

.field private mPercentProgress:Landroid/widget/ProgressBar;

.field private mUpdateButton:Landroid/widget/Button;

.field private mUpdateItem:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;

.field private mWaitingProgress:Landroid/widget/ProgressBar;

.field private updateHandler:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 104
    new-instance v0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$1;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$1;-><init>(Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->updateHandler:Landroid/view/View$OnClickListener;

    .line 112
    new-instance v0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$2;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$2;-><init>(Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->cancelUpdateHandler:Landroid/view/View$OnClickListener;

    .line 206
    new-instance v0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$updateHandler;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$updateHandler;-><init>(Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mDbUpdateHandler:Landroid/os/Handler;

    .line 72
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->getLayoutResource()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->init(Landroid/content/Context;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attr"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    new-instance v0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$1;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$1;-><init>(Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->updateHandler:Landroid/view/View$OnClickListener;

    .line 112
    new-instance v0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$2;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$2;-><init>(Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->cancelUpdateHandler:Landroid/view/View$OnClickListener;

    .line 206
    new-instance v0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$updateHandler;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$updateHandler;-><init>(Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mDbUpdateHandler:Landroid/os/Handler;

    .line 77
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->getLayoutResource()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->init(Landroid/content/Context;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attr"
    .parameter "arg2"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    new-instance v0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$1;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$1;-><init>(Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->updateHandler:Landroid/view/View$OnClickListener;

    .line 112
    new-instance v0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$2;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$2;-><init>(Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->cancelUpdateHandler:Landroid/view/View$OnClickListener;

    .line 206
    new-instance v0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$updateHandler;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$updateHandler;-><init>(Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mDbUpdateHandler:Landroid/os/Handler;

    .line 82
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->getLayoutResource()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->init(Landroid/content/Context;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;)V
    .locals 1
    .parameter "context"
    .parameter "updateItem"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 104
    new-instance v0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$1;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$1;-><init>(Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->updateHandler:Landroid/view/View$OnClickListener;

    .line 112
    new-instance v0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$2;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$2;-><init>(Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->cancelUpdateHandler:Landroid/view/View$OnClickListener;

    .line 206
    new-instance v0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$updateHandler;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$updateHandler;-><init>(Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mDbUpdateHandler:Landroid/os/Handler;

    .line 65
    iput-object p2, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mUpdateItem:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;

    .line 66
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mUpdateItem:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;

    invoke-virtual {v0, p0}, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;->setUpdateCallBack(Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;)V

    .line 67
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->getLayoutResource()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->init(Landroid/content/Context;I)V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->dbUpdatePrepare()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;)Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mUpdateItem:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->setItemStatus(ZI)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->showAlertDialog(I)V

    return-void
.end method

.method static synthetic access$502(Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput p1, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mDialogId:I

    return p1
.end method

.method private dbUpdatePrepare()V
    .locals 2

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->isWLANConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mUpdateItem:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;->update()V

    .line 451
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->setItemStatus(ZI)V

    .line 461
    :goto_0
    return-void

    .line 453
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->isMobileNetwWorkConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->showAlertDialog(I)V

    goto :goto_0

    .line 459
    :cond_1
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->showAlertDialog(I)V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "defaultLayoutResId"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mContext:Landroid/content/Context;

    .line 89
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 91
    .local v0, inflater:Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p2, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 94
    .local v1, systemPrefrence:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_0

    .line 95
    const v2, 0x1020016

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mDefaultTitleView:Landroid/widget/TextView;

    .line 97
    const v2, 0x1020010

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mDefaultSummaryView:Landroid/widget/TextView;

    .line 101
    :cond_0
    const v2, 0x7f030005

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->setWidgetLayoutResource(I)V

    .line 102
    return-void
.end method

.method private setDbUpdateDateText()V
    .locals 4

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, dispText:Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mUpdateItem:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;->getDBUpdateDate()Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, updateDate:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 175
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mContext:Landroid/content/Context;

    const v3, 0x7f0b00a0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    :cond_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mDBUpdateDate:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 181
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mDBUpdateDate:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mDBUpdateDate:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setItemStatus(ZI)V
    .locals 3
    .parameter "bDownload"
    .parameter "percent"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 408
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mUpdateItem:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;->updateSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 410
    if-eqz p1, :cond_1

    .line 412
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 414
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mDBUpdateDate:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 416
    if-lez p2, :cond_0

    .line 417
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mWaitingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 418
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mPercentProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 419
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mPercentProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 443
    :goto_0
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->setDbUpdateDateText()V

    .line 444
    return-void

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mWaitingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 423
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mPercentProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 428
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 429
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mWaitingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 430
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mPercentProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 431
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mDBUpdateDate:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 436
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 437
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 438
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mWaitingProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 439
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mPercentProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 440
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mDBUpdateDate:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showAlertDialog(I)V
    .locals 7
    .parameter "dialogId"

    .prologue
    const v6, 0x7f0b00a2

    const v5, 0x7f0b005d

    const v4, 0x7f0b0045

    const v3, 0x1080027

    .line 291
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mAlertDialg:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mAlertDialg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mDialogId:I

    if-ne v1, p1, :cond_0

    .line 404
    :goto_0
    return-void

    .line 294
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 295
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mContext:Landroid/content/Context;

    const v2, 0x7f0b008c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 296
    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 298
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 344
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mContext:Landroid/content/Context;

    const v2, 0x7f0b00a7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 401
    :goto_1
    iput p1, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mDialogId:I

    .line 402
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mAlertDialg:Landroid/app/AlertDialog;

    .line 403
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mAlertDialg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 301
    :pswitch_2
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 302
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 304
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mContext:Landroid/content/Context;

    const v2, 0x7f0b00a4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 306
    new-instance v1, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$3;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$3;-><init>(Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 313
    new-instance v1, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$4;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$4;-><init>(Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 322
    :pswitch_3
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 323
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 325
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mContext:Landroid/content/Context;

    const v2, 0x7f0b00a3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 327
    new-instance v1, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$5;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$5;-><init>(Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 335
    new-instance v1, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$6;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$6;-><init>(Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 349
    :pswitch_4
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mContext:Landroid/content/Context;

    const v2, 0x7f0b00a6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 354
    :pswitch_5
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 355
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mContext:Landroid/content/Context;

    const v2, 0x7f0b00ab

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 357
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mContext:Landroid/content/Context;

    const v2, 0x7f0b00ac

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 359
    const v1, 0x7f0b00b0

    new-instance v2, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$7;

    invoke-direct {v2, p0}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$7;-><init>(Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 369
    new-instance v1, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$8;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$8;-><init>(Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 379
    :pswitch_6
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mContext:Landroid/content/Context;

    const v2, 0x7f0b00a5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 384
    :pswitch_7
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mContext:Landroid/content/Context;

    const v2, 0x7f0b00aa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 389
    :pswitch_8
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mContext:Landroid/content/Context;

    const v2, 0x7f0b00b2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 394
    :pswitch_9
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mContext:Landroid/content/Context;

    const v2, 0x7f0b00a8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public handleDownloadEvent(ILjava/lang/Object;)Z
    .locals 2
    .parameter "msgId"
    .parameter "obj"

    .prologue
    .line 199
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mDbUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 200
    .local v0, msg:Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 201
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mDbUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 203
    const/4 v1, 0x1

    return v1
.end method

.method public isMobileNetwWorkConnected()Z
    .locals 4

    .prologue
    .line 465
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 468
    .local v0, connMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 470
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isWLANConnected()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 476
    iget-object v3, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 479
    .local v0, connMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 481
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 135
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 139
    const v0, 0x7f0c0011

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mDBName:Landroid/widget/TextView;

    .line 140
    const v0, 0x7f0c0012

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mDBUpdateDate:Landroid/widget/TextView;

    .line 141
    const v0, 0x7f0c0016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mCancelButton:Landroid/widget/Button;

    .line 142
    const v0, 0x7f0c0015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mUpdateButton:Landroid/widget/Button;

    .line 143
    const v0, 0x7f0c0013

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mWaitingProgress:Landroid/widget/ProgressBar;

    .line 144
    const v0, 0x7f0c0014

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mPercentProgress:Landroid/widget/ProgressBar;

    .line 146
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mUpdateButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mUpdateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->updateHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mCancelButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mCancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->cancelUpdateHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mUpdateItem:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;->isUpdating()Z

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->setItemStatus(ZI)V

    .line 155
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mDefaultTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mDBName:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mDBName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mDefaultTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 157
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mDBName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mDefaultTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 158
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mDBName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mUpdateItem:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;->getDBName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mDefaultTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mDBUpdateDate:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 162
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mDBUpdateDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mDefaultSummaryView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 164
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mDBUpdateDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mDefaultSummaryView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 167
    :cond_3
    return-void
.end method

.method public onClick()V
    .locals 0

    .prologue
    .line 193
    invoke-super {p0}, Landroid/preference/Preference;->onClick()V

    .line 194
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "parent"

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mUpdateItem:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;->setBackground()V

    .line 122
    return-void
.end method
