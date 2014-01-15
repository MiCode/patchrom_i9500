.class Lcom/android/settings_ex/personalvibration/SelectPatternDialog$1;
.super Ljava/lang/Object;
.source "SelectPatternDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/personalvibration/SelectPatternDialog;->showRenameDialog(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/personalvibration/SelectPatternDialog;

.field final synthetic val$EditPattern:Landroid/widget/TextView;

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/personalvibration/SelectPatternDialog;Landroid/view/inputmethod/InputMethodManager;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/settings_ex/personalvibration/SelectPatternDialog$1;->this$0:Lcom/android/settings_ex/personalvibration/SelectPatternDialog;

    iput-object p2, p0, Lcom/android/settings_ex/personalvibration/SelectPatternDialog$1;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iput-object p3, p0, Lcom/android/settings_ex/personalvibration/SelectPatternDialog$1;->val$EditPattern:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/settings_ex/personalvibration/SelectPatternDialog$1;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings_ex/personalvibration/SelectPatternDialog$1;->val$EditPattern:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 344
    return-void
.end method
