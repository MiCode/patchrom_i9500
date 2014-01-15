.class public Lcom/android/settings_ex/wfd/WfdSwitchEnabler;
.super Ljava/lang/Object;
.source "WfdSwitchEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "WfdSwitchEnabler"


# instance fields
.field private edm:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private final mContext:Landroid/content/Context;

.field private mControlByWfdService:I

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEnableControlByWfdService:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchPreference:Landroid/preference/SwitchPreference;

.field private mWfdManager:Lcom/samsung/wfd/WfdManager;

.field mWfdPickerActivity:Lcom/android/settings_ex/wfd/WfdPickerActivity;

.field private mWfdSwitchState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreference;Lcom/android/settings_ex/wfd/WfdPickerActivity;)V
    .locals 3
    .parameter "context"
    .parameter "switch_"
    .parameter "fragment"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 56
    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    .line 58
    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 60
    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    .line 61
    iput v2, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mWfdSwitchState:I

    .line 62
    iput-boolean v2, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mEnableControlByWfdService:Z

    .line 63
    iput v2, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mControlByWfdService:I

    .line 64
    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    .line 67
    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 68
    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 71
    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 73
    new-instance v0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wfd/WfdSwitchEnabler$1;-><init>(Lcom/android/settings_ex/wfd/WfdSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 89
    const-string v0, "WfdSwitchEnabler"

    const-string v1, "WfdSwitchEnabler << tablet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iput-boolean v2, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mEnableControlByWfdService:Z

    .line 92
    iput v2, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mControlByWfdService:I

    .line 94
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mContext:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    .line 96
    iput-object p3, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    .line 98
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 100
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-nez v0, :cond_0

    .line 101
    const-string v0, "wfd"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/wfd/WfdManager;

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    .line 105
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 106
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.wfd.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 111
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;Lcom/android/settings_ex/wfd/WfdPickerActivity;)V
    .locals 3
    .parameter "context"
    .parameter "switch_"
    .parameter "fragment"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 56
    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    .line 58
    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 60
    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    .line 61
    iput v2, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mWfdSwitchState:I

    .line 62
    iput-boolean v2, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mEnableControlByWfdService:Z

    .line 63
    iput v2, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mControlByWfdService:I

    .line 64
    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    .line 67
    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 68
    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 71
    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 73
    new-instance v0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wfd/WfdSwitchEnabler$1;-><init>(Lcom/android/settings_ex/wfd/WfdSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 120
    const-string v0, "WfdSwitchEnabler"

    const-string v1, "WfdSwitchEnabler << phone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iput-boolean v2, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mEnableControlByWfdService:Z

    .line 123
    iput v2, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mControlByWfdService:I

    .line 125
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mContext:Landroid/content/Context;

    .line 126
    iput-object p2, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 127
    iput-object p3, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    .line 129
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 131
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-nez v0, :cond_0

    .line 132
    const-string v0, "wfd"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/wfd/WfdManager;

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    .line 136
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 137
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.wfd.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 143
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->edm:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 146
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 148
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wfd/WfdSwitchEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->handleP2pStateChanged(I)V

    return-void
.end method

.method private handleP2pStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 450
    const-string v0, "WfdSwitchEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleP2pStateChanged with state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    packed-switch p1, :pswitch_data_0

    .line 466
    :goto_0
    iput p1, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mWfdSwitchState:I

    .line 467
    return-void

    .line 455
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->turnOnSwitch(Z)V

    goto :goto_0

    .line 461
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->turnOnSwitch(Z)V

    goto :goto_0

    .line 452
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isP2pEnabled()Z
    .locals 6

    .prologue
    .line 396
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 397
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 398
    .local v2, netInfo:Landroid/net/NetworkInfo;
    const-string v3, "WfdSwitchEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isP2pEnabled >> ret:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 404
    .end local v0           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v2           #netInfo:Landroid/net/NetworkInfo;
    :goto_0
    return v3

    .line 400
    :catch_0
    move-exception v1

    .line 401
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v3, "WfdSwitchEnabler"

    const-string v4, "isP2pEnabled - NullPointerException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private turnOnSwitch(Z)V
    .locals 5
    .parameter "flag"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 408
    const-string v0, "WfdSwitchEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turnOnSwitch with flag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v3}, Landroid/app/enterprise/RestrictionPolicy;->isWiFiEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 412
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 414
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 418
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 447
    :cond_1
    :goto_0
    return-void

    .line 424
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->checkDPMPolicy(Z)V

    .line 426
    if-eqz p1, :cond_4

    .line 427
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_3

    .line 428
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 429
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 431
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 432
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 433
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 438
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_5

    .line 439
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 440
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 442
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 444
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method checkDPMPolicy(Z)V
    .locals 3
    .parameter "bChecked"

    .prologue
    const/4 v2, 0x0

    .line 183
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/wfd/WfdManager;->setWfdEnabledDialog(Z)Z

    .line 185
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->setWfdTerminate()Z

    .line 194
    :cond_2
    return-void
.end method

.method public isSwitchChecked()Z
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 478
    :goto_0
    return v0

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    goto :goto_0

    .line 478
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 260
    const-string v0, "WfdSwitchEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged << isChecked:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v4}, Landroid/app/enterprise/RestrictionPolicy;->isWiFiEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 265
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->checkDPMPolicy(Z)V

    .line 272
    if-eqz p2, :cond_3

    .line 273
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    invoke-virtual {v0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    const-string v0, "WfdSwitchEnabler"

    const-string v1, "onCheckedChanged will setWfdEnabledDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 278
    const-string v0, "WfdSwitchEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0, v3}, Lcom/samsung/wfd/WfdManager;->setWfdEnabledDialog(Z)Z

    goto :goto_0

    .line 283
    :cond_2
    const-string v0, "WfdSwitchEnabler"

    const-string v1, "onCheckedChanged ignore wfd manager is null setWfdEnabledDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 291
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v0, :cond_4

    .line 292
    const-string v0, "WfdSwitchEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 310
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    if-eqz v0, :cond_4

    .line 312
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->stopScanningWfdPickerDialog(Z)V

    .line 313
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->handleP2pStateChanged(I)V

    .line 320
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_0

    .line 297
    :pswitch_0
    const-string v0, "WfdSwitchEnabler"

    const-string v1, "onCheckedChanged will setWfdTerminate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->setWfdTerminate()Z

    goto :goto_1

    .line 303
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->setWfdTerminate()Z

    .line 304
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    if-eqz v0, :cond_4

    .line 306
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->stopScanningWfdPickerDialog(Z)V

    goto :goto_1

    .line 293
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 328
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 329
    .local v0, enable:Z
    const-string v3, "WfdSwitchEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange2 << value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-ne v3, v0, :cond_0

    .line 332
    const-string v2, "WfdSwitchEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "skip! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :goto_0
    return v1

    .line 337
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v3, v2}, Landroid/app/enterprise/RestrictionPolicy;->isWiFiEnabled(Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 338
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 339
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 343
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->checkDPMPolicy(Z)V

    .line 346
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 347
    if-eqz v0, :cond_4

    .line 348
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    invoke-virtual {v3}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v3

    if-nez v3, :cond_2

    .line 349
    const-string v3, "WfdSwitchEnabler"

    const-string v4, "onPreferenceChange will setWfdEnabledDialog"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v3, :cond_3

    .line 351
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 352
    const-string v3, "WfdSwitchEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v5}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v3, v1}, Lcom/samsung/wfd/WfdManager;->setWfdEnabledDialog(Z)Z

    :cond_2
    :goto_1
    move v1, v2

    .line 391
    goto :goto_0

    .line 356
    :cond_3
    const-string v1, "WfdSwitchEnabler"

    const-string v3, "onPreferenceChange ignore wfd manager is null setWfdEnabledDialog"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 360
    :cond_4
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v3, :cond_5

    .line 361
    const-string v3, "WfdSwitchEnabler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceChange "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v5}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v3}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 378
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    if-eqz v3, :cond_5

    .line 380
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    invoke-virtual {v3, v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->stopScanningWfdPickerDialog(Z)V

    .line 381
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    invoke-virtual {v3, v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->handleP2pStateChanged(I)V

    .line 387
    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 366
    :pswitch_0
    const-string v3, "WfdSwitchEnabler"

    const-string v4, "onPreferenceChange will setWfdTerminate"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v3}, Lcom/samsung/wfd/WfdManager;->setWfdTerminate()Z

    goto :goto_2

    .line 371
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v3}, Lcom/samsung/wfd/WfdManager;->setWfdTerminate()Z

    .line 372
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    if-eqz v3, :cond_5

    .line 374
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mWfdPickerActivity:Lcom/android/settings_ex/wfd/WfdPickerActivity;

    invoke-virtual {v3, v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->stopScanningWfdPickerDialog(Z)V

    goto :goto_2

    .line 362
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 245
    const-string v0, "WfdSwitchEnabler"

    const-string v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mEnableControlByWfdService:Z

    .line 249
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 250
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 257
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 163
    const-string v0, "WfdSwitchEnabler"

    const-string v1, "resume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mWfdSwitchState:I

    .line 167
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 169
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->handleP2pStateChanged(I)V

    .line 180
    :cond_2
    return-void
.end method

.method public setP2PDisable(Z)V
    .locals 3
    .parameter "bChecked"

    .prologue
    const/4 v2, 0x0

    .line 221
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v2}, Landroid/app/enterprise/RestrictionPolicy;->isWiFiEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 225
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 238
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 240
    const-string v0, "WfdSwitchEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setP2PDisable >> mSwitch.setChecked(bChecked); !!!! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setP2PEnable(Z)V
    .locals 3
    .parameter "bChecked"

    .prologue
    const/4 v2, 0x0

    .line 197
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0, v2}, Landroid/app/enterprise/RestrictionPolicy;->isWiFiEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 201
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 207
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 213
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 214
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 216
    const-string v0, "WfdSwitchEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setP2PEnable >> mSwitch.setChecked(bChecked); !!!! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 2
    .parameter "switch_"

    .prologue
    .line 151
    const-string v0, "WfdSwitchEnabler"

    const-string v1, "setSwitch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, p1, :cond_0

    .line 160
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 158
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 159
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method
