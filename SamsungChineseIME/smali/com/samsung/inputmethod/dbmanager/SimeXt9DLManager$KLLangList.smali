.class Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;
.super Ljava/lang/Object;
.source "SimeXt9DLManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KLLangList"
.end annotation


# instance fields
.field private mAvailableLangList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentDLLang:I

.field private mDownloadedLangList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mListUpdated:Z

.field private mUpdatableLangList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWaitDownloadLangList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)V
    .locals 1
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->mAvailableLangList:Ljava/util/List;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->mUpdatableLangList:Ljava/util/List;

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->mWaitDownloadLangList:Ljava/util/List;

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->mDownloadedLangList:Ljava/util/List;

    .line 187
    invoke-direct {p0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->clearLangList()V

    .line 188
    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->clearLangList()V

    return-void
.end method

.method private clearLangList()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 253
    iput-boolean v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->mListUpdated:Z

    .line 254
    iput v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->mCurrentDLLang:I

    .line 257
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->mAvailableLangList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 258
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->mUpdatableLangList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 259
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->mWaitDownloadLangList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 260
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->mDownloadedLangList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 261
    const-string v0, "SimeXt9DLManager"

    const-string v1, "LangList cleared"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void
.end method

.method private debugPrintLangList()V
    .locals 3

    .prologue
    .line 279
    const-string v0, "SimeXt9DLManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[debugPrintLangList] Current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->mCurrentDLLang:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / Waiting"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->mWaitDownloadLangList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / downloaded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->mDownloadedLangList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const-string v0, "SimeXt9DLManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[debugPrintLangList] Available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->mAvailableLangList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string v0, "SimeXt9DLManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[debugPrintLangList] Updateable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->mUpdatableLangList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void
.end method


# virtual methods
.method public addWaitList(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 233
    const-string v0, "SimeXt9DLManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addWaitList Id= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->mWaitDownloadLangList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->mAvailableLangList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 236
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->mUpdatableLangList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 238
    invoke-direct {p0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->debugPrintLangList()V

    .line 239
    return-void
.end method

.method public cancelLang(I)Z
    .locals 3
    .parameter "id"

    .prologue
    .line 242
    const-string v0, "SimeXt9DLManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelLang: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->mCurrentDLLang:I

    if-eq p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->mWaitDownloadLangList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->mWaitDownloadLangList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 246
    invoke-direct {p0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->debugPrintLangList()V

    .line 247
    const/4 v0, 0x1

    .line 249
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAvailableLangList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->mAvailableLangList:Ljava/util/List;

    return-object v0
.end method

.method public getDownloadedLangList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->mDownloadedLangList:Ljava/util/List;

    return-object v0
.end method

.method public getDownloadingLang()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->mCurrentDLLang:I

    return v0
.end method

.method public getUpdatableLangList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->mUpdatableLangList:Ljava/util/List;

    return-object v0
.end method

.method public getWaitDownloadLangList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->mWaitDownloadLangList:Ljava/util/List;

    return-object v0
.end method

.method public isListUpdated()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->mListUpdated:Z

    return v0
.end method

.method public setCurrentDL(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 207
    iput p1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->mCurrentDLLang:I

    .line 208
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->mWaitDownloadLangList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 209
    invoke-direct {p0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->debugPrintLangList()V

    .line 210
    return-void
.end method

.method public setLangLists(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, available:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, updatable:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p3, downloaded:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->mAvailableLangList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 192
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->mUpdatableLangList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 193
    iget-object v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->mDownloadedLangList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->mListUpdated:Z

    .line 199
    invoke-direct {p0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->debugPrintLangList()V

    .line 200
    return-void
.end method

.method public updateCompletedLang(IZ)V
    .locals 1
    .parameter "id"
    .parameter "isSucceed"

    .prologue
    .line 265
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->mCurrentDLLang:I

    .line 276
    return-void
.end method
