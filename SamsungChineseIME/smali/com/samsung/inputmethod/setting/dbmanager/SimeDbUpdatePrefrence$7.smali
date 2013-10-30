.class Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$7;
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
    .line 360
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$7;->this$0:Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$7;->this$0:Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;

    const/4 v1, -0x1

    #setter for: Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->mDialogId:I
    invoke-static {v0, v1}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->access$502(Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;I)I

    .line 365
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$7;->this$0:Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;

    #calls: Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->dbUpdatePrepare()V
    invoke-static {v0}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->access$000(Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;)V

    .line 367
    return-void
.end method
