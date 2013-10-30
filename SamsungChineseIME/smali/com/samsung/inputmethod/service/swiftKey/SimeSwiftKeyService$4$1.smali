.class Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4$1;
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


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4;)V
    .locals 0
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4$1;->this$1:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4;

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
    .line 345
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4$1;->this$1:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4;

    iget-object v0, v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4;->this$0:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    const/4 v1, 0x0

    #calls: Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->countDownloadingLanguagePack(Z)V
    invoke-static {v0, v1}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->access$000(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;Z)V

    .line 346
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4$1;->this$1:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4;

    iget-object v0, v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4;->this$0:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    #getter for: Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->downloadingLPCount:I
    invoke-static {v0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->access$100(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;)I

    move-result v0

    if-nez v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4$1;->this$1:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4;

    iget-object v0, v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$4;->this$0:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    #calls: Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->clearLanguagePackList()V
    invoke-static {v0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->access$400(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;)V

    .line 350
    :cond_0
    return-void
.end method
