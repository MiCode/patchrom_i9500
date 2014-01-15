.class public Lcom/android/settings_ex/wifi/Hs20Settings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "Hs20Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/wifi/Hs20Settings$Scanner;,
        Lcom/android/settings_ex/wifi/Hs20Settings$OnScanStateListener;
    }
.end annotation


# static fields
.field private static final KEY_HS_PREF_AVAILABLE:Ljava/lang/String; = "available_hs"

.field private static final KEY_HS_PREF_CONNECTABLE:Ljava/lang/String; = "connectable_hs"

.field private static final KEY_HS_PREF_NO_DEVICE:Ljava/lang/String; = "no_connectable_hs"

.field private static final MENU_ID_CANCEL:I = 0x1

.field private static final MENU_ID_REFRESH:I = 0x3

.field private static final MENU_ID_SCAN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Hs20Settings"


# instance fields
.field private isAutoInterworking:Z

.field private isInDialog:Z

.field private mAvailableHs:Landroid/preference/PreferenceGroup;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mConnectableHs:Lcom/android/settings_ex/ProgressCategory;

.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mContext:Landroid/content/Context;

.field mHS20ConnectableList:Landroid/net/wifi/HS20ConnectableList;

.field private mLastScanResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mLastState:Landroid/net/NetworkInfo$DetailedState;

.field private mLastWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mNoHs:Landroid/preference/PreferenceGroup;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mScanStateListener:Lcom/android/settings_ex/wifi/Hs20Settings$OnScanStateListener;

.field private final mScanner:Lcom/android/settings_ex/wifi/Hs20Settings$Scanner;

.field private mValidApList:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings_ex/wifi/Hs20AccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 64
    iput-object v2, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 65
    iput-object v2, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 66
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->isAutoInterworking:Z

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    new-instance v0, Lcom/android/settings_ex/wifi/Hs20Settings$Scanner;

    invoke-direct {v0, p0, v2}, Lcom/android/settings_ex/wifi/Hs20Settings$Scanner;-><init>(Lcom/android/settings_ex/wifi/Hs20Settings;Lcom/android/settings_ex/wifi/Hs20Settings$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mScanner:Lcom/android/settings_ex/wifi/Hs20Settings$Scanner;

    .line 70
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->isInDialog:Z

    .line 372
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/wifi/Hs20Settings;)Lcom/android/settings_ex/wifi/Hs20Settings$Scanner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mScanner:Lcom/android/settings_ex/wifi/Hs20Settings$Scanner;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/wifi/Hs20Settings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/wifi/Hs20Settings;Ljava/lang/Boolean;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/Hs20Settings;->setRefreshAction(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/settings_ex/wifi/Hs20Settings;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mLastScanResult:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings_ex/wifi/Hs20Settings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/Hs20Settings;->updateConnectableApList()V

    return-void
.end method

.method private getIntentFilters()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 211
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 212
    .local v0, mFilter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    const-string v1, "android.net.wifi.HS20_AP_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    const-string v1, "android.net.wifi.HS20_ANQP_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 221
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    return-object v0
.end method

.method private getSecuredKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "key"
    .parameter "ssid"

    .prologue
    const/16 v3, 0x11

    .line 362
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_1

    .line 363
    :cond_0
    const/4 v0, 0x0

    .line 365
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xc

    const/16 v2, 0xe

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setRefreshAction(Ljava/lang/Boolean;)V
    .locals 4
    .parameter "refresh"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 353
    iget-object v2, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mConnectableHs:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ex/ProgressCategory;->setProgress(Z)V

    .line 354
    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->isInDialog:Z

    if-eqz v2, :cond_1

    .line 355
    iget-object v2, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mScanStateListener:Lcom/android/settings_ex/wifi/Hs20Settings$OnScanStateListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/android/settings_ex/wifi/Hs20Settings$OnScanStateListener;->onScanCompleted(Ljava/lang/Boolean;)V

    .line 359
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 355
    goto :goto_0

    .line 357
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mOptionsMenu:Landroid/view/Menu;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_2
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method private updateAvailableApList()V
    .locals 7

    .prologue
    .line 318
    const-string v5, "Hs20Settings"

    const-string v6, "updateHsList"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 320
    .local v1, accessPoints:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings_ex/wifi/AccessPoint;>;"
    iget-object v5, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    .line 322
    .local v4, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v4, :cond_1

    .line 323
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 325
    .local v3, result:Landroid/net/wifi/ScanResult;
    iget-object v5, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v6, "[IBSS]"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v3, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v6, "HS20"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 331
    new-instance v5, Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v6, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v3}, Lcom/android/settings_ex/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 335
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #result:Landroid/net/wifi/ScanResult;
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mAvailableHs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 336
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wifi/AccessPoint;

    .line 337
    .local v0, accessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    iget-object v5, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mAvailableHs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 339
    .end local v0           #accessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    :cond_2
    return-void
