.class Lcom/android/settings_ex/OwnerInfoSettings$4;
.super Ljava/lang/Object;
.source "OwnerInfoSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/OwnerInfoSettings;->showInputMethod()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/OwnerInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/OwnerInfoSettings;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/settings_ex/OwnerInfoSettings$4;->this$0:Lcom/android/settings_ex/OwnerInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 163
    iget-object v1, p0, Lcom/android/settings_ex/OwnerInfoSettings$4;->this$0:Lcom/android/settings_ex/OwnerInfoSettings;

    invoke-virtual {v1}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/OwnerInfoSettings$4;->this$0:Lcom/android/settings_ex/OwnerInfoSettings;

    invoke-virtual {v1}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/OwnerInfoSettings$4;->this$0:Lcom/android/settings_ex/OwnerInfoSettings;

    invoke-virtual {v1}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 167
    iget-object v1, p0, Lcom/android/settings_ex/OwnerInfoSettings$4;->this$0:Lcom/android/settings_ex/OwnerInfoSettings;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 168
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/settings_ex/OwnerInfoSettings$4;->this$0:Lcom/android/settings_ex/OwnerInfoSettings;

    #getter for: Lcom/android/settings_ex/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings_ex/OwnerInfoSettings;->access$000(Lcom/android/settings_ex/OwnerInfoSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method
