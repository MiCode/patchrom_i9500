.class public Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothPermissionActivity"

.field public static mPermissionActivityOn:Z


# instance fields
.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mOkButton:Landroid/widget/Button;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z

.field private mRememberChoice:Landroid/widget/CheckBox;

.field private mRememberChoiceValue:Z

.field private mRememberMapChoice:Landroid/widget/CheckBox;

.field private mRememberMapChoiceValue:Z

.field private mRememberSapChoice:Landroid/widget/CheckBox;

.field private mRememberSapChoiceValue:Z

.field private mReturnClass:Ljava/lang/String;

.field private mReturnPackage:Ljava/lang/String;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mServiceUuid:Landroid/os/ParcelUuid;

.field private mView:Landroid/view/View;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private messageView:Landroid/widget/TextView;

.field private requestType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mPermissionActivityOn:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 66
    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mReturnPackage:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mReturnClass:Ljava/lang/String;

    .line 75
    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mRememberChoiceValue:Z

    .line 78
    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mRememberMapChoiceValue:Z

    .line 81
    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mRememberSapChoiceValue:Z

    .line 83
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity$1;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 114
    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mReceiverRegistered:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->dismissDialog()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mRememberChoiceValue:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mRememberMapChoiceValue:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mRememberSapChoiceValue:Z

    return p1
.end method

.method private createConnectionDialogView()Landroid/view/View;
    .locals 3

    .prologue
    .line 272
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040019

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    .line 273
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    const v1, 0x7f0b004a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->messageView:Landroid/widget/TextView;

    .line 274
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->messageView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->createConnectionDisplayText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    return-object v0
.end method

.method private createConnectionDisplayText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 236
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, mRemoteName:Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_0

    const v2, 0x7f090681

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 239
    :cond_0
    const v2, 0x7f0900d9

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, mMessage1:Ljava/lang/String;
    return-object v0

    .line 236
    .end local v0           #mMessage1:Ljava/lang/String;
    .end local v1           #mRemoteName:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createMapDialogView()Landroid/view/View;
    .locals 3

    .prologue
    .line 297
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04001c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    .line 298
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    const v1, 0x7f0b004a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->messageView:Landroid/widget/TextView;

    .line 299
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->messageView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->createMapDisplayText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    const v1, 0x7f0b004c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mRememberMapChoice:Landroid/widget/CheckBox;

    .line 301
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mRememberMapChoice:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 302
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mRememberMapChoice:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity$3;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity$3;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 311
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    return-object v0
.end method

.method private createMapDisplayText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 254
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, mRemoteName:Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_0

    const v2, 0x7f090681

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 257
    :cond_0
    const v2, 0x7f0900e0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, mMessage1:Ljava/lang/String;
    return-object v0

    .line 254
    .end local v0           #mMessage1:Ljava/lang/String;
    .end local v1           #mRemoteName:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createPhonebookDialogView()Landroid/view/View;
    .locals 3

    .prologue
    .line 279
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040020

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    .line 280
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    const v1, 0x7f0b004a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->messageView:Landroid/widget/TextView;

    .line 281
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->messageView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->createPhonebookDisplayText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    const v1, 0x7f0b0054

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mRememberChoice:Landroid/widget/CheckBox;

    .line 283
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mRememberChoice:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 284
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mRememberChoice:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity$2;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 293
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    return-object v0
.end method

.method private createPhonebookDisplayText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 245
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, mRemoteName:Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_0

    const v2, 0x7f090681

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 248
    :cond_0
    const v2, 0x7f0900db

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, mMessage1:Ljava/lang/String;
    return-object v0

    .line 245
    .end local v0           #mMessage1:Ljava/lang/String;
    .end local v1           #mRemoteName:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createSapDialogView()Landroid/view/View;
    .locals 3

    .prologue
    .line 315
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040023

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    .line 316
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    const v1, 0x7f0b004a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->messageView:Landroid/widget/TextView;

    .line 317
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->messageView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->createSapDisplayText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    const v1, 0x7f0b0059

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mRememberSapChoice:Landroid/widget/CheckBox;

    .line 319
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mRememberSapChoice:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 320
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mRememberSapChoice:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity$4;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity$4;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 329
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    return-object v0
.end method

.method private createSapDisplayText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 263
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, mRemoteName:Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_0

    const v2, 0x7f090681

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 266
    :cond_0
    const v2, 0x7f090d2c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, mMessage1:Ljava/lang/String;
    return-object v0

    .line 263
    .end local v0           #mMessage1:Ljava/lang/String;
    .end local v1           #mRemoteName:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private dismissDialog()V
    .locals 0

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->dismiss()V

    .line 119
    return-void
.end method

