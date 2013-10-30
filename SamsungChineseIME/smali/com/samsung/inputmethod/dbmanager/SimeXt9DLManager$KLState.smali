.class Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;
.super Ljava/lang/Object;
.source "SimeXt9DLManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KLState"
.end annotation


# static fields
.field public static final HOTWORDS:I = 0x3

.field public static final HOTWORDS_BACKGROUND:I = 0x4

.field public static final LANGUAGE:I = 0x1

.field public static final LANGUAGE_BACKGROUND:I = 0x2

.field public static final LAST:I = 0x5

.field public static final NONE:I


# instance fields
.field private klState:I

.field final synthetic this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;


# direct methods
.method private constructor <init>(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)V
    .locals 0
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 285
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;-><init>(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)V

    return-void
.end method

.method private getString(I)Ljava/lang/String;
    .locals 1
    .parameter "state"

    .prologue
    .line 324
    packed-switch p1, :pswitch_data_0

    .line 336
    const-string v0, "STATE ERROR!!"

    :goto_0
    return-object v0

    .line 326
    :pswitch_0
    const-string v0, "STATE(NONE)"

    goto :goto_0

    .line 328
    :pswitch_1
    const-string v0, "STATE(LANGUAGE)"

    goto :goto_0

    .line 330
    :pswitch_2
    const-string v0, "STATE(LANGUAGE_BACKGROUND)"

    goto :goto_0

    .line 332
    :pswitch_3
    const-string v0, "STATE(HOTWORDS)"

    goto :goto_0

    .line 334
    :pswitch_4
    const-string v0, "STATE(HOTWORDS_BACKGROUND)"

    goto :goto_0

    .line 324
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public get()I
    .locals 1

    .prologue
    .line 316
    iget v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->klState:I

    return v0
.end method

.method public getStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->klState:I

    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public set(I)V
    .locals 6
    .parameter "newState"

    .prologue
    const/4 v5, 0x0

    .line 296
    const-string v2, "SimeXt9DLManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / current : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->getStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    if-ltz p1, :cond_0

    const/4 v2, 0x5

    if-ge p1, v2, :cond_0

    .line 299
    iput p1, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->klState:I

    .line 301
    :cond_0
    if-nez p1, :cond_2

    .line 302
    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    #setter for: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mConfig:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$KLDLMConfiguration;
    invoke-static {v2, v5}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->access$902(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$KLDLMConfiguration;)Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$KLDLMConfiguration;

    .line 303
    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    #setter for: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLanguageListener:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$LanguageListListener;
    invoke-static {v2, v5}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->access$402(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$LanguageListListener;)Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManagerInterface$LanguageListListener;

    .line 304
    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    const/4 v3, 0x0

    #setter for: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mIsHotwords:Z
    invoke-static {v2, v3}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->access$1002(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;Z)Z

    .line 306
    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    #getter for: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mLangList:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;
    invoke-static {v2}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->access$300(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;

    move-result-object v2

    #calls: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->clearLangList()V
    invoke-static {v2}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;->access$1100(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLLangList;)V

    .line 308
    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    #getter for: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mDownloadCBs:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->access$1200(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;

    .line 309
    .local v0, cb:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;
    invoke-virtual {v0}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;->unregister()V

    goto :goto_0

    .line 311
    .end local v0           #cb:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLDownloadCB;
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager$KLState;->this$0:Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;

    #getter for: Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->mDownloadCBs:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;->access$1200(Lcom/samsung/inputmethod/dbmanager/SimeXt9DLManager;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 313
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method
