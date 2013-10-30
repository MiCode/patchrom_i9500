.class Lcom/samsung/inputmethod/comm/SimeToast$1;
.super Ljava/lang/Object;
.source "SimeToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/comm/SimeToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/comm/SimeToast;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/comm/SimeToast;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/samsung/inputmethod/comm/SimeToast$1;->this$0:Lcom/samsung/inputmethod/comm/SimeToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeToast$1;->this$0:Lcom/samsung/inputmethod/comm/SimeToast;

    #getter for: Lcom/samsung/inputmethod/comm/SimeToast;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/samsung/inputmethod/comm/SimeToast;->access$000(Lcom/samsung/inputmethod/comm/SimeToast;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 36
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeToast$1;->this$0:Lcom/samsung/inputmethod/comm/SimeToast;

    #getter for: Lcom/samsung/inputmethod/comm/SimeToast;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/samsung/inputmethod/comm/SimeToast;->access$000(Lcom/samsung/inputmethod/comm/SimeToast;)Landroid/widget/Toast;

    move-result-object v0

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 38
    return-void
.end method
