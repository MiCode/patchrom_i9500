.class Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4$2;
.super Lcom/touchtype_fluency/util/ProgressListener;
.source "SimeSwiftKeyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4;->onComplete(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4;

.field final synthetic val$language:Lcom/touchtype_fluency/util/LanguagePack;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4;Lcom/touchtype_fluency/util/LanguagePack;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 358
    iput-object p1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4$2;->this$1:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4;

    iput-object p2, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4$2;->val$language:Lcom/touchtype_fluency/util/LanguagePack;

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
    .line 362
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4$2;->this$1:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4;

    iget-object v0, v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4;->this$0:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    const/4 v1, 0x0

    #calls: Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->countDownloadingLanguagePack(Z)V
    invoke-static {v0, v1}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->access$000(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;Z)V

    .line 363
    if-nez p1, :cond_0

    .line 364
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4$2;->this$1:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4;

    iget-object v0, v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4;->this$0:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    iget-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4$2;->val$language:Lcom/touchtype_fluency/util/LanguagePack;

    #calls: Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->reinstallLanguagePack(Lcom/touchtype_fluency/util/LanguagePack;)V
    invoke-static {v0, v1}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->access$500(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;Lcom/touchtype_fluency/util/LanguagePack;)V

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4$2;->this$1:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4;

    iget-object v0, v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4;->this$0:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    iget-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4$2;->val$language:Lcom/touchtype_fluency/util/LanguagePack;

    #calls: Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->checkDefaultLanguageForSwift(Lcom/touchtype_fluency/util/LanguagePack;)V
    invoke-static {v0, v1}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->access$600(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;Lcom/touchtype_fluency/util/LanguagePack;)V

    .line 368
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4$2;->this$1:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4;

    iget-object v0, v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4;->this$0:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    #getter for: Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->downloadingLPCount:I
    invoke-static {v0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->access$100(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;)I

    move-result v0

    if-nez v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4$2;->this$1:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4;

    iget-object v0, v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4;->this$0:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    #calls: Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->loadLanguageModel()V
    invoke-static {v0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->access$200(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;)V

    .line 370
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4$2;->this$1:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4;

    iget-object v0, v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4;->this$0:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    #calls: Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->enableModelsInTask()V
    invoke-static {v0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->access$700(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;)V

    .line 372
    :cond_1
    return-void
.end method
