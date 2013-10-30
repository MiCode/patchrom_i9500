.class Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView$1;
.super Landroid/os/Handler;
.source "SimeHWFullscreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView$1;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/16 v1, 0x10

    const/4 v2, 0x1

    .line 165
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 226
    :goto_0
    return-void

    .line 169
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView$1;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;

    iget-object v0, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->mService:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getWindow()Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 172
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView$1;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 180
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView$1;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->clear()V

    .line 181
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView$1;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;

    #setter for: Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->isLongPressed:Z
    invoke-static {v0, v2}, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->access$002(Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;Z)Z

    .line 183
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView$1;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;

    iget-object v0, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->mService:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getWindow()Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 186
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView$1;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 191
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView$1;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;

    iget-object v0, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->evDown:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 192
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView$1;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;

    iget-object v1, v1, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->evDown:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView$1;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;

    #getter for: Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->isLongPressed:Z
    invoke-static {v0}, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->access$000(Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    const/4 v0, 0x5

    invoke-static {}, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->access$100()I

    move-result v1

    add-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 200
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView$1;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 204
    :pswitch_3
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView$1;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 209
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView$1;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;

    iget-object v0, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->evUp:Landroid/view/MotionEvent;

    if-eqz v0, :cond_2

    .line 210
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView$1;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;

    iget-object v1, v1, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->evUp:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 215
    :cond_2
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView$1;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 220
    :pswitch_5
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView$1;->this$0:Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;

    iget-object v0, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->mService:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getWindow()Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method
