.class Lcom/samsung/inputmethod/dialog/SimeDialogManager$3;
.super Ljava/lang/Object;
.source "SimeDialogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/dialog/SimeDialogManager;->showOptionsMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/dialog/SimeDialogManager;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/dialog/SimeDialogManager;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager$3;->this$0:Lcom/samsung/inputmethod/dialog/SimeDialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 108
    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 109
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager$3;->this$0:Lcom/samsung/inputmethod/dialog/SimeDialogManager;

    #getter for: Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v0}, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->access$000(Lcom/samsung/inputmethod/dialog/SimeDialogManager;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/inputmethod/SamsungIME;->requestHideSelf(I)V

    .line 114
    :cond_1
    return v2
.end method