.end method

.method private updateConnectableApList()V
    .locals 10

    .prologue
    .line 255
    iget-object v7, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mConnectableHs:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v7}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 256
    iget-object v7, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mValidApList:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->clear()V

    .line 259
    iget-object v7, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mHS20ConnectableList:Landroid/net/wifi/HS20ConnectableList;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mLastScanResult:Ljava/util/List;

    if-eqz v7, :cond_2

    .line 260
    iget-object v7, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mLastScanResult:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 261
    .local v5, result:Landroid/net/wifi/ScanResult;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v5, Landroid/net/wifi/ScanResult;->HESSID:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, v5, Landroid/net/wifi/ScanResult;->HESSID:Ljava/lang/String;

    :goto_1
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 262
    .local v3, key:Ljava/lang/String;
    iget-object v7, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-direct {p0, v3, v7}, Lcom/android/settings_ex/wifi/Hs20Settings;->getSecuredKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 263
    .local v4, printkey:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mHS20ConnectableList:Landroid/net/wifi/HS20ConnectableList;

    invoke-virtual {v7, v3}, Landroid/net/wifi/HS20ConnectableList;->get(Ljava/lang/String;)Landroid/net/wifi/Hs20ScanResult;

    move-result-object v6

    .line 264
    .local v6, tempHs20:Landroid/net/wifi/Hs20ScanResult;
    if-eqz v6, :cond_0

    .line 265
    const-string v7, "Hs20Settings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AP added: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v7, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mValidApList:Ljava/util/LinkedHashMap;

    new-instance v8, Lcom/android/settings_ex/wifi/Hs20AccessPoint;

    iget-object v9, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9, v6}, Lcom/android/settings_ex/wifi/Hs20AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/Hs20ScanResult;)V

    invoke-virtual {v7, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 261
    .end local v3           #key:Ljava/lang/String;
    .end local v4           #printkey:Ljava/lang/String;
    .end local v6           #tempHs20:Landroid/net/wifi/Hs20ScanResult;
    :cond_1
    iget-object v7, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    goto :goto_1

    .line 270
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #result:Landroid/net/wifi/ScanResult;
    :cond_2
    iget-object v7, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 272
    iget-object v7, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mValidApList:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    .line 273
    new-instance v1, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mValidApList:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 275
    .local v1, accessPoints:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings_ex/wifi/Hs20AccessPoint;>;"
    iget-object v7, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 276
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;

    .line 277
    .local v0, accessPoint:Lcom/android/settings_ex/wifi/Hs20AccessPoint;
    iget-object v7, v0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->bssid:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 278
    iget-object v7, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v7}, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->update(Landroid/net/wifi/WifiInfo;)V

    goto :goto_2

    .line 279
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->hessid:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 280
    const-string v7, "Hs20Settings"

    const-string v8, "updateConnectableApList SSID with HESSID"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v7, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v7}, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->update(Landroid/net/wifi/WifiInfo;)V

    goto :goto_2

    .line 286
    .end local v0           #accessPoint:Lcom/android/settings_ex/wifi/Hs20AccessPoint;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_5
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 287
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;

    .line 288
    .restart local v0       #accessPoint:Lcom/android/settings_ex/wifi/Hs20AccessPoint;
    iget-object v7, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mConnectableHs:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 290
    .end local v0           #accessPoint:Lcom/android/settings_ex/wifi/Hs20AccessPoint;
    :cond_6
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mNoHs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 294
    .end local v1           #accessPoints:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings_ex/wifi/Hs20AccessPoint;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :goto_4
    return-void

    .line 292
    :cond_7
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mNoHs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4
.end method

