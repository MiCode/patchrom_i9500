.class Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog$1;
.super Ljava/lang/Object;
.source "SimeTabEditDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;->showDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog$1;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 55
    invoke-static {}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->getInstance()Lcom/samsung/inputmethod/tabmode/SimeTabDataService;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->saveCheckedData(Z[Z)V

    .line 57
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog$1;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;

    #getter for: Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;->mLoadFromSettings:Z
    invoke-static {v0}, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;->access$000(Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog$1;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;

    #calls: Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;->updateTabBarUI()V
    invoke-static {v0}, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;->access$100(Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;)V

    .line 60
    :cond_0
    return-void
.end method
