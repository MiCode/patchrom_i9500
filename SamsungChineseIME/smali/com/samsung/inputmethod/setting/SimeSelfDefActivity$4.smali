.class Lcom/samsung/inputmethod/setting/SimeSelfDefActivity$4;
.super Ljava/lang/Object;
.source "SimeSelfDefActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity$4;->this$0:Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 155
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity$4;->this$0:Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->array:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->access$000(Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 156
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 157
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity$4;->this$0:Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;

    const-class v2, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 158
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->setViewType(I)V

    .line 159
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity$4;->this$0:Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->startActivity(Landroid/content/Intent;)V

    .line 160
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity$4;->this$0:Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->instance:Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;
    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->access$700(Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;)Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->setParent(Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;)V

    .line 161
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity$4;->this$0:Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->comradioButton:Landroid/widget/RadioButton;
    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->access$800(Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    sget-object v1, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->s1:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->setDes(Ljava/lang/String;)V

    .line 165
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
