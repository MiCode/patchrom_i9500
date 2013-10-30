.class Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$2;
.super Ljava/lang/Object;
.source "SimeDbUpdatePrefrence.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$2;->this$0:Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$2;->this$0:Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;

    #getter for: Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mUpdateItem:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;
    invoke-static {v0}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->access$100(Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;)Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;->isUpdating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$2;->this$0:Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;

    #getter for: Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mUpdateItem:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;
    invoke-static {v0}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->access$100(Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;)Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;->cancel()V

    .line 117
    :cond_0
    return-void
.end method
