.class public Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateFactory;
.super Ljava/lang/Object;
.source "SimeDbUpdateFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createUpdateInterface(Landroid/content/Context;I)Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface;
    .locals 3
    .parameter "context"
    .parameter "dbid"

    .prologue
    .line 33
    const/4 v1, 0x0

    .line 35
    .local v1, updateObj:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface;
    invoke-static {p1}, Lcom/samsung/inputmethod/dbmanager/SimeDbID;->isHotWord(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    new-instance v0, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordMgr;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordMgr;-><init>(Landroid/content/Context;)V

    .line 37
    .local v0, hotwordMgr:Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordMgr;
    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordMgr;->getHotWordUpdate(I)Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface;

    move-result-object v1

    .line 40
    .end local v0           #hotwordMgr:Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordMgr;
    :cond_0
    return-object v1
.end method
