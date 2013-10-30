.class Lcom/samsung/inputmethod/setting/SimeSelfDefDialog$2;
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
    .line 176
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog$2;->this$0:Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 178
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog$2;->this$0:Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->str:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->access$200(Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, text:Ljava/lang/String;
    const/4 v0, 0x0

    .line 182
    .local v0, isDefined:Z
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->access$300()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 183
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog$2;->this$0:Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;

    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->getInstance(Landroid/content/Context;)Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->isDefined(Ljava/lang/String;)Z

    move-result v0

    .line 185
    :cond_0
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog$2;->this$0:Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->touchPaintLeft:Lcom/samsung/inputmethod/setting/SimeSelfDefView;
    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->access$000(Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;)Lcom/samsung/inputmethod/setting/SimeSelfDefView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->getPointCount()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    .line 188
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->access$100()Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->save()V

    .line 189
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog$2;->this$0:Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->touchPaintLeft:Lcom/samsung/inputmethod/setting/SimeSelfDefView;
    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->access$000(Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;)Lcom/samsung/inputmethod/setting/SimeSelfDefView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->reset()V

    .line 191
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog$2;->this$0:Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->finish()V

    .line 200
    :cond_1
    :goto_0
    return-void

    .line 192
    :cond_2
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog$2;->this$0:Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->touchPaintLeft:Lcom/samsung/inputmethod/setting/SimeSelfDefView;
    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->access$000(Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;)Lcom/samsung/inputmethod/setting/SimeSelfDefView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->getPointCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 194
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog$2;->this$0:Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->showDialog(I)V

    goto :goto_0

    .line 195
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 196
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog$2;->this$0:Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->showDialog(I)V

    goto :goto_0

    .line 197
    :cond_4
    if-eqz v0, :cond_1

    .line 198
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog$2;->this$0:Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->showDialog(I)V

    goto :goto_0
.end method
