.class public Lcom/android/settings_ex/vpn2/VpnSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "VpnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/os/Handler$Callback;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/vpn2/VpnSettings$LockdownConfigFragment;,
        Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VpnSettings"

.field private static final TAG_LOCKDOWN:Ljava/lang/String; = "lockdown"


# instance fields
.field filter:Landroid/content/IntentFilter;

.field private mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

.field private mInfo:Lcom/android/internal/net/LegacyVpnInfo;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mPreferences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mSelectedKey:Ljava/lang/String;

.field private final mService:Landroid/net/IConnectivityManager;

.field private mUnlocking:Z

.field private mUpdater:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 80
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    .line 82
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUnlocking:Z

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    .line 95
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->filter:Landroid/content/IntentFilter;

    .line 600
    new-instance v0, Lcom/android/settings_ex/vpn2/VpnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/vpn2/VpnSettings$1;-><init>(Lcom/android/settings_ex/vpn2/VpnSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Landroid/security/KeyStore;[I)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-static {p0, p1}, Lcom/android/settings_ex/vpn2/VpnSettings;->loadVpnProfiles(Landroid/security/KeyStore;[I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/vpn2/VpnSettings;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings_ex/vpn2/VpnSettings;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    return-object p1
.end method

.method private connect(Lcom/android/internal/net/VpnProfile;)V
    .locals 4
    .parameter "profile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 405
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :goto_0
    return-void

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090965

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private disconnect(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    const-string v1, "[Legacy VPN]"

    const-string v2, "[Legacy VPN]"

    invoke-interface {v0, v1, v2}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 415
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static varargs loadVpnProfiles(Landroid/security/KeyStore;[I)Ljava/util/List;
    .locals 9
    .parameter "keyStore"
    .parameter "excludeTypes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/security/KeyStore;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/net/VpnProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 573
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 574
    .local v6, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/net/VpnProfile;>;"
    const-string v7, "VPN_"

    invoke-virtual {p0, v7}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 575
    .local v3, keys:[Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 576
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 577
    .local v2, key:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VPN_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v2, v7}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v5

    .line 579
    .local v5, profile:Lcom/android/internal/net/VpnProfile;
    if-eqz v5, :cond_0

    iget v7, v5, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-static {p1, v7}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v7

    if-nez v7, :cond_0

    .line 580
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 584
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #key:Ljava/lang/String;
    .end local v4           #len$:I
    .end local v5           #profile:Lcom/android/internal/net/VpnProfile;
    :cond_1
    return-object v6
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 423
    const v0, 0x7f090a16

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "message"

    .prologue
    const/4 v5, 0x0

    .line 376
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 378
    invoke-virtual {p0}, Landroid/app/Fragment;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 380
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v2}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v0

    .line 381
    .local v0, info:Lcom/android/internal/net/LegacyVpnInfo;
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v2, :cond_1

    .line 382
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v3, v3, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;

    .line 383
    .local v1, preference:Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;
    if-eqz v1, :cond_0

    .line 384
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;->update(I)V

    .line 386
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    .line 388
    .end local v1           #preference:Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;
    :cond_1
    if-eqz v0, :cond_2

    .line 389
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;

    .line 390
    .restart local v1       #preference:Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;
    if-eqz v1, :cond_2

    .line 391
    iget v2, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;->update(I)V

    .line 392
    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    .end local v0           #info:Lcom/android/internal/net/LegacyVpnInfo;
    .end local v1           #preference:Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 400
    :cond_3
    const/4 v2, 0x1

    return v2

    .line 395
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 256
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 259
    const-string v3, "DCM"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 260
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    if-nez v3, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {v3}, Lcom/android/settings_ex/vpn2/VpnDialog;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v2

    .line 267
    .local v2, profile:Lcom/android/internal/net/VpnProfile;
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VPN_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    .line 270
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;

    .line 271
    .local v1, preference:Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;
    if-eqz v1, :cond_2

    .line 272
    iget-object v3, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/settings_ex/vpn2/VpnSettings;->disconnect(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v1, v2}, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;->update(Lcom/android/internal/net/VpnProfile;)V

    .line 282
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {v3}, Lcom/android/settings_ex/vpn2/VpnDialog;->isEditing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 284
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/settings_ex/vpn2/VpnSettings;->connect(Lcom/android/internal/net/VpnProfile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "VpnSettings"

    const-string v4, "connect"

    invoke-static {v3, v4, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 275
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    new-instance v1, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;

    .end local v1           #preference:Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;-><init>(Landroid/content/Context;Lcom/android/internal/net/VpnProfile;)V

    .line 276
    .restart local v1       #preference:Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 277
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 314
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    if-eqz v3, :cond_0

    .line 315
    const-string v2, "VpnSettings"

    const-string v3, "onContextItemSelected() is called when mDialog != null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :goto_0
    return v1

    .line 319
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;

    .line 320
    .local v0, preference:Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;
    if-nez v0, :cond_1

    .line 321
    const-string v2, "VpnSettings"

    const-string v3, "onContextItemSelected() is called but no preference is found"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 325
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 327
    :pswitch_0
    new-instance v1, Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v4

    invoke-direct {v1, v3, p0, v4, v2}, Lcom/android/settings_ex/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;Z)V

    iput-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    .line 328
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 329
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    move v1, v2

    .line 330
    goto :goto_0

    .line 332
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings_ex/vpn2/VpnSettings;->disconnect(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 334
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VPN_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    move v1, v2

    .line 336
    goto :goto_0

    .line 325
    :pswitch_data_0
    .packed-switch 0x7f09095f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedState"

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 104
    const v1, 0x7f07008f

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 107
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->filter:Landroid/content/IntentFilter;

    const-string v2, "com.android.server.enterprise.VPN_NEW_PROFILE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    if-eqz p1, :cond_0

    .line 111
    const-string v1, "VpnKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VpnProfile"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    .line 113
    .local v0, profile:Lcom/android/internal/net/VpnProfile;
    if-eqz v0, :cond_0

    .line 114
    new-instance v1, Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "VpnEditing"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/android/settings_ex/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;Z)V

    iput-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    .line 118
    .end local v0           #profile:Lcom/android/internal/net/VpnProfile;
    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .parameter "menu"
    .parameter "view"
    .parameter "info"

    .prologue
    const v6, 0x7f090960

    const v5, 0x7f09095f

    const/4 v4, 0x0

    .line 294
    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    if-eqz v2, :cond_1

    .line 295
    const-string v2, "VpnSettings"

    const-string v3, "onCreateContextMenu() is called when mDialog != null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .end local p3
    :cond_0
    :goto_0
    return-void

    .line 299
    .restart local p3
    :cond_1
    instance-of v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v2, :cond_0

    .line 300
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3
    iget v3, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 302
    .local v0, preference:Landroid/preference/Preference;
    instance-of v2, v0, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;

    if-eqz v2, :cond_0

    .line 303
    check-cast v0, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;

    .end local v0           #preference:Landroid/preference/Preference;
    invoke-virtual {v0}, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v1

    .line 304
    .local v1, profile:Lcom/android/internal/net/VpnProfile;
    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    .line 305
    iget-object v2, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 306
    invoke-interface {p1, v4, v5, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 307
    invoke-interface {p1, v4, v6, v4, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 122
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 123
    const v0, 0x7f120007

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 124
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 591
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 593
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 595
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 597
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 598
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    .line 252
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 138
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 158
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    :goto_0
    return v4

    .line 140
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    if-eqz v0, :cond_0

    .line 141
    const/4 v4, 0x0

    goto :goto_0

    .line 143
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 144
    .local v6, millis:J
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    const-wide/16 v0, 0x1

    add-long/2addr v6, v0

    goto :goto_1

    .line 147
    :cond_1
    new-instance v0, Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v3, Lcom/android/internal/net/VpnProfile;

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    move-object v2, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;ZZ)V

    iput-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    .line 149
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 150
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 154
    .end local v6           #millis:J
    :pswitch_1
    invoke-static {p0}, Lcom/android/settings_ex/vpn2/VpnSettings$LockdownConfigFragment;->show(Lcom/android/settings_ex/vpn2/VpnSettings;)V

    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x7f0b0549
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 234
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 237
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 239
    iget-object v0, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 243
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 244
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->unregisterForContextMenu(Landroid/view/View;)V

    .line 246
    :cond_1
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preference"

    .prologue
    const/4 v7, 0x1

    .line 343
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    if-eqz v3, :cond_0

    .line 344
    const-string v3, "VpnSettings"

    const-string v4, "onPreferenceClick() is called when mDialog != null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    .end local p1
    :goto_0
    return v7

    .line 348
    .restart local p1
    :cond_0
    instance-of v3, p1, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;

    if-eqz v3, :cond_2

    .line 349
    check-cast p1, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;

    .end local p1
    invoke-virtual {p1}, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v2

    .line 350
    .local v2, profile:Lcom/android/internal/net/VpnProfile;
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v4, v4, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget v3, v3, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 353
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v3, v3, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 355
    :catch_0
    move-exception v3

    .line 359
    :cond_1
    new-instance v3, Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, p0, v2, v5}, Lcom/android/settings_ex/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;Z)V

    iput-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    .line 369
    .end local v2           #profile:Lcom/android/internal/net/VpnProfile;
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {v3, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 370
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 362
    .restart local p1
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 363
    .local v0, millis:J
    :goto_2
    iget-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 364
    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    goto :goto_2

    .line 366
    :cond_3
    new-instance v3, Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/android/internal/net/VpnProfile;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, p0, v5, v7}, Lcom/android/settings_ex/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;Z)V

    iput-object v3, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-super {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 131
    const-string v0, "persist.radio.imsregrequired"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const v0, 0x7f0b054a

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 134
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 175
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 178
    iget-object v8, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v8}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v8

    sget-object v9, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v8, v9, :cond_3

    .line 179
    iget-boolean v8, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUnlocking:Z

    if-nez v8, :cond_2

    .line 181
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v8

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    .line 186
    :goto_0
    iget-boolean v8, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUnlocking:Z

    if-nez v8, :cond_0

    const/4 v7, 0x1

    :cond_0
    iput-boolean v7, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUnlocking:Z

    .line 230
    :cond_1
    :goto_1
    return-void

    .line 184
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finishFragment()V

    goto :goto_0

    .line 191
    :cond_3
    iput-boolean v7, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUnlocking:Z

    .line 196
    iget-object v8, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-nez v8, :cond_4

    .line 197
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 199
    .local v2, group:Landroid/preference/PreferenceGroup;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 200
    .local v0, context:Landroid/content/Context;
    iget-object v8, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-array v9, v7, [I

    invoke-static {v8, v9}, Lcom/android/settings_ex/vpn2/VpnSettings;->loadVpnProfiles(Landroid/security/KeyStore;[I)Ljava/util/List;

    move-result-object v6

    .line 201
    .local v6, profiles:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/net/VpnProfile;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/net/VpnProfile;

    .line 202
    .local v5, profile:Lcom/android/internal/net/VpnProfile;
    new-instance v4, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;

    invoke-direct {v4, v0, v5}, Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;-><init>(Landroid/content/Context;Lcom/android/internal/net/VpnProfile;)V

    .line 203
    .local v4, pref:Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;
    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 204
    iget-object v8, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v9, v5, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v8, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-virtual {v2, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 210
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #group:Landroid/preference/PreferenceGroup;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #pref:Lcom/android/settings_ex/vpn2/VpnSettings$VpnPreference;
    .end local v5           #profile:Lcom/android/internal/net/VpnProfile;
    .end local v6           #profiles:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/net/VpnProfile;>;"
    :cond_4
    iget-object v8, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    if-eqz v8, :cond_5

    .line 211
    iget-object v8, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {v8, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 212
    iget-object v8, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 216
    :cond_5
    iget-object v8, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    if-nez v8, :cond_6

    .line 217
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v8, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    .line 219
    :cond_6
    iget-object v8, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    invoke-virtual {v8, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 222
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    .line 224
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "enterprise_policy"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 226
    .local v1, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/enterprise/RestrictionPolicy;->isVpnAllowed()Z

    move-result v7

    if-nez v7, :cond_1

    .line 227
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedState"

    .prologue
    .line 164
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {v1}, Lcom/android/settings_ex/vpn2/VpnDialog;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    .line 166
    .local v0, profile:Lcom/android/internal/net/VpnProfile;
    const-string v1, "VpnKey"

    iget-object v2, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v1, "VpnProfile"

    invoke-virtual {v0}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 168
    const-string v1, "VpnEditing"

    iget-object v2, p0, Lcom/android/settings_ex/vpn2/VpnSettings;->mDialog:Lcom/android/settings_ex/vpn2/VpnDialog;

    invoke-virtual {v2}, Lcom/android/settings_ex/vpn2/VpnDialog;->isEditing()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 171
    .end local v0           #profile:Lcom/android/internal/net/VpnProfile;
    :cond_0
    return-void
.end method
