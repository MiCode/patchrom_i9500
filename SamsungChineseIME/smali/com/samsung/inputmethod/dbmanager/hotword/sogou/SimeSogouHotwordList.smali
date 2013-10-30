.class public Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;
.super Ljava/lang/Object;
.source "SimeSogouHotwordList.java"


# static fields
.field public static final MAX_SOGOU_LIST_SIZE:I = 0x3e8


# instance fields
.field private mSogouList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeStamp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;->mTimeStamp:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;->mSogouList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public deleteLastItem()V
    .locals 2

    .prologue
    .line 72
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;->mSogouList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;->mSogouList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;->mSogouList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 75
    .local v0, location:I
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;->mSogouList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 77
    .end local v0           #location:I
    :cond_0
    return-void
.end method

.method public getLastItem()Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;
    .locals 3

    .prologue
    .line 60
    const/4 v1, 0x0

    .line 62
    .local v1, phraseInfo:Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;
    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;->mSogouList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;->mSogouList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 64
    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;->mSogouList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 65
    .local v0, location:I
    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;->mSogouList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #phraseInfo:Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;
    check-cast v1, Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;

    .line 67
    .end local v0           #location:I
    .restart local v1       #phraseInfo:Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;
    :cond_0
    return-object v1
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;->mSogouList:Ljava/util/List;

    return-object v0
.end method

.method public getListSize()I
    .locals 2

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 52
    .local v0, size:I
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;->mSogouList:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;->mSogouList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 55
    :cond_0
    return v0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;->mTimeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public insertList(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "timeStamp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;>;"
    if-eqz p1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;->mSogouList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;->mSogouList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 88
    :goto_0
    iput-object p2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;->mTimeStamp:Ljava/lang/String;

    .line 90
    :cond_0
    return-void

    .line 86
    :cond_1
    iput-object p1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;->mSogouList:Ljava/util/List;

    goto :goto_0
.end method

.method public setList(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "timeStamp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;>;"
    iput-object p1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;->mSogouList:Ljava/util/List;

    .line 95
    iput-object p2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordList;->mTimeStamp:Ljava/lang/String;

    .line 96
    return-void
.end method
