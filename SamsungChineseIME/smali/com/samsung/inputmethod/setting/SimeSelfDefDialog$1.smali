.class Lcom/samsung/inputmethod/setting/SimeSelfDefDialog$1;
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
    .line 154
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog$1;->this$0:Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog$1;->this$0:Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->touchPaintLeft:Lcom/samsung/inputmethod/setting/SimeSelfDefView;
    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->access$000(Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;)Lcom/samsung/inputmethod/setting/SimeSelfDefView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->getPointCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog$1;->this$0:Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->getDes()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->access$100()Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->save()V

    .line 160
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog$1;->this$0:Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->touchPaintLeft:Lcom/samsung/inputmethod/setting/SimeSelfDefView;
    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->access$000(Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;)Lcom/samsung/inputmethod/setting/SimeSelfDefView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->reset()V

    .line 162
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog$1;->this$0:Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->finish()V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog$1;->this$0:Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->showDialog(I)V

    goto :goto_0
.end method
