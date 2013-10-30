.class Lcom/samsung/inputmethod/setting/SimeSelfDefActivity$3;
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
    .line 139
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity$3;->this$0:Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 141
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity$3;->this$0:Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->array:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->access$000(Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 142
    sget-object v2, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->s1:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 143
    .local v1, select:I
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity$3;->this$0:Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->arrayDefCode:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->access$100(Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 144
    .local v0, arr:I
    int-to-char v2, v0

    invoke-static {v2}, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->hwDelSelfDefineModel(C)I

    .line 145
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity$3;->this$0:Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->mFileIF:Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;
    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->access$300(Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;)Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;

    move-result-object v2

    int-to-char v3, v0

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->delete(C)Z

    .line 146
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity$3;->this$0:Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->array:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->access$000(Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 147
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity$3;->this$0:Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;

    #getter for: Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->arrayDefCode:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->access$100(Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 148
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity$3;->this$0:Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;

    sget v3, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->mType:I

    const/4 v4, 0x0

    #calls: Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->updateWidget(II)V
    invoke-static {v2, v3, v4}, Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;->access$600(Lcom/samsung/inputmethod/setting/SimeSelfDefActivity;II)V

    .line 150
    .end local v0           #arr:I
    .end local v1           #select:I
    :cond_0
    return-void
.end method
