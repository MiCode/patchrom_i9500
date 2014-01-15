.class Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment$3;
.super Ljava/lang/Object;
.source "BluetoothNameDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->createDialogView(Ljava/lang/String;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment$3;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 218
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment$3;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;

    iget-object v2, v2, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    .line 219
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment$3;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;

    iget-object v2, v2, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 220
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 221
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment$3;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 223
    :cond_0
    if-eqz v0, :cond_1

    .line 224
    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 226
    .local v1, inputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v2

    if-eqz v2, :cond_2

    .line 227
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment$3;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;

    iget-object v2, v2, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 236
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #inputManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    :goto_0
    return-void

    .line 229
    .restart local v0       #context:Landroid/content/Context;
    .restart local v1       #inputManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment$3;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;

    iget-object v2, v2, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0
.end method
