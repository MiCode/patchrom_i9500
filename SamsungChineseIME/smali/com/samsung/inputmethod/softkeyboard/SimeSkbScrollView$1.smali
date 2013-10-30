.class Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView$1;
.super Ljava/lang/Object;
.source "SimeSkbScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->updateView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;)V
    .locals 0
    .parameter

    .prologue
    .line 406
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView$1;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 409
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView$1;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mPostPageIdx:I
    invoke-static {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->access$000(Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;)I

    move-result v0

    if-lez v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView$1;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView$1;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mContentHeight:I
    invoke-static {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->access$100(Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView$1;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mPostPageIdx:I
    invoke-static {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->access$000(Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;)I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->scrollTo(II)V

    .line 411
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView$1;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView$1;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mPostPageIdx:I
    invoke-static {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->access$000(Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;)I

    move-result v1

    #setter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mCurPageIdx:I
    invoke-static {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->access$202(Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;I)I

    .line 412
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-POST change----mCurPageIdx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView$1;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mCurPageIdx:I
    invoke-static {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->access$200(Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView$1;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;

    const/4 v1, -0x1

    #setter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->mPostPageIdx:I
    invoke-static {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->access$002(Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;I)I

    .line 416
    :cond_1
    return-void
.end method
