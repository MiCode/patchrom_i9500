.class Lcom/samsung/inputmethod/candidate/SimeCandProcessor$1ContactDisplayListener;
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
    name = "ContactDisplayListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/candidate/SimeCandProcessor;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/candidate/SimeCandProcessor;)V
    .locals 0
    .parameter

    .prologue
    .line 450
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor$1ContactDisplayListener;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 452
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor$1ContactDisplayListener;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandProcessor;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mImeService:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v0}, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->access$200(Lcom/samsung/inputmethod/candidate/SimeCandProcessor;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getDecInfoMgr()Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->commitContactDialogData(I)V

    .line 453
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor$1ContactDisplayListener;->this$0:Lcom/samsung/inputmethod/candidate/SimeCandProcessor;

    #getter for: Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mImeService:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v0}, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->access$200(Lcom/samsung/inputmethod/candidate/SimeCandProcessor;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 454
    return-void
.end method
