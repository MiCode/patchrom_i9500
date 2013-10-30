.class Lcom/samsung/inputmethod/setting/SimeWidthPickerPreference$1;
.super Ljava/lang/Object;
.source "SimeWidthPickerPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/setting/SimeWidthPickerPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/setting/SimeWidthPickerPreference;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/setting/SimeWidthPickerPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeWidthPickerPreference$1;->this$0:Lcom/samsung/inputmethod/setting/SimeWidthPickerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeWidthPickerPreference$1;->this$0:Lcom/samsung/inputmethod/setting/SimeWidthPickerPreference;

    #setter for: Lcom/samsung/inputmethod/setting/SimeWidthPickerPreference;->mClickedDialogEntryIndex:I
    invoke-static {v0, p2}, Lcom/samsung/inputmethod/setting/SimeWidthPickerPreference;->access$002(Lcom/samsung/inputmethod/setting/SimeWidthPickerPreference;I)I

    .line 149
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeWidthPickerPreference$1;->this$0:Lcom/samsung/inputmethod/setting/SimeWidthPickerPreference;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/inputmethod/setting/SimeWidthPickerPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 150
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 151
    return-void
.end method
