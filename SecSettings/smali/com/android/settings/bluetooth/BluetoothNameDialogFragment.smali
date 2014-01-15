.class public final Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;
.super Landroid/app/DialogFragment;
.source "BluetoothNameDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field private static final BLUETOOTH_NAME_MAX_LENGTH_BYTES:I = 0x20

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final KEY_NAME:Ljava/lang/String; = "device_name"

.field private static final KEY_NAME_EDITED:Ljava/lang/String; = "device_name_edited"

.field static final TAG:Ljava/lang/String; = "BluetoothNameDialogFragment"


# instance fields
.field private isDismissed:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mDeviceNameEdited:Z

.field private mDeviceNameUpdated:Z

.field mDeviceNameView:Landroid/widget/EditText;

.field mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

.field private mOkButton:Landroid/widget/Button;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field mTempSsid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 62
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mTempSsid:Ljava/lang/String;

    .line 87
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment$1;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 126
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->setDeviceName(Ljava/lang/String;)V

    return-void
.end method

.method private createDialogView(Ljava/lang/String;)Landroid/view/View;
    .locals 6
    .parameter "deviceName"

    .prologue
    .line 196
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 198
    .local v0, layoutInflater:Landroid/view/LayoutInflater;
    const v2, 0x7f04005d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 199
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0b010b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    .line 209
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 213
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 214
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    new-instance v3, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment$3;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment$3;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 255
    return-object v1
.end method

.method private setDeviceName(Ljava/lang/String;)V
    .locals 3
    .parameter "deviceName"

    .prologue
    .line 185
    sget-boolean v0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothNameDialogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting device name to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->setName(Ljava/lang/String;)V

    .line 187
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8
    .parameter "s"

    .prologue
    const/16 v7, 0x20

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 335
    iget-boolean v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameUpdated:Z

    if-eqz v6, :cond_1

    .line 337
    iput-boolean v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameUpdated:Z

    .line 338
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    const/4 v3, 0x0

    .line 341
    .local v3, spaceNum:I
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    .line 342
    .local v2, length:I
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, deviceName:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 345
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v7, :cond_2

    .line 346
    add-int/lit8 v3, v3, 0x1

    .line 344
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 350
    :cond_3
    iput-boolean v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameEdited:Z

    .line 351
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    if-eqz v6, :cond_0

    .line 352
    if-gt v2, v7, :cond_0

    .line 353
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v7

    if-eqz v7, :cond_4

    if-eq v2, v3, :cond_4

    :goto_2
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    move v4, v5

    goto :goto_2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 362
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    .line 363
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mTempSsid:Ljava/lang/String;

    .line 364
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 269
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 271
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 272
    .local v0, localManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;
    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    .line 273
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 130
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, deviceName:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 133
    invoke-static {}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->getName()Ljava/lang/String;

    move-result-object v0

    .line 134
    const-string v1, "BluetoothNameDialogFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateDialog-deviceName ( NULL ), deviceName ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    if-eqz p1, :cond_1

    .line 139
    const-string v1, "device_name"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    const-string v1, "device_name_edited"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameEdited:Z

    .line 161
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0900b0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->createDialogView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment$2;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment$2;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    .line 178
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 181
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 260
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 261
    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    .line 262
    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    .line 263
    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    .line 264
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 309
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 311
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 315
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 320
    .end local v0           #inputManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->isDismissed:Z

    if-nez v1, :cond_1

    .line 321
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 324
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 278
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 283
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 284
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 286
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 287
    .local v1, inputManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 289
    .end local v1           #inputManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    .line 290
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->isDismissed:Z

    .line 305
    :goto_0
    return-void

    .line 297
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    if-nez v2, :cond_2

    .line 298
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    .line 299
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    iget-boolean v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameEdited:Z

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 301
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 302
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 303
    const-string v2, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 191
    const-string v0, "device_name"

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v0, "device_name_edited"

    iget-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameEdited:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 193
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/16 v3, 0x20

    const/4 v4, 0x0

    .line 368
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, temp:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 370
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 371
    iput-boolean v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameUpdated:Z

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    if-le v2, v3, :cond_0

    .line 373
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mTempSsid:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mTempSsid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    if-gt v2, v3, :cond_2

    .line 374
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mTempSsid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    :goto_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 379
    .local v0, context:Landroid/content/Context;
    const v2, 0x7f090ac7

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 380
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mTempSsid:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 381
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mTempSsid:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 376
    .end local v0           #context:Landroid/content/Context;
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public saveStateOnActivityFinished()V
    .locals 3

    .prologue
    .line 394
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 395
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 396
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameEdited:Z

    if-eqz v1, :cond_0

    .line 398
    const-string v1, "device_name"

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    const-string v1, "device_name_edited"

    iget-boolean v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameEdited:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 402
    :cond_0
    return-void
.end method

.method updateDeviceName()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameUpdated:Z

    .line 329
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameEdited:Z

    .line 330
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothNameDialogFragment;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    :cond_0
    return-void
.end method
