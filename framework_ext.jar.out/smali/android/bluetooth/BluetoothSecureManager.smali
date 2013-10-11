.class public final Landroid/bluetooth/BluetoothSecureManager;
.super Ljava/lang/Object;
.source "BluetoothSecureManager.java"


# static fields
.field public static final SECURE_SETTING_A2DP_ENABLE:Ljava/lang/String; = "a2dp_enable"

.field public static final SECURE_SETTING_FTP_ENABLE:Ljava/lang/String; = "ftp_enable"

.field public static final SECURE_SETTING_GATT_ENABLE:Ljava/lang/String; = "gatt_enable"

.field public static final SECURE_SETTING_HDP_ENABLE:Ljava/lang/String; = "hdp_enable"

.field public static final SECURE_SETTING_HFP_ENABLE:Ljava/lang/String; = "hfp_enable"

.field public static final SECURE_SETTING_HID_ENABLE:Ljava/lang/String; = "hid_enable"

.field public static final SECURE_SETTING_MAP_ENABLE:Ljava/lang/String; = "map_enable"

.field public static final SECURE_SETTING_OPP_ENABLE:Ljava/lang/String; = "opp_enable"

.field public static final SECURE_SETTING_PAIRING_MODE:Ljava/lang/String; = "pairing_mode"

.field public static final SECURE_SETTING_PAN_ENABLE:Ljava/lang/String; = "pan_enable"

.field public static final SECURE_SETTING_PBAP_ENABLE:Ljava/lang/String; = "pbap_enable"

.field public static final SECURE_SETTING_SAP_ENABLE:Ljava/lang/String; = "sap_enable"

.field public static final SECURE_SETTING_SCAN_MODE:Ljava/lang/String; = "scan_mode"

.field private static final TAG:Ljava/lang/String; = "BluetoothSecureManager"

.field private static This:Landroid/bluetooth/BluetoothSecureManager;


# instance fields
.field private mService:Landroid/bluetooth/IBluetoothSecureManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    sput-object v0, Landroid/bluetooth/BluetoothSecureManager;->This:Landroid/bluetooth/BluetoothSecureManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    invoke-static {}, Landroid/bluetooth/BluetoothSecureManager;->loadSecureManager()Landroid/bluetooth/IBluetoothSecureManagerService;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    .line 237
    return-void
.end method

.method public static getInstant()Landroid/bluetooth/BluetoothSecureManager;
    .locals 2

    .prologue
    .line 127
    sget-object v0, Landroid/bluetooth/BluetoothSecureManager;->This:Landroid/bluetooth/BluetoothSecureManager;

    if-eqz v0, :cond_0

    .line 128
    sget-object v0, Landroid/bluetooth/BluetoothSecureManager;->This:Landroid/bluetooth/BluetoothSecureManager;

    .line 134
    :goto_0
    return-object v0

    .line 130
    :cond_0
    const-class v1, Landroid/bluetooth/BluetoothSecureManager;

    monitor-enter v1

    .line 131
    :try_start_0
    sget-object v0, Landroid/bluetooth/BluetoothSecureManager;->This:Landroid/bluetooth/BluetoothSecureManager;

    if-nez v0, :cond_1

    .line 132
    new-instance v0, Landroid/bluetooth/BluetoothSecureManager;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothSecureManager;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothSecureManager;->This:Landroid/bluetooth/BluetoothSecureManager;

    .line 133
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    sget-object v0, Landroid/bluetooth/BluetoothSecureManager;->This:Landroid/bluetooth/BluetoothSecureManager;

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static loadSecureManager()Landroid/bluetooth/IBluetoothSecureManagerService;
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 244
    :try_start_0
    const-string v5, "android.os.ServiceManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 246
    .local v0, ServiceManager:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v5, "BluetoothSecureManager"

    const-string v6, "calling getMethod for getService"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const-string v5, "getService"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 249
    .local v3, getService:Ljava/lang/reflect/Method;
    const-string v5, "BluetoothSecureManager"

    const-string v6, "calling getService"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "bluetooth_secure_mode_manager"

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 252
    .local v1, binder:Landroid/os/IBinder;
    const-string v5, "BluetoothSecureManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getService return binder: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-static {v1}, Landroid/bluetooth/IBluetoothSecureManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothSecureManagerService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 256
    .end local v1           #binder:Landroid/os/IBinder;
    .end local v3           #getService:Ljava/lang/reflect/Method;
    :goto_0
    return-object v4

    .line 254
    :catch_0
    move-exception v2

    .line 255
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "BluetoothSecureManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "load bt secure manager failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addWhiteList(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 1
    .parameter "name"
    .parameter "cod"
    .parameter "uuids"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0, p1, p2, p3}, Landroid/bluetooth/IBluetoothSecureManagerService;->addWhiteList(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public enableSecureMode(Z)Z
    .locals 1
    .parameter "enable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothSecureManagerService;->enableSecureMode(Z)Z

    move-result v0

    return v0
.end method

.method public enableWhiteList(Z)Z
    .locals 1
    .parameter "enable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothSecureManagerService;->enableWhiteList(Z)Z

    move-result v0

    return v0
.end method

.method public getSecureModeSetting(Ljava/lang/String;)I
    .locals 1
    .parameter "valueName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothSecureManagerService;->getSecureModeSetting(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getWhiteListCod(I)I
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothSecureManagerService;->getWhiteListCod(I)I

    move-result v0

    return v0
.end method

.method public getWhiteListFirstIndex()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothSecureManagerService;->getWhiteListFirstIndex()I

    move-result v0

    return v0
.end method

.method public getWhiteListName(I)Ljava/lang/String;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothSecureManagerService;->getWhiteListName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWhiteListNextIndex(I)I
    .locals 1
    .parameter "currentIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothSecureManagerService;->getWhiteListNextIndex(I)I

    move-result v0

    return v0
.end method

.method public getWhiteListUuids(I)[Ljava/lang/String;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 231
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothSecureManagerService;->getWhiteListUuids(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSecureModeEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothSecureManagerService;->isSecureModeEnabled()Z

    move-result v0

    return v0
.end method

.method public isWhiteListEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothSecureManagerService;->isWhiteListEnabled()Z

    move-result v0

    return v0
.end method

.method public removeWhiteList(Ljava/lang/String;I)Z
    .locals 1
    .parameter "name"
    .parameter "cod"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0, p1, p2}, Landroid/bluetooth/IBluetoothSecureManagerService;->removeWhiteList(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public setSecureModeSetting(Ljava/lang/String;I)Z
    .locals 1
    .parameter "valueName"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Landroid/bluetooth/BluetoothSecureManager;->mService:Landroid/bluetooth/IBluetoothSecureManagerService;

    invoke-interface {v0, p1, p2}, Landroid/bluetooth/IBluetoothSecureManagerService;->setSecureModeSetting(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
