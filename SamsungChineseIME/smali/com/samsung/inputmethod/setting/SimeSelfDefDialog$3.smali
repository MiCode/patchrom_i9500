.class Lcom/samsung/inputmethod/setting/SimeSelfDefDialog$3;
.super Ljava/lang/Object;
.source "SimeSelfDefDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog$3;->this$0:Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog$3;->this$0:Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->touchPaintLeft:Lcom/samsung/inputmethod/setting/SimeSelfDefView;
    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->access$000(Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;)Lcom/samsung/inputmethod/setting/SimeSelfDefView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->reset()V

    .line 208
    return-void
.end method
