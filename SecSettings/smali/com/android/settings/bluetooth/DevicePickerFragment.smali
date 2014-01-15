.class public final Lcom/android/settings_ex/bluetooth/DevicePickerFragment;
.super Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;
.source "DevicePickerFragment.java"


# static fields
.field private static final MENU_ID_SCAN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DevicePickerFragment"

.field private static mLocalAdapterName:Ljava/lang/String;

.field private static mSelected:Landroid/bluetooth/BluetoothDevice;


# instance fields
.field private mCallFromHeadset:Z

.field private mDeviceName:Landroid/preference/Preference;

.field private mFilterType:I

.field private mLaunchClass:Ljava/lang/String;

.field private mLaunchPackage:Ljava/lang/String;

.field private mNeedAuth:Z

.field private mNoDeviceFoundPreference:Landroid/preference/Preference;

.field private mNoDevicesCategory:Landroid/preference/PreferenceGroup;

.field private mScan:Landroid/view/MenuItem;

.field private mStartScanOnResume:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mLocalAdapterName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;-><init>()V

    return-void
.end method

.method private sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .parameter "device"

    .prologue
    .line 389
    sget-boolean v1, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mMyPlacesCalled:Z

    if-eqz v1, :cond_0

    .line 391
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 392
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "DeviceName"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    const-string v1, "MacAddress"

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 403
    :goto_0
    return-void

    .line 396
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.action.DEVICE_SELECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 397
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 398
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 399
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private updateOptionsMenu()V
    .locals 4

    .prologue
    .line 246
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    if-nez v2, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 253
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 254
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 255
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    .line 256
    .local v1, isDiscovering:Z
    if-eqz v1, :cond_2

    const v0, 0x7f0200d7

    .line 257
    .local v0, iconId:I
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 256
    .end local v0           #iconId:I
    :cond_2
    const v0, 0x7f0200d5

    goto :goto_1

    .line 259
    .end local v1           #isDiscovering:Z
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 260
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method addPreferencesForActivity()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 82
    sget-boolean v2, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mMyPlacesCalled:Z

    if-eqz v2, :cond_2

    .line 84
    const v2, 0x7f07002b

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 119
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 120
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mNeedAuth:Z

    .line 123
    sget-boolean v2, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mMyPlacesCalled:Z

    if-eqz v2, :cond_7

    .line 124
    const/16 v2, 0x8

    iput v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mFilterType:I

    .line 129
    :goto_1
    iget v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mFilterType:I

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->setFilter(I)V

    .line 132
    iget v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mFilterType:I

    if-eq v2, v7, :cond_0

    iget v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mFilterType:I

    if-ne v2, v8, :cond_8

    .line 134
    :cond_0
    iput-boolean v6, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mCallFromHeadset:Z

    .line 140
    :goto_2
    const-string v2, "android.bluetooth.devicepicker.extra.LAUNCH_PACKAGE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mLaunchPackage:Ljava/lang/String;

    .line 141
    const-string v2, "android.bluetooth.devicepicker.extra.DEVICE_PICKER_LAUNCH_CLASS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mLaunchClass:Ljava/lang/String;

    .line 143
    invoke-virtual {p0, v6}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 146
    const-string v2, "device_policy"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 148
    .local v1, mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v1, v9}, Landroid/app/admin/DevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v2

    if-nez v2, :cond_9

    .line 149
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f090d38

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 150
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    .line 159
    :cond_1
    :goto_3
    return-void

    .line 87
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #mDPM:Landroid/app/admin/DevicePolicyManager;
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 88
    const v2, 0x7f07002a

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    goto :goto_0

    .line 90
    :cond_3
    const v2, 0x7f07002c

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 92
    const-string v2, "my_device_name"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mDeviceName:Landroid/preference/Preference;

    .line 95
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 96
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mDeviceName:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "device_name"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "device_name"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->setName(Ljava/lang/String;)V

    .line 109
    :goto_4
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 110
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mDeviceName:Landroid/preference/Preference;

    const v3, 0x7f020149

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setIcon(I)V

    .line 114
    :goto_5
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mDeviceName:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 115
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mDeviceName:Landroid/preference/Preference;

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setSelectable(Z)V

    goto/16 :goto_0

    .line 100
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v2}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mLocalAdapterName:Ljava/lang/String;

    .line 101
    sget-object v2, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mLocalAdapterName:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 102
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mDeviceName:Landroid/preference/Preference;

    const-string v3, "ro.product.model"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 103
    const-string v2, "DevicePickerFragment"

    const-string v3, "addPreferencesForActivity- mLocalAdapterName (NULL), ro.product.model"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 105
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mDeviceName:Landroid/preference/Preference;

    sget-object v3, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mLocalAdapterName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 112
    :cond_6
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mDeviceName:Landroid/preference/Preference;

    const v3, 0x7f020156

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setIcon(I)V

    goto :goto_5

    .line 126
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_7
    const-string v2, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mFilterType:I

    goto/16 :goto_1

    .line 136
    :cond_8
    iput-boolean v5, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mCallFromHeadset:Z

    goto/16 :goto_2

    .line 152
    .restart local v1       #mDPM:Landroid/app/admin/DevicePolicyManager;
    :cond_9
    invoke-virtual {v1, v9}, Landroid/app/admin/DevicePolicyManager;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v2

    if-ne v2, v6, :cond_1

    iget v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mFilterType:I

    if-eq v2, v7, :cond_1

    iget v2, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mFilterType:I

    if-eq v2, v8, :cond_1

    .line 154
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f090d39

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 155
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    goto/16 :goto_3
.end method

