.class Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$3;
.super Lcom/touchtype_fluency/util/ProgressListener;
.source "SimeSwiftKeyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->reinstallLanguagePack(Lcom/touchtype_fluency/util/LanguagePack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;)V
    .locals 0
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$3;->this$0:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    invoke-direct {p0}, Lcom/touchtype_fluency/util/ProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ZZZ)V
    .locals 2
    .parameter "success"
    .parameter "cancelled"
    .parameter "digestOK"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$3;->this$0:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    const/4 v1, 0x0

    #calls: Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->countDownloadingLanguagePack(Z)V
    invoke-static {v0, v1}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->access$000(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;Z)V

    .line 320
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$3;->this$0:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    #getter for: Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->downloadingLPCount:I
    invoke-static {v0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->access$100(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;)I

    move-result v0

    if-nez v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$3;->this$0:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    #calls: Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->loadLanguageModel()V
    invoke-static {v0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->access$200(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;)V

    .line 324
    :cond_0
    return-void
.end method
