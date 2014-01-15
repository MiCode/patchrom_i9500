.class public final Lcom/android/settings_ex/bluetooth/DevicePickerActivity;
.super Landroid/app/Activity;
.source "DevicePickerActivity.java"


# static fields
.field private static final BLUETOOTH_START_DIALOG:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DevicePickerActivity"

.field public static canLaunchQuickBtView:Z

.field public static mMyPlacesCalled:Z


# instance fields
.field private mActivityResultDone:Z

.field private mBTEnableDisplayed:Z

.field private mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

.field private mLocalManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mMyPlacesCalled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mActivityResultDone:Z

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, 0x1

    .line 111
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    .line 112
    .local v0, mBluetoothState:I
    iput-boolean v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mActivityResultDone:Z

    .line 113
    if-nez p1, :cond_1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 114
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    if-nez p1, :cond_0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.android.settings_ex.bluetooth.CheckBluetoothLEStateActivity"

    if-ne v0, v2, :cond_2

    .line 57
    sput-boolean v5, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mMyPlacesCalled:Z

    .line 63
    :cond_0
    :goto_0
    const v2, 0x7f04001a

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 65
    invoke-static {p0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mLocalManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    .line 66
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mLocalManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    if-nez v2, :cond_3

    .line 67
    const-string v2, "DevicePickerActivity"

    const-string v3, "Bluetooth is not supported on this device"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_1
    :goto_1
    return-void

    .line 58
    :cond_2
    const-string v2, "com.android.settings_ex.bluetooth.CheckBluetoothStateActivity"

    if-ne v0, v2, :cond_0

    .line 59
    sput-boolean v4, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mMyPlacesCalled:Z

    goto :goto_0

    .line 70
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mLocalManager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    .line 72
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 73
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings_ex/bluetooth/BluetoothEnableActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v1, in:Landroid/content/Intent;
    invoke-virtual {p0, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 76
    iput-boolean v5, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mBTEnableDisplayed:Z

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 136
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->canLaunchQuickBtView:Z

    .line 137
    const-string v0, "DevicePickerActivity"

    const-string v1, "inside onDestroy of DevicePickerActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 125
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 126
    const-string v0, "DevicePickerActivity"

    const-string v1, "inside onPause of DevicePickerActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->canLaunchQuickBtView:Z

    .line 129
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 84
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 86
    sput-boolean v4, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->canLaunchQuickBtView:Z

    .line 88
    const-string v1, "DevicePickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inside onResume with mBTEnableDisplayed= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mBTEnableDisplayed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-boolean v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mBTEnableDisplayed:Z

    if-nez v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mActivityResultDone:Z

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 100
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/bluetooth/BluetoothEnableActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .local v0, in:Landroid/content/Intent;
    invoke-virtual {p0, v0, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 102
    iput-boolean v5, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mActivityResultDone:Z

    .line 104
    iput-boolean v4, p0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mBTEnableDisplayed:Z

    goto :goto_0
.end method
