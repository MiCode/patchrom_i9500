.class Lcom/samsung/inputmethod/dialog/SimeDialogManager$1;
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
    .line 95
    iput-object p1, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager$1;->this$0:Lcom/samsung/inputmethod/dialog/SimeDialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/samsung/inputmethod/dialog/SimeDialogManager$1;->this$0:Lcom/samsung/inputmethod/dialog/SimeDialogManager;

    #getter for: Lcom/samsung/inputmethod/dialog/SimeDialogManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v0}, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->access$000(Lcom/samsung/inputmethod/dialog/SimeDialogManager;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    .line 98
    return-void
.end method
