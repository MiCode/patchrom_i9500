.class Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog$2;
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
    .line 63
    iput-object p1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog$2;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabEditDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 66
    invoke-static {}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->getInstance()Lcom/samsung/inputmethod/tabmode/SimeTabDataService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->initCheckedtData()V

    .line 67
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 68
    return-void
.end method
