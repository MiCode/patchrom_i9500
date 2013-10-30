.class Lcom/samsung/inputmethod/SimeOCR$1;
.super Landroid/os/Handler;
.source "SimeOCR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/SimeOCR;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/SimeOCR;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/SimeOCR;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/samsung/inputmethod/SimeOCR$1;->this$0:Lcom/samsung/inputmethod/SimeOCR;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/16 v6, 0x25

    const/4 v5, 0x0

    .line 130
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 166
    :goto_0
    return-void

    .line 132
    :pswitch_0
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeOCR$1;->this$0:Lcom/samsung/inputmethod/SimeOCR;

    #getter for: Lcom/samsung/inputmethod/SimeOCR;->mCountOfTriedInputOCR:I
    invoke-static {v3}, Lcom/samsung/inputmethod/SimeOCR;->access$000(Lcom/samsung/inputmethod/SimeOCR;)I

    move-result v3

    const/16 v4, 0x14

    if-lt v3, v4, :cond_0

    .line 133
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeOCR$1;->this$0:Lcom/samsung/inputmethod/SimeOCR;

    invoke-virtual {v3, v5}, Lcom/samsung/inputmethod/SimeOCR;->setGetOcrString(Z)V

    .line 134
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeOCR$1;->this$0:Lcom/samsung/inputmethod/SimeOCR;

    #setter for: Lcom/samsung/inputmethod/SimeOCR;->mCountOfTriedInputOCR:I
    invoke-static {v3, v5}, Lcom/samsung/inputmethod/SimeOCR;->access$002(Lcom/samsung/inputmethod/SimeOCR;I)I

    goto :goto_0

    .line 138
    :cond_0
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeOCR$1;->this$0:Lcom/samsung/inputmethod/SimeOCR;

    #getter for: Lcom/samsung/inputmethod/SimeOCR;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v3}, Lcom/samsung/inputmethod/SimeOCR;->access$100(Lcom/samsung/inputmethod/SimeOCR;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 139
    .local v1, info:Landroid/view/inputmethod/EditorInfo;
    if-eqz v1, :cond_1

    const-string v3, "com.sec.android.app.ocr"

    iget-object v4, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 140
    invoke-static {}, Lcom/samsung/inputmethod/SimeOCR;->access$200()Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 141
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeOCR$1;->this$0:Lcom/samsung/inputmethod/SimeOCR;

    invoke-static {v3}, Lcom/samsung/inputmethod/SimeOCR;->access$008(Lcom/samsung/inputmethod/SimeOCR;)I

    goto :goto_0

    .line 145
    :cond_1
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeOCR$1;->this$0:Lcom/samsung/inputmethod/SimeOCR;

    #getter for: Lcom/samsung/inputmethod/SimeOCR;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v3}, Lcom/samsung/inputmethod/SimeOCR;->access$100(Lcom/samsung/inputmethod/SimeOCR;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 146
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/samsung/inputmethod/SimeOCR$1;->this$0:Lcom/samsung/inputmethod/SimeOCR;

    iget-object v3, v3, Lcom/samsung/inputmethod/SimeOCR;->mStringfromOcr:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/inputmethod/SimeOCR$1;->this$0:Lcom/samsung/inputmethod/SimeOCR;

    #getter for: Lcom/samsung/inputmethod/SimeOCR;->isGetOcrString:Z
    invoke-static {v3}, Lcom/samsung/inputmethod/SimeOCR;->access$300(Lcom/samsung/inputmethod/SimeOCR;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 147
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeOCR$1;->this$0:Lcom/samsung/inputmethod/SimeOCR;

    #getter for: Lcom/samsung/inputmethod/SimeOCR;->isSelectedText:Z
    invoke-static {v3}, Lcom/samsung/inputmethod/SimeOCR;->access$400(Lcom/samsung/inputmethod/SimeOCR;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/inputmethod/SimeOCR$1;->this$0:Lcom/samsung/inputmethod/SimeOCR;

    #getter for: Lcom/samsung/inputmethod/SimeOCR;->selectedText:Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/samsung/inputmethod/SimeOCR;->access$500(Lcom/samsung/inputmethod/SimeOCR;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/inputmethod/SimeOCR$1;->this$0:Lcom/samsung/inputmethod/SimeOCR;

    #getter for: Lcom/samsung/inputmethod/SimeOCR;->selectedText:Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/samsung/inputmethod/SimeOCR;->access$500(Lcom/samsung/inputmethod/SimeOCR;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 148
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeOCR$1;->this$0:Lcom/samsung/inputmethod/SimeOCR;

    #getter for: Lcom/samsung/inputmethod/SimeOCR;->selectedText:Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/samsung/inputmethod/SimeOCR;->access$500(Lcom/samsung/inputmethod/SimeOCR;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {v0, v3, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 149
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeOCR$1;->this$0:Lcom/samsung/inputmethod/SimeOCR;

    #setter for: Lcom/samsung/inputmethod/SimeOCR;->isSelectedText:Z
    invoke-static {v3, v5}, Lcom/samsung/inputmethod/SimeOCR;->access$402(Lcom/samsung/inputmethod/SimeOCR;Z)Z

    .line 151
    :cond_2
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeOCR$1;->this$0:Lcom/samsung/inputmethod/SimeOCR;

    iget-object v3, v3, Lcom/samsung/inputmethod/SimeOCR;->mStringfromOcr:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 154
    :cond_3
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeOCR$1;->this$0:Lcom/samsung/inputmethod/SimeOCR;

    iget-object v3, v3, Lcom/samsung/inputmethod/SimeOCR;->mStringfromOcr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-interface {v0, v3, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 155
    .local v2, textBeforeCursor:Ljava/lang/CharSequence;
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/inputmethod/SimeOCR$1;->this$0:Lcom/samsung/inputmethod/SimeOCR;

    iget-object v3, v3, Lcom/samsung/inputmethod/SimeOCR;->mStringfromOcr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeOCR$1;->this$0:Lcom/samsung/inputmethod/SimeOCR;

    #getter for: Lcom/samsung/inputmethod/SimeOCR;->mIsDisableLoopOfOcr:Z
    invoke-static {v3}, Lcom/samsung/inputmethod/SimeOCR;->access$600(Lcom/samsung/inputmethod/SimeOCR;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 157
    invoke-static {}, Lcom/samsung/inputmethod/SimeOCR;->access$200()Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 158
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeOCR$1;->this$0:Lcom/samsung/inputmethod/SimeOCR;

    invoke-static {v3}, Lcom/samsung/inputmethod/SimeOCR;->access$008(Lcom/samsung/inputmethod/SimeOCR;)I

    goto/16 :goto_0

    .line 160
    :cond_5
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 161
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeOCR$1;->this$0:Lcom/samsung/inputmethod/SimeOCR;

    invoke-virtual {v3, v5}, Lcom/samsung/inputmethod/SimeOCR;->setGetOcrString(Z)V

    .line 162
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeOCR$1;->this$0:Lcom/samsung/inputmethod/SimeOCR;

    #setter for: Lcom/samsung/inputmethod/SimeOCR;->mCountOfTriedInputOCR:I
    invoke-static {v3, v5}, Lcom/samsung/inputmethod/SimeOCR;->access$002(Lcom/samsung/inputmethod/SimeOCR;I)I

    goto/16 :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_0
    .end packed-switch
.end method
