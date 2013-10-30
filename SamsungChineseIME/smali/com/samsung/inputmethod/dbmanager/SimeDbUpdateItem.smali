.class public Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;
.super Ljava/lang/Object;
.source "SimeDbUpdateItem.java"


# instance fields
.field mContext:Landroid/content/Context;

.field private mDBId:I

.field private mDBName:Ljava/lang/String;

.field private mDBSettings:Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;

.field private mUpdateInterface:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "dbId"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;->mContext:Landroid/content/Context;

    .line 24
    new-instance v0, Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;

    invoke-direct {v0, p1}, Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;->mDBSettings:Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;

    .line 25
    invoke-direct {p0, p2}, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;->init(I)V

    .line 26
    return-void
.end method

.method private getDBString(I)Ljava/lang/String;
    .locals 3
    .parameter "dbId"

    .prologue
    .line 38
    const/4 v0, 0x0

    .line 40
    .local v0, dbString:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 71
    :goto_0
    :pswitch_0
    return-object v0

    .line 45
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0095

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 46
    goto :goto_0

    .line 49
    :pswitch_2
    sget-boolean v1, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_KLSDK_SUPPORT:Z

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0096

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0097

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 55
    goto :goto_0

    .line 58
    :pswitch_3
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0099

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    goto :goto_0

    .line 63
    :pswitch_4
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0098

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    goto :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getDBUpdateDate(I)Ljava/lang/String;
    .locals 1
    .parameter "dbId"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;->mDBSettings:Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;->getDbUpdateDate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init(I)V
    .locals 1
    .parameter "dbId"

    .prologue
    .line 30
    iput p1, p0, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;->mDBId:I

    .line 31
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;->getDBString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;->mDBName:Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateFactory;->createUpdateInterface(Landroid/content/Context;I)Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;->mUpdateInterface:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface;

    .line 34
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;->mUpdateInterface:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;->mUpdateInterface:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface;

    iget v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;->mDBId:I

    invoke-interface {v0, v1}, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface;->cancelUpdate(I)V

    .line 96
    :cond_0
    return-void
.end method

.method public getDBName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;->mDBName:Ljava/lang/String;

    return-object v0
.end method

.method public getDBUpdateDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;->mDBId:I

    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;->getDBUpdateDate(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isUpdating()Z
    .locals 3

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, bRet:Z
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;->mUpdateInterface:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface;

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;->mUpdateInterface:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface;

    iget v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;->mDBId:I

    invoke-interface {v1, v2}, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface;->isUpdating(I)Z

    move-result v0

    .line 104
    :cond_0
    return v0
.end method

.method public setBackground()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;->mUpdateInterface:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;->mUpdateInterface:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface;

    iget v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;->mDBId:I

    invoke-interface {v0, v1}, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface;->setUpdateBackground(I)V

    .line 113
    :cond_0
    return-void
.end method

.method public setUpdateCallBack(Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;)V
    .locals 2
    .parameter "notifier"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;->mUpdateInterface:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;->mUpdateInterface:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface;

    iget v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;->mDBId:I

    invoke-interface {v0, v1, p1}, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface;->setUpdateCallBack(ILcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;)V

    .line 120
    :cond_0
    return-void
.end method

.method public update()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;->mUpdateInterface:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;->mUpdateInterface:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface;

    iget v1, p0, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;->mDBId:I

    invoke-interface {v0, v1}, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface;->update(I)V

    .line 91
    :cond_0
    return-void
.end method

.method public updateSupport()Z
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;->mUpdateInterface:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