.method private updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 6
    .parameter "state"

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 298
    iget-object v3, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 300
    iget-object v3, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mValidApList:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 304
    const-string v3, "Hs20Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Changing order:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mValidApList:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 306
    .local v1, accessPoints:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings_ex/wifi/Hs20AccessPoint;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;

    .line 307
    .local v0, accessPoint:Lcom/android/settings_ex/wifi/Hs20AccessPoint;
    iget-object v3, v0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->bssid:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 308
    iget-object v3, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v3, v4}, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 309
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->hessid:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 310
    const-string v3, "Hs20Settings"

    const-string v4, "updateConnectableApList SSID with HESSID"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v3, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v3, v4}, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 315
    .end local v0           #accessPoint:Lcom/android/settings_ex/wifi/Hs20AccessPoint;
    .end local v1           #accessPoints:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings_ex/wifi/Hs20AccessPoint;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private updateWifiState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 342
    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mScanner:Lcom/android/settings_ex/wifi/Hs20Settings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/Hs20Settings$Scanner;->startScan()V

    .line 351
    :goto_0
    return-void

    .line 344
    :cond_0
    const/4 v0, 0x2

    if-eq v0, p1, :cond_1

    .line 345
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090283

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 347
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mScanner:Lcom/android/settings_ex/wifi/Hs20Settings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/Hs20Settings$Scanner;->stopScan()V

    goto :goto_0
.end method


