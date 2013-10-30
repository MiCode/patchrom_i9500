.class Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$1;
.super Ljava/lang/Object;
.source "SimeLineStyleDialog.java"

# interfaces
.implements Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$OnLineChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$1;->this$0:Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lineChanged(I)V
    .locals 1
    .parameter "line"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$1;->this$0:Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;

    #getter for: Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;->mListener:Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$OnLineChangedListener;
    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;->access$000(Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;)Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$OnLineChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$OnLineChangedListener;->lineChanged(I)V

    .line 223
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$1;->this$0:Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;->dismiss()V

    .line 224
    return-void
.end method
