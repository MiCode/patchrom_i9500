.class public abstract Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordUpdateAbs;
.super Ljava/lang/Object;
.source "SimeHotWordUpdateAbs.java"

# interfaces
.implements Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface;


# static fields
.field public static final DEBUG:Z


# instance fields
.field private bUpdating:Z

.field protected mContext:Landroid/content/Context;

.field protected mDbSettings:Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;

.field private mDownloadCallBackMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;",
            ">;"
        }
    .end annotation
.end field

.field protected mHotwordFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "path"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordUpdateAbs;->mDownloadCallBackMap:Landroid/util/SparseArray;

    .line 26
    iput-object p1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordUpdateAbs;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordUpdateAbs;->mHotwordFilePath:Ljava/lang/String;

    .line 28
    new-instance v0, Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;

    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordUpdateAbs;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordUpdateAbs;->mDbSettings:Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;

    .line 29
    return-void
.end method

.method private getDownloadCallBack(I)Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;
    .locals 1
    .parameter "dbId"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordUpdateAbs;->mDownloadCallBackMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;

    return-object v0
.end method


# virtual methods
.method public cancelUpdate(I)V
    .locals 1
    .parameter "dbId"

    .prologue
    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordUpdateAbs;->bUpdating:Z

    .line 57
    return-void
.end method

.method protected handleDownloadCallBack(ILjava/lang/Object;)Z
    .locals 7
    .parameter "msgId"
    .parameter "obj"

    .prologue
    .line 67
    const/4 v0, 0x0

    .local v0, bRet:Z
    move-object v2, p2

    .line 69
    check-cast v2, Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;

    .line 70
    .local v2, downloadInfo:Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;
    const/4 v1, 0x0

    .line 72
    .local v1, downloadCallBack:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;
    if-eqz v2, :cond_2

    .line 74
    const/16 v4, 0x8

    if-eq p1, v4, :cond_0

    .line 75
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordUpdateAbs;->bUpdating:Z

    .line 77
    :cond_0
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    .line 79
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy.MM.dd"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, updateDate:Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordUpdateAbs;->mDbSettings:Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;

    iget v5, v2, Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;->dbId:I

    invoke-virtual {v4, v5, v3}, Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;->setDbUpdateDate(ILjava/lang/String;)V

    .line 82
    iget-object v4, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordUpdateAbs;->mDbSettings:Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;

    iget v5, v2, Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;->dbId:I

    iget-object v6, v2, Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;->version:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;->setDbVersion(ILjava/lang/String;)V

    .line 84
    .end local v3           #updateDate:Ljava/lang/String;
    :cond_1
    iget v4, v2, Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;->dbId:I

    invoke-direct {p0, v4}, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordUpdateAbs;->getDownloadCallBack(I)Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;

    move-result-object v1

    .line 85
    if-eqz v1, :cond_2

    .line 86
    invoke-interface {v1, p1, p2}, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;->handleDownloadEvent(ILjava/lang/Object;)Z

    .line 90
    :cond_2
    return v0
.end method

.method public isUpdating(I)Z
    .locals 1
    .parameter "dbId"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordUpdateAbs;->bUpdating:Z

    return v0
.end method

.method public setUpdateCallBack(ILcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;)V
    .locals 1
    .parameter "dbId"
    .parameter "notifier"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordUpdateAbs;->mDownloadCallBackMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    return-void
.end method

.method public update(I)V
    .locals 3
    .parameter "dbId"

    .prologue
    .line 46
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordUpdateAbs;->bUpdating:Z

    .line 47
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordUpdateAbs;->getDownloadCallBack(I)Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;

    move-result-object v0

    .line 48
    .local v0, downloadCallBack:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;
    if-eqz v0, :cond_0

    .line 49
    const/16 v1, 0xa

    new-instance v2, Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;

    invoke-direct {v2, p1}, Lcom/samsung/inputmethod/dbmanager/SimeDownloadInfo;-><init>(I)V

    invoke-interface {v0, v1, v2}, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;->handleDownloadEvent(ILjava/lang/Object;)Z

    .line 51
    :cond_0
    return-void
.end method
