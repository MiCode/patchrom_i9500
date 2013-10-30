.class Lcom/samsung/inputmethod/setting/SimeSelfDefActivity$2;
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
    .line 129
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity$2;->this$0:Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 131
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 132
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity$2;->this$0:Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;

    const-class v2, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 133
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->setViewType(I)V

    .line 134
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity$2;->this$0:Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->startActivity(Landroid/content/Intent;)V

    .line 135
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity$2;->this$0:Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSelfDefDialog;->setParent(Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;)V

    .line 136
    return-void
.end method