# virtual methods
.method protected handleReceivedEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 226
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, action:Ljava/lang/String;
    const-string v2, "Hs20Settings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleReceivedEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-string v2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 230
    iget-object v2, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mScanner:Lcom/android/settings_ex/wifi/Hs20Settings$Scanner;

    const/16 v3, 0x138a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 232
    const-string v2, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/wifi/Hs20Settings;->updateWifiState(I)V

    goto :goto_0

    .line 234
    :cond_2
    const-string v2, "android.net.wifi.HS20_AP_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 235
    iget-object v2, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectableAPList()Landroid/net/wifi/HS20ConnectableList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mHS20ConnectableList:Landroid/net/wifi/HS20ConnectableList;

    .line 236
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/Hs20Settings;->updateConnectableApList()V

    goto :goto_0

    .line 237
    :cond_3
    const-string v2, "android.net.wifi.HS20_ANQP_COMPLETE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 238
    iget-object v2, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mScanner:Lcom/android/settings_ex/wifi/Hs20Settings$Scanner;

    const/16 v3, 0x138c

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 246
    :cond_4
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 249
    .local v1, info:Landroid/net/NetworkInfo;
    iget-object v2, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 250
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/wifi/Hs20Settings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 95
    const-string v0, "Hs20Settings"

    const-string v3, "onActivityCreated"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mContext:Landroid/content/Context;

    .line 98
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 99
    new-instance v0, Lcom/android/settings_ex/wifi/Hs20Settings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/Hs20Settings$2;-><init>(Lcom/android/settings_ex/wifi/Hs20Settings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 110
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mValidApList:Ljava/util/LinkedHashMap;

    .line 111
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "wifi_hotspot20_enable"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->isAutoInterworking:Z

    .line 113
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings_ex/wifi/Hs20PickerDialog;

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->isInDialog:Z

    .line 114
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->isInDialog:Z

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wifi/Hs20Settings$OnScanStateListener;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mScanStateListener:Lcom/android/settings_ex/wifi/Hs20Settings$OnScanStateListener;

    .line 116
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wifi/Hs20PickerDialog;

    new-instance v1, Lcom/android/settings_ex/wifi/Hs20Settings$3;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/wifi/Hs20Settings$3;-><init>(Lcom/android/settings_ex/wifi/Hs20Settings;)V

    iput-object v1, v0, Lcom/android/settings_ex/wifi/Hs20PickerDialog;->scanListner:Lcom/android/settings_ex/wifi/Hs20PickerDialog$OnScanButtonPressed;

    .line 125
    :goto_1
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 126
    return-void

    :cond_0
    move v0, v2

    .line 111
    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const-string v0, "Hs20Settings"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const v0, 0x7f07003e

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 78
    const-string v0, "connectable_hs"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/ProgressCategory;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mConnectableHs:Lcom/android/settings_ex/ProgressCategory;

    .line 79
    const-string v0, "no_connectable_hs"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mNoHs:Landroid/preference/PreferenceGroup;

    .line 80
    const-string v0, "available_hs"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mAvailableHs:Landroid/preference/PreferenceGroup;

    .line 81
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mAvailableHs:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 83
    iget-object v0, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mConnectableHs:Lcom/android/settings_ex/ProgressCategory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ProgressCategory;->setProgress(Z)V

    .line 85
    new-instance v0, Lcom/android/settings_ex/wifi/Hs20Settings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/Hs20Settings$1;-><init>(Lcom/android/settings_ex/wifi/Hs20Settings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 91
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 149
    const-string v0, "Hs20Settings"

    const-string v1, "onCreateOptionsMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iput-object p1, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mOptionsMenu:Landroid/view/Menu;

    .line 151
    const/4 v0, 0x1

    const v1, 0x7f090143

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 153
    const/4 v0, 0x2

    const v1, 0x7f0902b0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 156
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 157
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 161
    const-string v1, "Hs20Settings"

    const-string v2, "onOptionsItemSelected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 174
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 164
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 165
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 171
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mScanner:Lcom/android/settings_ex/wifi/Hs20Settings$Scanner;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/Hs20Settings$Scanner;->startScan()V

    goto :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 141
    const-string v0, "Hs20Settings"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 143
    iget-object v0, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mScanner:Lcom/android/settings_ex/wifi/Hs20Settings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/Hs20Settings$Scanner;->stopScan()V

    .line 144
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 145
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x1

    .line 179
    check-cast p2, Lcom/android/settings_ex/wifi/Hs20AccessPoint;

    .end local p2
    iget-object v2, p2, Lcom/android/settings_ex/wifi/Hs20AccessPoint;->bssid:Ljava/lang/String;

    .line 180
    .local v2, selectedBssid:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mLastWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 183
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 184
    .local v0, args:Landroid/os/Bundle;
    const-string v3, "BSSID"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v3, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v4, Lcom/android/settings_ex/wifi/Hs20Settings$4;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/wifi/Hs20Settings$4;-><init>(Lcom/android/settings_ex/wifi/Hs20Settings;)V

    invoke-virtual {v3, v0, v4}, Landroid/net/wifi/WifiManager;->connectHs20Ap(Landroid/os/Bundle;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 194
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_hotspot20_enable"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_2

    .line 195
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 196
    .local v1, msg:Landroid/os/Message;
    new-instance v1, Landroid/os/Message;

    .end local v1           #msg:Landroid/os/Message;
    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 197
    .restart local v1       #msg:Landroid/os/Message;
    const/16 v3, 0x29

    iput v3, v1, Landroid/os/Message;->what:I

    .line 198
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #args:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 199
    .restart local v0       #args:Landroid/os/Bundle;
    const-string v3, "enable"

    const-string v4, "WITHCRED_ON"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 201
    iget-object v3, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 202
    const-string v3, "Hs20Settings"

    const-string v4, "HOTSPOT20 config store error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_hotspot20_enable"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 206
    .end local v0           #args:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    .line 207
    return v6
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 130
    const-string v0, "Hs20Settings"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 132
    iget-object v0, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/Hs20Settings;->getIntentFilters()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 133
    iget-object v0, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectableAPList()Landroid/net/wifi/HS20ConnectableList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mHS20ConnectableList:Landroid/net/wifi/HS20ConnectableList;

    .line 134
    iget-object v0, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/Hs20Settings;->mLastScanResult:Ljava/util/List;

    .line 135
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/Hs20Settings;->updateConnectableApList()V

    .line 137
    return-void
.end method
