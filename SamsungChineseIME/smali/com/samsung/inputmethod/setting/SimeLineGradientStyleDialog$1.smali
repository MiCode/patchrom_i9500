.class Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$1;
.super Ljava/lang/Object;
.source "SimeLineGradientStyleDialog.java"

# interfaces
.implements Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$OnLineGradientChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$1;->this$0:Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lineGradientChanged(III)V
    .locals 1
    .parameter "scolor"
    .parameter "mcolor"
    .parameter "ecolor"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$1;->this$0:Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;

    #getter for: Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->mListener:Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$OnLineGradientChangedListener;
    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->access$000(Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;)Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$OnLineGradientChangedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$OnLineGradientChangedListener;->lineGradientChanged(III)V

    .line 252
    return-void
.end method
