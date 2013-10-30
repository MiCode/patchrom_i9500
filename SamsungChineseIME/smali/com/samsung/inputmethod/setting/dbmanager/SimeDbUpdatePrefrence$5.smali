.class Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$5;
.super Ljava/lang/Object;
.source "SimeDbUpdatePrefrence.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->showAlertDialog(I)V
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
    .line 327
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$5;->this$0:Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$5;->this$0:Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;

    #getter for: Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mUpdateItem:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;
    invoke-static {v0}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->access$100(Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;)Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateItem;->update()V

    .line 331
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$5;->this$0:Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;

    const/4 v1, 0x1

    const/4 v2, 0x0

    #calls: Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->setItemStatus(ZI)V
    invoke-static {v0, v1, v2}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->access$200(Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;ZI)V

    .line 333
    return-void
.end method
