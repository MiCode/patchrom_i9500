.class public final Lcom/android/settings_ex/bluetooth/BluetoothEnabler;
.super Ljava/lang/Object;
.source "BluetoothEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothEnabler"

.field private static final is3LMAllowed:Z


# instance fields
.field private mBluetoothPolicy:Landroid/app/enterprise/BluetoothPolicy;

.field private final mContext:Landroid/content/Context;

.field private mEnabalerListener:Lcom/android/settings_ex/guide/OnInternalSwitcherListener;

.field private mFirstEnabled:Z

.field private mHeader:Landroid/preference/PreferenceActivity$Header;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

.field private mPolicyEnabled:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSummaryView:Landroid/widget/TextView;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 5
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v2, Lcom/android/settings_ex/bluetooth/BluetoothEnabler$1;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler$1;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothEnabler;)V

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 358
    iput-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mEnabalerListener:Lcom/android/settings_ex/guide/OnInternalSwitcherListener;

    .line 117
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    .line 118
    iput-object p2, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    .line 120
    invoke-static {p1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    move-result-object v1

    .line 121
    .local v1, manager:Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;
    if-nez v1, :cond_1

    .line 123
    iput-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    .line 124
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 128
    :goto_0
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 129
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 138
    .local v0, EDM:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getBluetoothPolicy()Landroid/app/enterprise/BluetoothPolicy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mBluetoothPolicy:Landroid/app/enterprise/BluetoothPolicy;

    .line 139
    iput-boolean v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mPolicyEnabled:Z

    .line 141
    const-string v2, "VZW"

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    iput-boolean v4, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mFirstEnabled:Z

    .line 145
    :cond_0
    return-void

    .line 126
    .end local v0           #EDM:Landroid/app/enterprise/EnterpriseDeviceManager;
    :cond_1
    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings_ex/bluetooth/BluetoothEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->updateSummaryInSettings()V

    return-void
.end method

.method private isBlocked()Z
    .locals 1

    .prologue
    .line 394
    const/4 v0, 0x0

    return v0
.end method

.method private onSwitchChanged(Z)V
    .locals 2
    .parameter "isChecked"

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mEnabalerListener:Lcom/android/settings_ex/guide/OnInternalSwitcherListener;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mEnabalerListener:Lcom/android/settings_ex/guide/OnInternalSwitcherListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/android/settings_ex/guide/OnInternalSwitcherListener;->onSwitcherChanged(Landroid/widget/CompoundButton;Z)Z

    .line 363
    :cond_0
    return-void
.end method

.method private updateSummaryInSettings()V
    .locals 11

    .prologue
    const v10, 0x7f0901fa

    const v9, 0x7f0901f9

    const v8, 0x7f09001d

    .line 216
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSummaryView:Landroid/widget/TextView;

    if-eqz v6, :cond_1

    .line 217
    const/4 v4, 0x0

    .line 218
    .local v4, lastConnectedDeviceAddress:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    if-eqz v6, :cond_0

    .line 219
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v6}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_2

    .line 221
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v6, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 222
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    iput v8, v6, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    .line 247
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSummaryView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v7, v7, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/view/View;->invalidate()V

    .line 250
    .end local v4           #lastConnectedDeviceAddress:Ljava/lang/String;
    :cond_1
    return-void

    .line 224
    .restart local v4       #lastConnectedDeviceAddress:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v5

    .line 226
    .local v5, manager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;
    if-eqz v5, :cond_3

    .line 227
    invoke-virtual {v5}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;->getLastConnectedDevice()Ljava/lang/String;

    move-result-object v4

    .line 229
    :cond_3
    if-nez v4, :cond_4

    .line 230
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    iput v9, v6, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    .line 231
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v6, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    goto :goto_0

    .line 233
    :cond_4
    const/4 v3, 0x0

    .line 234
    .local v3, lastConnectedDevice:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v6}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 235
    .local v1, bondedDevices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 236
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 237
    .local v0, bluetoothDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 238
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v3

    .line 242
    .end local v0           #bluetoothDevice:Landroid/bluetooth/BluetoothDevice;
    :cond_6
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    iput v10, v6, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    .line 243
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v7, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    invoke-virtual {v7, v10, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/preference/PreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    goto :goto_0
.end method


# virtual methods
.method handleStateChanged(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 312
    packed-switch p1, :pswitch_data_0

    .line 342
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 343
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 354
    :goto_0
    return-void

    .line 314
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 319
    :pswitch_1
    const-string v0, "VZW"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->updateSummaryInSettings()V

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 325
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 328
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 333
    :pswitch_3
    const-string v0, "VZW"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->updateSummaryInSettings()V

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 339
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 312
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isBluetoothChecked()Z
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v2, 0x0

    .line 294
    invoke-direct {p0, p2}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->onSwitchChanged(Z)V

    .line 298
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth"

    invoke-static {v0, v1}, Lcom/android/settings_ex/WirelessSettings;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f090297

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 302
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, p2}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)V

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 309
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mBluetoothPolicy:Landroid/app/enterprise/BluetoothPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/BluetoothPolicy;->isBluetoothEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 183
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 185
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mPolicyEnabled:Z

    if-nez v0, :cond_2

    .line 197
    :cond_1
    :goto_0
    return-void

    .line 190
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mPolicyEnabled:Z

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 196
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 148
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 177
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mBluetoothPolicy:Landroid/app/enterprise/BluetoothPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/BluetoothPolicy;->isBluetoothEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 160
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 161
    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mPolicyEnabled:Z

    goto :goto_0

    .line 166
    :cond_1
    iput-boolean v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mPolicyEnabled:Z

    .line 169
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 173
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    .line 174
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->updateSummaryInSettings()V

    .line 175
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 176
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method public setOnEnablerSwitchListener(Lcom/android/settings_ex/guide/OnInternalSwitcherListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 366
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mEnabalerListener:Lcom/android/settings_ex/guide/OnInternalSwitcherListener;

    .line 367
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 7
    .parameter "switch_"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 254
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v5, p1, :cond_0

    .line 289
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 256
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    .line 259
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mBluetoothPolicy:Landroid/app/enterprise/BluetoothPolicy;

    invoke-virtual {v5}, Landroid/app/enterprise/BluetoothPolicy;->isBluetoothEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 260
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 262
    invoke-direct {p0, v4}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->onSwitchChanged(Z)V

    .line 264
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 269
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 271
    const/16 v0, 0xa

    .line 272
    .local v0, bluetoothState:I
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    .line 273
    :cond_2
    const/16 v5, 0xc

    if-ne v0, v5, :cond_6

    move v2, v3

    .line 274
    .local v2, isOn:Z
    :goto_1
    const/16 v5, 0xa

    if-ne v0, v5, :cond_7

    move v1, v3

    .line 275
    .local v1, isOff:Z
    :goto_2
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 276
    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez v2, :cond_3

    if-eqz v1, :cond_8

    :cond_3
    move v5, v3

    :goto_3
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 287
    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez v2, :cond_4

    if-eqz v1, :cond_5

    :cond_4
    move v4, v3

    :cond_5
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .end local v1           #isOff:Z
    .end local v2           #isOn:Z
    :cond_6
    move v2, v4

    .line 273
    goto :goto_1

    .restart local v2       #isOn:Z
    :cond_7
    move v1, v4

    .line 274
    goto :goto_2

    .restart local v1       #isOff:Z
    :cond_8
    move v5, v4

    .line 276
    goto :goto_3
.end method

.method public setSwitch(Landroid/widget/Switch;Landroid/preference/PreferenceActivity$Header;Landroid/widget/TextView;)V
    .locals 3
    .parameter "switch_"
    .parameter "header"
    .parameter "view"

    .prologue
    .line 202
    iput-object p2, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 203
    iput-object p3, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mSummaryView:Landroid/widget/TextView;

    .line 204
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 205
    iget-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mFirstEnabled:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 206
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mFirstEnabled:Z

    .line 207
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    .line 209
    .local v0, manager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;
    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;->updateAlreadyConnnectedDevice()V

    .line 212
    .end local v0           #manager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->updateSummaryInSettings()V

    .line 213
    return-void
.end method
