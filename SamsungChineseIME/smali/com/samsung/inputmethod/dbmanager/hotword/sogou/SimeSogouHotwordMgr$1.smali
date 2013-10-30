.class Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr$1;
.super Ljava/lang/Object;
.source "SimeSogouHotwordMgr.java"

# interfaces
.implements Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface$SimeDownloadNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->update(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;)V
    .locals 0
    .parameter

    .prologue
    .line 448
    iput-object p1, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr$1;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleDownloadEvent(ILjava/lang/Object;)Z
    .locals 4
    .parameter "msgId"
    .parameter "obj"

    .prologue
    .line 452
    move v0, p1

    .line 454
    .local v0, convertMsgId:I
    packed-switch p1, :pswitch_data_0

    .line 472
    :goto_0
    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr$1;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;

    #calls: Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->handleDownloadCallBack(ILjava/lang/Object;)Z
    invoke-static {v2, v0, p2}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->access$400(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;ILjava/lang/Object;)Z

    move-result v2

    return v2

    .line 456
    :pswitch_0
    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr$1;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;

    #calls: Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->getDownloadHotWords()Ljava/util/List;
    invoke-static {v2}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->access$000(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;)Ljava/util/List;

    move-result-object v1

    .line 457
    .local v1, updateWords:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/dbmanager/hotword/SimePhraseInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 458
    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr$1;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;

    #calls: Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->removeTempFile()V
    invoke-static {v2}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->access$100(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;)V

    .line 459
    const/4 v0, 0x7

    goto :goto_0

    .line 461
    :cond_0
    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr$1;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;

    #calls: Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->replaceXmlFile()V
    invoke-static {v2}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->access$200(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;)V

    .line 464
    iget-object v2, p0, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr$1;->this$0:Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;

    const-string v3, "zh_CN"

    #calls: Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->convertXmlToEngin(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;->access$300(Lcom/samsung/inputmethod/dbmanager/hotword/sogou/SimeSogouHotwordMgr;Ljava/lang/String;)V

    .line 465
    const/4 v0, 0x1

    .line 467
    goto :goto_0

    .line 454
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
