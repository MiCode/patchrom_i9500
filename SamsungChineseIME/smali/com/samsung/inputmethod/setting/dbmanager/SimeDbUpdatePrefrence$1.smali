.class Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$1;
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
    .line 104
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$1;->this$0:Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence$1;->this$0:Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;

    #calls: Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->dbUpdatePrepare()V
    invoke-static {v0}, Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;->access$000(Lcom/samsung/inputmethod/setting/dbmanager/SimeDbUpdatePrefrence;)V

    .line 109
    return-void
.end method
