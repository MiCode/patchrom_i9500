.class Lcom/samsung/inputmethod/setting/SimeInputModeListPreference$1;
.super Ljava/lang/Object;
.source "SimeInputModeListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference$1;->this$0:Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference$1;->this$0:Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;

    #setter for: Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;->mClickedDialogEntryIndex:I
    invoke-static {v0, p2}, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;->access$002(Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;I)I

    .line 240
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference$1;->this$0:Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/inputmethod/setting/SimeInputModeListPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 241
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 242
    return-void
.end method
