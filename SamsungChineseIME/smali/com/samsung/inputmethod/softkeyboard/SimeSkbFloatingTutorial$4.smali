.class Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial$4;
.super Landroid/os/Handler;
.source "SimeSkbFloatingTutorial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial$4;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial$4;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->mTutorialDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->access$100(Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial$4;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->mTutorialDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->access$100(Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial$4;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;

    #getter for: Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->mImeService:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->access$200(Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 230
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial$4;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;

    #calls: Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->showTutorialDialog()V
    invoke-static {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->access$300(Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;)V

    .line 237
    :cond_1
    :goto_0
    return-void

    .line 233
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial$4;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial$4;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
