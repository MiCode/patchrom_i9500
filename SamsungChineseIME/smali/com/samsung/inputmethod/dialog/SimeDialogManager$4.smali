.class Lcom/samsung/inputmethod/dialog/SimeDialogManager$4;
.super Ljava/lang/Object;
.source "SimeDialogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 121
    iput-object p1, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager$4;->this$0:Lcom/samsung/inputmethod/dialog/SimeDialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "di"
    .parameter "position"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager$4;->this$0:Lcom/samsung/inputmethod/dialog/SimeDialogManager;

    #getter for: Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mOptionsDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->access$100(Lcom/samsung/inputmethod/dialog/SimeDialogManager;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->hide()V

    .line 125
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 126
    packed-switch p2, :pswitch_data_0

    .line 134
    :goto_0
    return-void

    .line 128
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager$4;->this$0:Lcom/samsung/inputmethod/dialog/SimeDialogManager;

    #getter for: Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v0}, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->access$000(Lcom/samsung/inputmethod/dialog/SimeDialogManager;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->launchSettings()V

    goto :goto_0

    .line 131
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager$4;->this$0:Lcom/samsung/inputmethod/dialog/SimeDialogManager;

    #getter for: Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v0}, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->access$000(Lcom/samsung/inputmethod/dialog/SimeDialogManager;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v0

    invoke-static {v0}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
