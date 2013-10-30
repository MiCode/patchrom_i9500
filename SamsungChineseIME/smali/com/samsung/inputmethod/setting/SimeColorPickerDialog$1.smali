.class Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$1;
.super Ljava/lang/Object;
.source "SimeColorPickerDialog.java"

# interfaces
.implements Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$1;->this$0:Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$1;->this$0:Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;

    #getter for: Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;->mListener:Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$OnColorChangedListener;
    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;->access$000(Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;)Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$OnColorChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$OnColorChangedListener;->colorChanged(I)V

    .line 258
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$1;->this$0:Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;->dismiss()V

    .line 259
    return-void
.end method
