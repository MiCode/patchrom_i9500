.class Lcom/samsung/inputmethod/setting/SimeSelfDefActivity$1;
.super Ljava/lang/Object;
.source "SimeSelfDefActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
    .line 111
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity$1;->this$0:Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 114
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity$1;->this$0:Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->array:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->access$000(Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity$1;->this$0:Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->arrayDefCode:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->access$100(Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 116
    .local v0, arr:I
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity$1;->this$0:Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->mFileIF:Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;
    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->access$300(Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;)Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;

    move-result-object v1

    int-to-char v2, v0

    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity$1;->this$0:Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->curItem:Lcom/samsung/inputmethod/setting/SimeSelfDefItem;
    invoke-static {v3}, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->access$200(Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;)Lcom/samsung/inputmethod/setting/SimeSelfDefItem;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->getItemBySefCode(CLcom/samsung/inputmethod/setting/SimeSelfDefItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity$1;->this$0:Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->curItem:Lcom/samsung/inputmethod/setting/SimeSelfDefItem;
    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->access$200(Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;)Lcom/samsung/inputmethod/setting/SimeSelfDefItem;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity$1;->this$0:Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->curPoint:[I
    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->access$400(Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;)[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->getPoint([I)I

    .line 118
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity$1;->this$0:Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->touchPaint:Lcom/samsung/inputmethod/setting/SimeSelfDefView;
    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->access$500(Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;)Lcom/samsung/inputmethod/setting/SimeSelfDefView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity$1;->this$0:Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->curPoint:[I
    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->access$400(Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity$1;->this$0:Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->curItem:Lcom/samsung/inputmethod/setting/SimeSelfDefItem;
    invoke-static {v3}, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->access$200(Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;)Lcom/samsung/inputmethod/setting/SimeSelfDefItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->getCount()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->setPoint([II)V

    .line 119
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity$1;->this$0:Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->touchPaint:Lcom/samsung/inputmethod/setting/SimeSelfDefView;
    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->access$500(Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;)Lcom/samsung/inputmethod/setting/SimeSelfDefView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->postInvalidate()V

    .line 122
    .end local v0           #arr:I
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 126
    return-void
.end method
