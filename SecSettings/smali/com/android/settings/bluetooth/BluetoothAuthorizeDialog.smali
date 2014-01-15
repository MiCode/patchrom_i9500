.class public Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothAuthorizeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog$1;,
        Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothAuthorizeDialog"

.field private static final V:Z = true

.field private static mContext:Landroid/content/Context;

.field private static pm:Landroid/os/PowerManager;

.field private static wl:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private mBrcvr:Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mLocalManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

.field private mName:Ljava/lang/String;

.field private mServiceUuid:Landroid/os/ParcelUuid;

.field private mTemporaryKey:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mTemporaryKey:Z

    .line 231
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Landroid/content/Context;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->quitActivity()V

    return-void
.end method

.method private createView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 8
    .parameter "deviceName"
    .parameter "svc"

    .prologue
    const/4 v7, 0x0

    .line 147
    const-string v4, "BluetoothAuthorizeDialog"

    const-string v5, "createView"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040018

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 151
    .local v3, view:Landroid/view/View;
    const v4, 0x7f0b0047

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 152
    .local v1, msgView:Landroid/widget/TextView;
    const v4, 0x7f090d23

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v7

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-boolean v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mTemporaryKey:Z

    if-eqz v4, :cond_0

    .line 155
    const v4, 0x7f0b0048

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 156
    .local v0, checkbox:Landroid/widget/CheckBox;
    const v4, 0x7f0b0049

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 158
    .local v2, textview:Landroid/widget/TextView;
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 159
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 162
    .end local v0           #checkbox:Landroid/widget/CheckBox;
    .end local v2           #textview:Landroid/widget/TextView;
    :cond_0
    return-object v3
.end method

.method private getServiceName(Landroid/os/ParcelUuid;)Ljava/lang/String;
    .locals 2
    .parameter "uuid"

    .prologue
    const v1, 0x7f090d28

    .line 221
    invoke-static {p1}, Landroid/bluetooth/BluetoothUuid;->isPbap(Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f090d2a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 228
    :goto_0
    return-object v0

    .line 222
    :cond_0
    invoke-static {p1}, Landroid/bluetooth/BluetoothUuid;->isOpp(Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f090d29

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 223
    :cond_1
    invoke-static {p1}, Landroid/bluetooth/BluetoothUuid;->isFtp(Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f090d27

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 224
    :cond_2
    invoke-static {p1}, Landroid/bluetooth/BluetoothUuid;->isMap(Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 225
    :cond_3
    invoke-static {p1}, Landroid/bluetooth/BluetoothUuid;->isMns(Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 226
    :cond_4
    invoke-static {p1}, Landroid/bluetooth/BluetoothUuid;->isMse(Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 228
    :cond_5
    const v0, 0x7f090d2d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isAutoReply()Z
    .locals 5

    .prologue
    .line 167
    iget-boolean v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mTemporaryKey:Z

    if-eqz v2, :cond_0

    .line 168
    const/4 v1, 0x0

    .line 172
    :goto_0
    return v1

    .line 169
    :cond_0
    const v2, 0x7f0b0048

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 170
    .local v0, checkbox:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    .line 171
    .local v1, isChecked:Z
    const-string v2, "BluetoothAuthorizeDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isChecked ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onAuthorize()V
    .locals 4

    .prologue
    .line 176
    const-string v0, "BluetoothAuthorizeDialog"

    const-string v1, "onAuthorize"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mServiceUuid:Landroid/os/ParcelUuid;

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->isAutoReply()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothDevice;->authorizeService(Landroid/os/ParcelUuid;ZZ)Z

    .line 178
    return-void
.end method

.method private onDecline()V
    .locals 4

    .prologue
    .line 181
    const-string v0, "BluetoothAuthorizeDialog"

    const-string v1, "onDecline"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mServiceUuid:Landroid/os/ParcelUuid;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->isAutoReply()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothDevice;->authorizeService(Landroid/os/ParcelUuid;ZZ)Z

    .line 183
    return-void
.end method

.method private quitActivity()V
    .locals 2

    .prologue
    .line 213
    sget-object v0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    sget-object v0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 215
    const-string v0, "BluetoothAuthorizeDialog"

    const-string v1, "Wake Lock released"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 218
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 186
    const-string v0, "BluetoothAuthorizeDialog"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    packed-switch p2, :pswitch_data_0

    .line 204
    :goto_0
    return-void

    .line 189
    :pswitch_0
    sget-object v0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    sget-object v0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 191
    const-string v0, "BluetoothAuthorizeDialog"

    const-string v1, "Wake Lock released"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->onAuthorize()V

    goto :goto_0

    .line 197
    :pswitch_1
    sget-object v0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    sget-object v0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 199
    const-string v0, "BluetoothAuthorizeDialog"

    const-string v1, "Wake Lock released"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->onDecline()V

    goto :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const-string v7, "BluetoothAuthorizeDialog"

    const-string v8, "onCreate"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 96
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.bluetooth.device.action.ACTION_AUTHORIZE_REQUEST"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 98
    const-string v7, "BluetoothAuthorizeDialog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCreate: Unknown intent "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    const-string v7, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    iput-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 104
    const-string v7, "android.bluetooth.device.extra.UUID"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mServiceUuid:Landroid/os/ParcelUuid;

    .line 106
    new-instance v7, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog$1;)V

    iput-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mBrcvr:Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;

    .line 108
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 109
    .local v1, intFltr:Landroid/content/IntentFilter;
    const-string v7, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    const-string v7, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mBrcvr:Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;

    invoke-virtual {v7, v8, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 114
    invoke-static {p0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mLocalManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    .line 115
    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mLocalManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    invoke-virtual {v7}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getContext()Landroid/content/Context;

    move-result-object v7

    sput-object v7, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mContext:Landroid/content/Context;

    .line 116
    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mLocalManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    invoke-virtual {v7}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7, v8}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mName:Ljava/lang/String;

    .line 118
    sget-object v7, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mContext:Landroid/content/Context;

    const-string v8, "power"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 119
    .local v5, pm:Landroid/os/PowerManager;
    const v7, 0x3000000a

    const-string v8, "BluetoothAuthorizeDialog"

    invoke-virtual {v5, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    sput-object v7, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->wl:Landroid/os/PowerManager$WakeLock;

    .line 123
    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mServiceUuid:Landroid/os/ParcelUuid;

    invoke-direct {p0, v7}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->getServiceName(Landroid/os/ParcelUuid;)Ljava/lang/String;

    move-result-object v6

    .line 127
    .local v6, svc:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 128
    .local v4, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v7, 0x108009b

    iput v7, v4, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 129
    const v7, 0x7f090d22

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mName:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 130
    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mName:Ljava/lang/String;

    invoke-direct {p0, v7, v6}, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->createView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    iput-object v7, v4, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 132
    const v7, 0x7f090d2e

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 133
    iput-object p0, v4, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 134
    const v7, 0x7f090d2f

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 135
    iput-object p0, v4, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 137
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 139
    invoke-virtual {v5}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    .line 140
    .local v3, isScreenOn:Z
    if-nez v3, :cond_0

    .line 141
    sget-object v7, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 142
    const-string v7, "BluetoothAuthorizeDialog"

    const-string v8, "Wake Lock acquired"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 207
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog;->mBrcvr:Lcom/android/settings_ex/bluetooth/BluetoothAuthorizeDialog$ListenForPairingCancel;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 208
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 209
    return-void
.end method
