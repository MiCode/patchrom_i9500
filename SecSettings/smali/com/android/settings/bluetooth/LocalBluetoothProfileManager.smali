.class final Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;
.super Ljava/lang/Object;
.source "LocalBluetoothProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;,
        Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;,
        Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    }
.end annotation


# static fields
.field private static final ALL_TETHER_DISABLE:I = 0x1

.field private static final ALL_TETHER_ENABLE:I = 0x3

.field private static final ONLY_WIFI_AND_BT_TEHTER_ENABLE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "LocalBluetoothProfileManager"

.field private static sInstance:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;


# instance fields
.field private btPANEnable:Z

.field private mA2dpProfile:Lcom/android/settings_ex/bluetooth/A2dpProfile;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

.field private final mEventManager:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

.field private mHeadsetProfile:Lcom/android/settings_ex/bluetooth/HeadsetProfile;

.field private mHidAvailable:Z

.field private mHidProfile:Lcom/android/settings_ex/bluetooth/HidProfile;

.field private final mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

.field private mOppProfile:Lcom/android/settings_ex/bluetooth/OppProfile;

.field private final mPanProfile:Lcom/android/settings_ex/bluetooth/PanProfile;

.field private final mPbapProfile:Lcom/android/settings_ex/bluetooth/PbapServerProfile;

.field private final mProfileNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mSapProfile:Lcom/android/settings_ex/bluetooth/SapProfile;

.field private final mServiceListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager$ServiceListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings_ex/bluetooth/BluetoothEventManager;)V
    .locals 7
    .parameter "context"
    .parameter "adapter"
    .parameter "deviceManager"
    .parameter "eventManager"

    .prologue
    const/4 v5, 0x1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-boolean v5, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->btPANEnable:Z

    .line 104
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    .line 236
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    .line 111
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    .line 113
    iput-object p2, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    .line 114
    iput-object p3, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    .line 115
    iput-object p4, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    .line 117
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3, p0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->setProfileManager(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;)V

    .line 118
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    invoke-virtual {v3, p0}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->setProfileManager(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;)V

    .line 120
    invoke-virtual {p2}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v2

    .line 123
    .local v2, uuids:[Landroid/os/ParcelUuid;
    if-eqz v2, :cond_0

    .line 124
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->updateLocalProfiles([Landroid/os/ParcelUuid;)V

    .line 133
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_UseChameleon"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 134
    const/4 v0, 0x3

    .line 135
    .local v0, defaultTether:I
    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, sales_code:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 138
    const-string v3, "BST"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "VMU"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 139
    :cond_1
    const/4 v0, 0x1

    .line 143
    :cond_2
    const-string v3, "LocalBluetoothProfileManager"

    const-string v4, "TAG_CSCFEATURE_COMMON_USECHAMELEON!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const-string v3, "persist.sys.tether_data"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_4

    .line 145
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->btPANEnable:Z

    .line 149
    .end local v0           #defaultTether:I
    .end local v1           #sales_code:Ljava/lang/String;
    :cond_3
    :goto_0
    iget-boolean v3, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->btPANEnable:Z

    if-eqz v3, :cond_5

    .line 150
    new-instance v3, Lcom/android/settings_ex/bluetooth/PanProfile;

    iget-object v4, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    iget-object v6, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v3, v4, v5, v6, p0}, Lcom/android/settings_ex/bluetooth/PanProfile;-><init>(Landroid/content/Context;Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v3, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settings_ex/bluetooth/PanProfile;

    .line 152
    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settings_ex/bluetooth/PanProfile;

    const-string v4, "PAN"

    const-string v5, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v3, v4, v5}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->addPanProfile(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :goto_1
    const-string v3, "LocalBluetoothProfileManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PANU : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->btPANEnable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v3, Lcom/android/settings_ex/bluetooth/PbapServerProfile;

    invoke-direct {v3, p1}, Lcom/android/settings_ex/bluetooth/PbapServerProfile;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/settings_ex/bluetooth/PbapServerProfile;

    .line 162
    const-string v3, "LocalBluetoothProfileManager"

    const-string v4, "LocalBluetoothProfileManager construction complete"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-void

    .line 147
    .restart local v0       #defaultTether:I
    .restart local v1       #sales_code:Ljava/lang/String;
    :cond_4
    iput-boolean v5, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->btPANEnable:Z

    goto :goto_0

    .line 154
    .end local v0           #defaultTether:I
    .end local v1           #sales_code:Ljava/lang/String;
    :cond_5
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settings_ex/bluetooth/PanProfile;

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;)Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;)Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;)Lcom/android/settings_ex/bluetooth/BluetoothEventManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    return-object v0
.end method

