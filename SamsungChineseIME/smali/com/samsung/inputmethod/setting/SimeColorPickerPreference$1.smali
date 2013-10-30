.class Lcom/samsung/inputmethod/setting/SimeColorPickerPreference$1;
.super Ljava/lang/Object;
.source "SimeColorPickerPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/setting/SimeColorPickerPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/setting/SimeColorPickerPreference;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/setting/SimeColorPickerPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerPreference$1;->this$0:Lcom/samsung/inputmethod/setting/SimeColorPickerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerPreference$1;->this$0:Lcom/samsung/inputmethod/setting/SimeColorPickerPreference;

    #setter for: Lcom/samsung/inputmethod/setting/SimeColorPickerPreference;->mClickedDialogEntryIndex:I
    invoke-static {v0, p2}, Lcom/samsung/inputmethod/setting/SimeColorPickerPreference;->access$002(Lcom/samsung/inputmethod/setting/SimeColorPickerPreference;I)I

    .line 95
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerPreference$1;->this$0:Lcom/samsung/inputmethod/setting/SimeColorPickerPreference;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/inputmethod/setting/SimeColorPickerPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 96
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 97
    return-void
.end method
