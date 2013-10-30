.class Lcom/samsung/inputmethod/candidate/SimeCandProcessor$1UdbDelOkListener;
.super Ljava/lang/Object;
.source "SimeCandProcessor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->processLongTouchCommonCand(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UdbDelOkListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/candidate/SimeCandProcessor;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/candidate/SimeCandProcessor;)V
    .locals 0
    .parameter

    .prologue
    .line 436
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor$1UdbDelOkListener;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 438
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor$1UdbDelOkListener;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandProcessor;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mDecMgrInfo:Lcom/samsung/inputmethod/decoder/SimeDecManager;
    invoke-static {v0}, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->access$100(Lcom/samsung/inputmethod/candidate/SimeCandProcessor;)Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor$1UdbDelOkListener;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandProcessor;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mLongPressCandId:I
    invoke-static {v1}, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->access$000(Lcom/samsung/inputmethod/candidate/SimeCandProcessor;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->delUdbPhrase(I)Z

    .line 439
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor$1UdbDelOkListener;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandProcessor;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mImeService:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v0}, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->access$200(Lcom/samsung/inputmethod/candidate/SimeCandProcessor;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 440
    return-void
.end method