.method private addPanProfile(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "profile"
    .parameter "profileName"
    .parameter "stateChangedAction"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    new-instance v1, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;-><init>(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)V

    invoke-virtual {v0, p3, v1}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->addProfileHandler(Ljava/lang/String;Lcom/android/settings_ex/bluetooth/BluetoothEventManager$Handler;)V

    .line 249
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    return-void
.end method

.method private addProfile(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "profile"
    .parameter "profileName"
    .parameter "stateChangedAction"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    new-instance v1, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;-><init>(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;)V

    invoke-virtual {v0, p3, v1}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->addProfileHandler(Ljava/lang/String;Lcom/android/settings_ex/bluetooth/BluetoothEventManager$Handler;)V

    .line 242
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    return-void
.end method


# virtual methods
.method addServiceListener(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 316
    return-void
.end method

.method callServiceConnectedListeners()V
    .locals 3

    .prologue
    .line 325
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    .line 326
    .local v1, l:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    invoke-interface {v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager$ServiceListener;->onServiceConnected()V

    goto :goto_0

    .line 328
    .end local v1           #l:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    :cond_0
    return-void
.end method

.method callServiceDisconnectedListeners()V
    .locals 3

    .prologue
    .line 332
    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    .line 333
    .local v1, listener:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    invoke-interface {v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager$ServiceListener;->onServiceDisconnected()V

    goto :goto_0

    .line 335
    .end local v1           #listener:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    :cond_0
    return-void
.end method

.method getA2dpProfile()Lcom/android/settings_ex/bluetooth/A2dpProfile;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings_ex/bluetooth/A2dpProfile;

    return-object v0
.end method

.method getHeadsetProfile()Lcom/android/settings_ex/bluetooth/HeadsetProfile;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings_ex/bluetooth/HeadsetProfile;

    return-object v0
.end method

.method getPbapProfile()Lcom/android/settings_ex/bluetooth/PbapServerProfile;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/settings_ex/bluetooth/PbapServerProfile;

    return-object v0
.end method

.method getProfileByName(Ljava/lang/String;)Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    .locals 1
    .parameter "name"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;

    return-object v0
.end method

.method public declared-synchronized isManagerReady()Z
    .locals 2

    .prologue
    .line 341
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings_ex/bluetooth/HeadsetProfile;

    .line 342
    .local v0, profile:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    if-eqz v0, :cond_0

    .line 343
    invoke-interface {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;->isProfileReady()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 349
    :goto_0
    monitor-exit p0

    return v1

    .line 345
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings_ex/bluetooth/A2dpProfile;

    .line 346
    if-eqz v0, :cond_1

    .line 347
    invoke-interface {v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;->isProfileReady()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 349
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 341
    .end local v0           #profile:Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method removeServiceListener(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 321
    return-void
.end method

.method setBluetoothStateOn()V
    .locals 2

    .prologue
    .line 258
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 259
    .local v0, uuids:[Landroid/os/ParcelUuid;
    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->updateLocalProfiles([Landroid/os/ParcelUuid;)V

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    invoke-virtual {v1}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->readPairedDevices()Z

    .line 263
    return-void
.end method

.method updateLocalProfiles([Landroid/os/ParcelUuid;)V
    .locals 4
    .parameter "uuids"

    .prologue
    .line 174
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 175
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings_ex/bluetooth/A2dpProfile;

    if-nez v0, :cond_0

    .line 176
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local A2DP profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    new-instance v0, Lcom/android/settings_ex/bluetooth/A2dpProfile;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/settings_ex/bluetooth/A2dpProfile;-><init>(Landroid/content/Context;Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings_ex/bluetooth/A2dpProfile;

    .line 179
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings_ex/bluetooth/A2dpProfile;

    const-string v1, "A2DP"

    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_0
    :goto_0
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings_ex/bluetooth/HeadsetProfile;

    if-nez v0, :cond_2

    .line 190
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local HEADSET profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v0, Lcom/android/settings_ex/bluetooth/HeadsetProfile;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/settings_ex/bluetooth/HeadsetProfile;-><init>(Landroid/content/Context;Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings_ex/bluetooth/HeadsetProfile;

    .line 193
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings_ex/bluetooth/HeadsetProfile;

    const-string v1, "HEADSET"

    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_2
    :goto_1
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 202
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settings_ex/bluetooth/OppProfile;

    if-nez v0, :cond_3

    .line 203
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local OPP profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v0, Lcom/android/settings_ex/bluetooth/OppProfile;

    invoke-direct {v0}, Lcom/android/settings_ex/bluetooth/OppProfile;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settings_ex/bluetooth/OppProfile;

    .line 206
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    const-string v1, "OPP"

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settings_ex/bluetooth/OppProfile;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mSapProfile:Lcom/android/settings_ex/bluetooth/SapProfile;

    if-nez v0, :cond_9

    .line 214
    new-instance v0, Lcom/android/settings_ex/bluetooth/SapProfile;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/settings_ex/bluetooth/SapProfile;-><init>(Landroid/content/Context;Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mSapProfile:Lcom/android/settings_ex/bluetooth/SapProfile;

    .line 216
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mSapProfile:Lcom/android/settings_ex/bluetooth/SapProfile;

    const-string v1, "SAP"

    const-string v2, "android.broadcom.sap.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settings_ex/bluetooth/HidProfile;

    if-nez v0, :cond_a

    .line 224
    new-instance v0, Lcom/android/settings_ex/bluetooth/HidProfile;

    iget-object v1, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/settings_ex/bluetooth/HidProfile;-><init>(Landroid/content/Context;Lcom/android/settings_ex/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_ex/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settings_ex/bluetooth/HidProfile;

    .line 226
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settings_ex/bluetooth/HidProfile;

    const-string v1, "HID"

    const-string v2, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settings_ex/bluetooth/BluetoothEventManager;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/BluetoothEventManager;->registerProfileIntentReceiver()V

    .line 234
    return-void

    .line 182
    :cond_6
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings_ex/bluetooth/A2dpProfile;

    if-eqz v0, :cond_0

    .line 183
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: A2DP profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 196
    :cond_7
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings_ex/bluetooth/HeadsetProfile;

    if-eqz v0, :cond_2

    .line 197
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: HEADSET profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 208
    :cond_8
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settings_ex/bluetooth/OppProfile;

    if-eqz v0, :cond_3

    .line 209
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: OPP profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 218
    :cond_9
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mSapProfile:Lcom/android/settings_ex/bluetooth/SapProfile;

    if-eqz v0, :cond_4

    .line 219
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: SAP profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 227
    :cond_a
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settings_ex/bluetooth/HidProfile;

    if-eqz v0, :cond_5

    .line 228
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: HID profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method declared-synchronized updateProfiles([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 2
    .parameter "uuids"
    .parameter "localUuids"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/ParcelUuid;",
            "[",
            "Landroid/os/ParcelUuid;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 381
    .local p3, profiles:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;>;"
    .local p4, removedProfiles:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/settings_ex/bluetooth/LocalBluetoothProfile;>;"
    monitor-enter p0

    :try_start_0
    invoke-interface {p4}, Ljava/util/Collection;->clear()V

    .line 382
    invoke-interface {p4, p3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 383
    invoke-interface {p3}, Ljava/util/Collection;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    if-nez p1, :cond_1

    .line 431
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 389
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings_ex/bluetooth/HeadsetProfile;

    if-eqz v0, :cond_4

    .line 390
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 394
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings_ex/bluetooth/HeadsetProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 395
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settings_ex/bluetooth/HeadsetProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 399
    :cond_4
    sget-object v0, Lcom/android/settings_ex/bluetooth/A2dpProfile;->SINK_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings_ex/bluetooth/A2dpProfile;

    if-eqz v0, :cond_5

    .line 401
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings_ex/bluetooth/A2dpProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 402
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settings_ex/bluetooth/A2dpProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 405
    :cond_5
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settings_ex/bluetooth/OppProfile;

    if-eqz v0, :cond_6

    .line 407
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settings_ex/bluetooth/OppProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 408
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settings_ex/bluetooth/OppProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 411
    :cond_6
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settings_ex/bluetooth/HidProfile;

    if-eqz v0, :cond_7

    .line 413
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settings_ex/bluetooth/HidProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 414
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settings_ex/bluetooth/HidProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 417
    :cond_7
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settings_ex/bluetooth/PanProfile;

    if-eqz v0, :cond_8

    .line 419
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settings_ex/bluetooth/PanProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 420
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settings_ex/bluetooth/PanProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 426
    :cond_8
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mSapProfile:Lcom/android/settings_ex/bluetooth/SapProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mSapProfile:Lcom/android/settings_ex/bluetooth/SapProfile;

    if-eqz v0, :cond_0

    .line 427
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding back SAP profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mSapProfile:Lcom/android/settings_ex/bluetooth/SapProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 429
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/LocalBluetoothProfileManager;->mSapProfile:Lcom/android/settings_ex/bluetooth/SapProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 381
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