.method public onBluetoothStateChanged(I)V
    .locals 2
    .parameter "bluetoothState"

    .prologue
    .line 315
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onBluetoothStateChanged(I)V

    .line 317
    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 200
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 201
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->updateOptionsMenu()V

    .line 202
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const v4, 0x7f0900cd

    const/16 v2, 0xc

    const/4 v3, 0x1

    .line 163
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 164
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 165
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 183
    :goto_0
    iput-boolean v3, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    .line 185
    return-void

    .line 169
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 170
    sget-boolean v1, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mMyPlacesCalled:Z

    if-eqz v1, :cond_1

    .line 171
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0901f4

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 174
    :goto_1
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 175
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_0

    .line 173
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 206
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 207
    const-string v3, "DevicePickerFragment"

    const-string v4, "onCreateOptionsMenu :: do not creat option menu on Tablet!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_1

    move v0, v3

    .line 212
    .local v0, bluetoothIsEnabled:Z
    :goto_1
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    .line 214
    .local v1, isDiscovering:Z
    if-eqz v1, :cond_2

    const v2, 0x7f0906da

    .line 216
    .local v2, textId:I
    :goto_2
    invoke-interface {p1, v4, v3, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mScan:Landroid/view/MenuItem;

    .line 218
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->updateOptionsMenu()V

    goto :goto_0

    .end local v0           #bluetoothIsEnabled:Z
    .end local v1           #isDiscovering:Z
    .end local v2           #textId:I
    :cond_1
    move v0, v4

    .line 211
    goto :goto_1

    .line 214
    .restart local v0       #bluetoothIsEnabled:Z
    .restart local v1       #isDiscovering:Z
    :cond_2
    const v2, 0x7f0900b4

    goto :goto_2
.end method

.method public onDeviceBondStateChanged(Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;I)V
    .locals 2
    .parameter "cachedDevice"
    .parameter "bondState"

    .prologue
    .line 300
    const/16 v1, 0xc

    if-ne p2, v1, :cond_0

    .line 301
    invoke-virtual {p1}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 302
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    sget-boolean v1, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mMyPlacesCalled:Z

    if-nez v1, :cond_0

    .line 304
    iget-boolean v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mCallFromHeadset:Z

    if-nez v1, :cond_0

    .line 305
    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    .line 306
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    .line 311
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V
    .locals 2
    .parameter "btPreference"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 272
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothPreferences;->persistSelectedDeviceInPicker(Landroid/content/Context;Ljava/lang/String;)V

    .line 275
    sget-boolean v0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mMyPlacesCalled:Z

    if-eqz v0, :cond_1

    .line 276
    invoke-virtual {p1}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    .line 278
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    .line 297
    :goto_0
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    sput-object v0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mSelected:Landroid/bluetooth/BluetoothDevice;

    .line 281
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V

    goto :goto_0

    .line 283
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mCallFromHeadset:Z

    if-eqz v0, :cond_2

    .line 286
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClickForHeadset(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V

    goto :goto_0

    .line 289
    :cond_2
    invoke-virtual {p1}, Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mNeedAuth:Z

    if-nez v0, :cond_4

    .line 291
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    .line 292
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    .line 294
    :cond_4
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/settings_ex/bluetooth/BluetoothDevicePreference;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 223
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 242
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 225
    :sswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 226
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-nez v1, :cond_1

    .line 228
    const-string v1, "DevicePickerFragment"

    const-string v2, "onOptionsItemSelected :: startScanning()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->startScanning()V

    goto :goto_0

    .line 233
    :cond_1
    const-string v1, "DevicePickerFragment"

    const-string v2, "onOptionsItemSelected :: stopScanning()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    goto :goto_0

    .line 239
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    .line 223
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method public onProfileStateChanged(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;II)V
    .locals 2
    .parameter "profile"
    .parameter "newState"
    .parameter "oldState"

    .prologue
    const/4 v1, 0x2

    .line 364
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onProfileStateChanged(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;II)V

    .line 366
    sget-boolean v0, Lcom/android/settings_ex/bluetooth/DevicePickerActivity;->mMyPlacesCalled:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mSelected:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    .line 367
    if-ne p2, v1, :cond_0

    .line 368
    sget-object v0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mSelected:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->sendDevicePickedIntent(Landroid/bluetooth/BluetoothDevice;)V

    .line 369
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mSelected:Landroid/bluetooth/BluetoothDevice;

    .line 370
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    instance-of v0, p1, Lcom/android/settings_ex/bluetooth/HeadsetProfile;

    if-eqz v0, :cond_2

    .line 374
    if-ne p2, v1, :cond_0

    iget v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mFilterType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 376
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    .line 378
    :cond_2
    instance-of v0, p1, Lcom/android/settings_ex/bluetooth/A2dpProfile;

    if-eqz v0, :cond_0

    .line 379
    if-ne p2, v1, :cond_0

    iget v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mFilterType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 381
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 189
    invoke-super {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 190
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->addCachedDevices()V

    .line 191
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mStartScanOnResume:Z

    .line 195
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 196
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 2
    .parameter "started"

    .prologue
    .line 331
    invoke-super {p0, p1}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    .line 333
    if-nez p1, :cond_3

    .line 334
    invoke-virtual {p0}, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->isDeviceListGroupEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mNoDevicesCategory:Landroid/preference/PreferenceGroup;

    if-nez v0, :cond_2

    .line 336
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mNoDevicesCategory:Landroid/preference/PreferenceGroup;

    .line 341
    :goto_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mNoDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 342
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mNoDevicesCategory:Landroid/preference/PreferenceGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 344
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    if-nez v0, :cond_0

    .line 345
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    .line 346
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    const v1, 0x7f04001d

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 347
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mNoDevicesCategory:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mNoDeviceFoundPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 358
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 359
    return-void

    .line 338
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mNoDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto :goto_0

    .line 352
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mNoDevicesCategory:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_1

    .line 353
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/DevicePickerFragment;->mNoDevicesCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method public startScanning()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 267
    return-void
.end method
