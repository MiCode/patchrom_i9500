.class public Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;
.super Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordUpdateAbs;
.source "SimeXT9HotwordMgr.java"


# static fields
.field public static final SIME_XT9_HOTWORD_DIR:Ljava/lang/String; = "/xt9"

.field public static final XT9_CHN_HOTWORD_FILE_NAME:Ljava/lang/String; = "/simplified_chinese.mdb"

.field public static final XT9_HK_HOTWORD_FILE_NAME:Ljava/lang/String; = "/traditional_hk.mdb"

.field public static final XT9_TW_HOTWORD_FILE_NAME:Ljava/lang/String; = "/traditional_tw.mdb"

.field private static mInstance:Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;


# instance fields
.field private mChnHotwordFileName:Ljava/lang/String;

.field private mHKHotwordFileName:Ljava/lang/String;

.field private mHotwordUpdate:Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;

.field private mTWHotwordFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;->mInstance:Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "path"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordUpdateAbs;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;->mHotwordUpdate:Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;

    .line 46
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;->mHotwordFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/xt9"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    .local v0, hotwordDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 51
    :cond_0
    iput-object p1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;->mContext:Landroid/content/Context;

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;->mHotwordFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/xt9"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/simplified_chinese.mdb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;->mChnHotwordFileName:Ljava/lang/String;

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;->mHotwordFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/xt9"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/traditional_hk.mdb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;->mHKHotwordFileName:Ljava/lang/String;

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;->mHotwordFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/xt9"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/traditional_tw.mdb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;->mTWHotwordFileName:Ljava/lang/String;

    .line 60
    new-instance v1, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;

    invoke-direct {v1, p1}, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;->mHotwordUpdate:Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;ILjava/lang/Object;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;->handleDownloadCallBack(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;
    .locals 1
    .parameter "context"
    .parameter "path"

    .prologue
    .line 35
    sget-object v0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;->mInstance:Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;

    invoke-direct {v0, p0, p1}, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;->mInstance:Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;

    .line 39
    :cond_0
    sget-object v0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;->mInstance:Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;

    return-object v0
.end method


# virtual methods
.method public cancelUpdate(I)V
    .locals 1
    .parameter "dbId"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;->isUpdating(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-super {p0, p1}, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordUpdateAbs;->cancelUpdate(I)V

    .line 133
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;->mHotwordUpdate:Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->cancelUpdate(I)V

    .line 135
    :cond_0
    return-void
.end method

.method public getHotwordFileName(I)Ljava/lang/String;
    .locals 1
    .parameter "dbId"

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 75
    .local v0, fileName:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 90
    :goto_0
    return-object v0

    .line 78
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;->mChnHotwordFileName:Ljava/lang/String;

    .line 79
    goto :goto_0

    .line 81
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;->mHKHotwordFileName:Ljava/lang/String;

    .line 82
    goto :goto_0

    .line 84
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;->mTWHotwordFileName:Ljava/lang/String;

    .line 85
    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setUpdateBackground(I)V
    .locals 1
    .parameter "dbId"

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;->setUpdateCallBack(ILcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;)V

    .line 141
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;->mHotwordUpdate:Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->setUpdateBackground(I)V

    .line 142
    return-void
.end method

.method public update(I)V
    .locals 3
    .parameter "dbId"

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordUpdateAbs;->update(I)V

    .line 98
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;->mHotwordUpdate:Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;

    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;->mDbSettings:Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;

    invoke-virtual {v1, p1}, Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;->getDbVersion(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr$1;

    invoke-direct {v2, p0}, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr$1;-><init>(Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordMgr;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/inputmethod/dbmanager/hotword/xt9/SimeXT9HotwordUpdate;->update(ILjava/lang/String;Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;)V

    .line 126
    return-void
.end method