.method private onNegative()V
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    .line 360
    const-string v0, "BluetoothPermissionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNegative mRememberChoiceValue: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mRememberChoiceValue:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "mRememberMapChoiceValue: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mRememberMapChoiceValue:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "mRememberSapChoiceValue: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mRememberSapChoiceValue:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->requestType:I

    if-ne v0, v4, :cond_1

    .line 365
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mRememberChoiceValue:Z

    if-eqz v0, :cond_0

    .line 366
    invoke-direct {p0, v4}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->savePhonebookPermissionChoice(I)V

    .line 379
    :cond_0
    :goto_0
    const-string v1, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    const/4 v3, 0x0

    iget v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->requestType:I

    move-object v0, p0

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->sendIntentToReceiver(Ljava/lang/String;ZLjava/lang/String;ZI)V

    .line 382
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 383
    return-void

    .line 368
    :cond_1
    iget v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->requestType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 369
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mRememberMapChoiceValue:Z

    if-eqz v0, :cond_0

    .line 370
    invoke-direct {p0, v4}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->saveMapPermissionChoice(I)V

    goto :goto_0

    .line 372
    :cond_2
    iget v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->requestType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 373
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mRememberSapChoiceValue:Z

    if-eqz v0, :cond_3

    .line 374
    invoke-direct {p0, v4}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->saveSapPermissionChoice(I)V

    .line 376
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mServiceUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1, v2, v2}, Landroid/bluetooth/BluetoothDevice;->authorizeService(Landroid/os/ParcelUuid;ZZ)Z

    .line 377
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private onPositive()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 333
    const-string v0, "BluetoothPermissionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPositive mRememberChoiceValue: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mRememberChoiceValue:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "mRememberMapChoiceValue: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mRememberMapChoiceValue:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "mRememberSapChoiceValue: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mRememberSapChoiceValue:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/4 v4, 0x0

    .line 338
    .local v4, extraValue:Z
    iget v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->requestType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 339
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mRememberChoiceValue:Z

    if-eqz v0, :cond_0

    .line 340
    invoke-direct {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->savePhonebookPermissionChoice(I)V

    .line 341
    iget-boolean v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mRememberChoiceValue:Z

    .line 354
    :cond_0
    :goto_0
    const-string v1, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    const-string v3, "android.bluetooth.device.extra.ALWAYS_ALLOWED"

    iget v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->requestType:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->sendIntentToReceiver(Ljava/lang/String;ZLjava/lang/String;ZI)V

    .line 356
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 357
    return-void

    .line 343
    :cond_1
    iget v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->requestType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 344
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mRememberMapChoiceValue:Z

    if-eqz v0, :cond_0

    .line 345
    invoke-direct {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->saveMapPermissionChoice(I)V

    goto :goto_0

    .line 347
    :cond_2
    iget v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->requestType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 348
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mRememberSapChoiceValue:Z

    if-eqz v0, :cond_3

    .line 349
    invoke-direct {p0, v2}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->saveSapPermissionChoice(I)V

    .line 351
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mServiceUuid:Landroid/os/ParcelUuid;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothDevice;->authorizeService(Landroid/os/ParcelUuid;ZZ)Z

    .line 352
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private saveMapPermissionChoice(I)V
    .locals 6
    .parameter "permissionChoice"

    .prologue
    .line 470
    invoke-static {p0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 471
    .local v0, bluetoothManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;
    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    .line 473
    .local v2, cachedDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 474
    .local v1, cachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;
    if-eqz v1, :cond_0

    .line 475
    invoke-virtual {v1, p1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->setMapPermissionChoice(I)V

    .line 482
    :goto_0
    return-void

    .line 477
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 480
    invoke-virtual {v1, p1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->setMapPermissionChoice(I)V

    goto :goto_0
.end method

.method private savePhonebookPermissionChoice(I)V
    .locals 6
    .parameter "permissionChoice"

    .prologue
    .line 455
    invoke-static {p0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 456
    .local v0, bluetoothManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;
    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    .line 458
    .local v2, cachedDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 459
    .local v1, cachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;
    if-eqz v1, :cond_0

    .line 460
    invoke-virtual {v1, p1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    .line 467
    :goto_0
    return-void

    .line 462
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 465
    invoke-virtual {v1, p1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    goto :goto_0
.end method

.method private saveSapPermissionChoice(I)V
    .locals 6
    .parameter "permissionChoice"

    .prologue
    .line 485
    invoke-static {p0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 486
    .local v0, bluetoothManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;
    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v2

    .line 488
    .local v2, cachedDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 489
    .local v1, cachedDevice:Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;
    if-eqz v1, :cond_0

    .line 490
    invoke-virtual {v1, p1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->setSapPermissionChoice(I)V

    .line 497
    :goto_0
    return-void

    .line 492
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 495
    invoke-virtual {v1, p1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->setSapPermissionChoice(I)V

    goto :goto_0
.end method

.method private sendIntentToReceiver(Ljava/lang/String;ZLjava/lang/String;ZI)V
    .locals 3
    .parameter "intentName"
    .parameter "allowed"
    .parameter "extraName"
    .parameter "extraValue"
    .parameter "requsetType"

    .prologue
    .line 388
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 390
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mReturnPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mReturnClass:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 391
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mReturnPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mReturnClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    :cond_0
    const-string v2, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 398
    if-eqz p3, :cond_1

    .line 399
    invoke-virtual {v0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 401
    :cond_1
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 402
    const-string v1, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    iget v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->requestType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 403
    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 404
    return-void

    .line 394
    :cond_2
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private showConnectionDialog()V
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 186
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f0900d7

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 187
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->createConnectionDialogView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 188
    const v1, 0x7f090047

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 189
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 190
    const v1, 0x7f090048

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 191
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 192
    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mOkButton:Landroid/widget/Button;

    .line 193
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 194
    return-void
.end method

.method private showMapDialog()V
    .locals 3

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 212
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f0900df

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 213
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->createMapDialogView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 214
    const v1, 0x1040013

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 215
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 216
    const v1, 0x1040009

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 217
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 218
    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mOkButton:Landroid/widget/Button;

    .line 219
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 220
    return-void
.end method

.method private showPhonebookDialog()V
    .locals 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 199
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f0900da

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 200
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->createPhonebookDialogView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 201
    const v1, 0x1040013

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 202
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 203
    const v1, 0x1040009

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 204
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 205
    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mOkButton:Landroid/widget/Button;

    .line 206
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 207
    return-void
.end method

.method private showSapDialog()V
    .locals 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 225
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f0900e3

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 226
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->createSapDialogView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 227
    const v1, 0x1040013

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 228
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 229
    const v1, 0x1040009

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 230
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 231
    iget-object v1, p0, Lcom/android/internal/app/AlertActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mOkButton:Landroid/widget/Button;

    .line 232
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 233
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 446
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->onNegative()V

    .line 447
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 448
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v0, 0x0

    .line 407
    packed-switch p2, :pswitch_data_0

    .line 420
    :goto_0
    return-void

    .line 409
    :pswitch_0
    sput-boolean v0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mPermissionActivityOn:Z

    .line 410
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->onPositive()V

    goto :goto_0

    .line 414
    :pswitch_1
    sput-boolean v0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mPermissionActivityOn:Z

    .line 415
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->onNegative()V

    goto :goto_0

    .line 407
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    .line 123
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 125
    const-string v4, "power"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 126
    .local v3, pm:Landroid/os/PowerManager;
    const v4, 0x3000001a

    const-string v5, "BluetoothPermissionActivity"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 128
    const-string v4, "BluetoothPermissionActivity"

    invoke-virtual {v3, v6, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 129
    const/16 v4, 0xa

    const-string v5, "BluetoothPermissionActivity"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 130
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 132
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 133
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 134
    .local v2, i:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 136
    const-string v4, "BluetoothPermissionActivity"

    const-string v5, "Error: this activity may be started only with intent ACTION_CONNECTION_ACCESS_REQUEST"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 181
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 143
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 144
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 147
    :cond_1
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    iput-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 148
    const-string v4, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->requestType:I

    .line 150
    iget v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->requestType:I

    if-eq v4, v7, :cond_2

    .line 152
    const-string v4, "android.bluetooth.device.extra.PACKAGE_NAME"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mReturnPackage:Ljava/lang/String;

    .line 153
    const-string v4, "android.bluetooth.device.extra.CLASS_NAME"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mReturnClass:Ljava/lang/String;

    .line 158
    :goto_1
    iget v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->requestType:I

    if-ne v4, v6, :cond_3

    .line 159
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->showConnectionDialog()V

    .line 172
    :goto_2
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 173
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    const-string v4, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 179
    iput-boolean v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mReceiverRegistered:Z

    .line 180
    sput-boolean v6, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mPermissionActivityOn:Z

    goto :goto_0

    .line 155
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_2
    const-string v4, "android.bluetooth.device.extra.UUID"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mServiceUuid:Landroid/os/ParcelUuid;

    goto :goto_1

    .line 160
    :cond_3
    iget v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->requestType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 161
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->showPhonebookDialog()V

    goto :goto_2

    .line 162
    :cond_4
    iget v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->requestType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    .line 163
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->showMapDialog()V

    goto :goto_2

    .line 164
    :cond_5
    iget v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->requestType:I

    if-ne v4, v7, :cond_6

    .line 165
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->showSapDialog()V

    goto :goto_2

    .line 167
    :cond_6
    const-string v4, "BluetoothPermissionActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error: bad request type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->requestType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 424
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 426
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 434
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 437
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mReceiverRegistered:Z

    if-eqz v0, :cond_3

    .line 438
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 439
    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mReceiverRegistered:Z

    .line 441
    :cond_3
    sput-boolean v1, Lcom/android/settings_ex/bluetooth/BluetoothPermissionActivity;->mPermissionActivityOn:Z

    .line 442
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 451
    const/4 v0, 0x1

    return v0
.end method
