.class public Lcom/nuance/connect/language/KLConfiguration;
.super Ljava/lang/Object;
.source "KLConfiguration.java"


# static fields
.field private static final CONFIGURATION_ALLOW_CELLULAR:Ljava/lang/String; = "CONFIGURATION_ALLOW_CELLULAR"

.field private static final CONFIGURATION_ALLOW_ROAMING:Ljava/lang/String; = "CONFIGURATION_ALLOW_ROAMING"

.field private static final CONFIGURATION_ALLOW_WIFI:Ljava/lang/String; = "CONFIGURATION_ALLOW_WIFI"

.field private static final CONFIGURATION_DOWNLOAD_IDLE_TIMEOUT:Ljava/lang/String; = "CONFIGURATION_DOWNLOAD_IDLE_TIMEOUT"

.field private static final CONFIGURATION_REFRESH_INTERVAL:Ljava/lang/String; = "CONFIGURATION_REFRESH_INTERVAL"

.field private static final CONFIGURATION_TOS_ACCEPTED:Ljava/lang/String; = "CONFIGURATION_TOS_ACCEPTED"


# instance fields
.field private cellularAllowed:Z

.field private downloadIdleTimeout:I

.field private manager:Lcom/nuance/connect/language/KLManager;

.field private refreshInterval:I

.field private roamingAllowed:Z

.field private store:Lcom/nuance/swype/connect/store/PersistentDataStore;

.field private tosAccepted:Z

.field private wifiAllowed:Z


# direct methods
.method protected constructor <init>(Lcom/nuance/connect/language/KLManager;Lcom/nuance/swype/connect/store/PersistentDataStore;)V
    .locals 2
    .parameter "manager"
    .parameter "store"

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v1, p0, Lcom/nuance/connect/language/KLConfiguration;->cellularAllowed:Z

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/language/KLConfiguration;->wifiAllowed:Z

    .line 22
    iput-boolean v1, p0, Lcom/nuance/connect/language/KLConfiguration;->roamingAllowed:Z

    .line 23
    iput-boolean v1, p0, Lcom/nuance/connect/language/KLConfiguration;->tosAccepted:Z

    .line 24
    const v0, 0x15180

    iput v0, p0, Lcom/nuance/connect/language/KLConfiguration;->refreshInterval:I

    .line 25
    const/16 v0, 0x1e

    iput v0, p0, Lcom/nuance/connect/language/KLConfiguration;->downloadIdleTimeout:I

    .line 28
    iput-object p1, p0, Lcom/nuance/connect/language/KLConfiguration;->manager:Lcom/nuance/connect/language/KLManager;

    .line 29
    iput-object p2, p0, Lcom/nuance/connect/language/KLConfiguration;->store:Lcom/nuance/swype/connect/store/PersistentDataStore;

    .line 30
    invoke-direct {p0}, Lcom/nuance/connect/language/KLConfiguration;->loadStoredSettings()V

    .line 31
    return-void
.end method

.method private loadStoredSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 34
    iget-object v0, p0, Lcom/nuance/connect/language/KLConfiguration;->store:Lcom/nuance/swype/connect/store/PersistentDataStore;

    const-string v1, "CONFIGURATION_TOS_ACCEPTED"

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/connect/language/KLConfiguration;->tosAccepted:Z

    .line 35
    iget-object v0, p0, Lcom/nuance/connect/language/KLConfiguration;->store:Lcom/nuance/swype/connect/store/PersistentDataStore;

    const-string v1, "CONFIGURATION_ALLOW_CELLULAR"

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/connect/language/KLConfiguration;->cellularAllowed:Z

    .line 36
    iget-object v0, p0, Lcom/nuance/connect/language/KLConfiguration;->store:Lcom/nuance/swype/connect/store/PersistentDataStore;

    const-string v1, "CONFIGURATION_ALLOW_WIFI"

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/connect/language/KLConfiguration;->wifiAllowed:Z

    .line 37
    iget-object v0, p0, Lcom/nuance/connect/language/KLConfiguration;->store:Lcom/nuance/swype/connect/store/PersistentDataStore;

    const-string v1, "CONFIGURATION_ALLOW_ROAMING"

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nuance/connect/language/KLConfiguration;->roamingAllowed:Z

    .line 38
    iget-object v0, p0, Lcom/nuance/connect/language/KLConfiguration;->store:Lcom/nuance/swype/connect/store/PersistentDataStore;

    const-string v1, "CONFIGURATION_REFRESH_INTERVAL"

    iget v2, p0, Lcom/nuance/connect/language/KLConfiguration;->refreshInterval:I

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/language/KLConfiguration;->refreshInterval:I

    .line 39
    iget-object v0, p0, Lcom/nuance/connect/language/KLConfiguration;->store:Lcom/nuance/swype/connect/store/PersistentDataStore;

    const-string v1, "CONFIGURATION_DOWNLOAD_IDLE_TIMEOUT"

    iget v2, p0, Lcom/nuance/connect/language/KLConfiguration;->downloadIdleTimeout:I

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/language/KLConfiguration;->downloadIdleTimeout:I

    .line 40
    return-void
.end method

.method private saveStoredSettings()V
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nuance/connect/language/KLConfiguration;->store:Lcom/nuance/swype/connect/store/PersistentDataStore;

    const-string v1, "CONFIGURATION_TOS_ACCEPTED"

    iget-boolean v2, p0, Lcom/nuance/connect/language/KLConfiguration;->tosAccepted:Z

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    .line 44
    iget-object v0, p0, Lcom/nuance/connect/language/KLConfiguration;->store:Lcom/nuance/swype/connect/store/PersistentDataStore;

    const-string v1, "CONFIGURATION_ALLOW_CELLULAR"

    iget-boolean v2, p0, Lcom/nuance/connect/language/KLConfiguration;->cellularAllowed:Z

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    .line 45
    iget-object v0, p0, Lcom/nuance/connect/language/KLConfiguration;->store:Lcom/nuance/swype/connect/store/PersistentDataStore;

    const-string v1, "CONFIGURATION_ALLOW_WIFI"

    iget-boolean v2, p0, Lcom/nuance/connect/language/KLConfiguration;->wifiAllowed:Z

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    .line 46
    iget-object v0, p0, Lcom/nuance/connect/language/KLConfiguration;->store:Lcom/nuance/swype/connect/store/PersistentDataStore;

    const-string v1, "CONFIGURATION_ALLOW_ROAMING"

    iget-boolean v2, p0, Lcom/nuance/connect/language/KLConfiguration;->roamingAllowed:Z

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    .line 47
    iget-object v0, p0, Lcom/nuance/connect/language/KLConfiguration;->store:Lcom/nuance/swype/connect/store/PersistentDataStore;

    const-string v1, "CONFIGURATION_REFRESH_INTERVAL"

    iget v2, p0, Lcom/nuance/connect/language/KLConfiguration;->refreshInterval:I

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveInt(Ljava/lang/String;I)Z

    .line 48
    iget-object v0, p0, Lcom/nuance/connect/language/KLConfiguration;->store:Lcom/nuance/swype/connect/store/PersistentDataStore;

    const-string v1, "CONFIGURATION_DOWNLOAD_IDLE_TIMEOUT"

    iget v2, p0, Lcom/nuance/connect/language/KLConfiguration;->downloadIdleTimeout:I

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveInt(Ljava/lang/String;I)Z

    .line 49
    return-void
.end method


# virtual methods
.method public allowCellular()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/nuance/connect/language/KLConfiguration;->cellularAllowed:Z

    return v0
.end method

.method public allowRoaming()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/nuance/connect/language/KLConfiguration;->roamingAllowed:Z

    return v0
.end method

.method public allowWifi()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/nuance/connect/language/KLConfiguration;->wifiAllowed:Z

    return v0
.end method

.method public enableCellular(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/nuance/connect/language/KLConfiguration;->cellularAllowed:Z

    .line 60
    iget-object v0, p0, Lcom/nuance/connect/language/KLConfiguration;->manager:Lcom/nuance/connect/language/KLManager;

    invoke-virtual {v0}, Lcom/nuance/connect/language/KLManager;->sendCellularDataState()V

    .line 61
    iget-object v0, p0, Lcom/nuance/connect/language/KLConfiguration;->manager:Lcom/nuance/connect/language/KLManager;

    invoke-virtual {v0}, Lcom/nuance/connect/language/KLManager;->onConnectivityChanged()V

    .line 62
    invoke-direct {p0}, Lcom/nuance/connect/language/KLConfiguration;->saveStoredSettings()V

    .line 63
    return-void
.end method

.method public enableRoaming(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/nuance/connect/language/KLConfiguration;->roamingAllowed:Z

    .line 86
    iget-object v0, p0, Lcom/nuance/connect/language/KLConfiguration;->manager:Lcom/nuance/connect/language/KLManager;

    invoke-virtual {v0}, Lcom/nuance/connect/language/KLManager;->sendRoamingState()V

    .line 87
    iget-object v0, p0, Lcom/nuance/connect/language/KLConfiguration;->manager:Lcom/nuance/connect/language/KLManager;

    invoke-virtual {v0}, Lcom/nuance/connect/language/KLManager;->onConnectivityChanged()V

    .line 88
    invoke-direct {p0}, Lcom/nuance/connect/language/KLConfiguration;->saveStoredSettings()V

    .line 89
    return-void
.end method

.method public enableWiFi(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/nuance/connect/language/KLConfiguration;->wifiAllowed:Z

    .line 73
    iget-object v0, p0, Lcom/nuance/connect/language/KLConfiguration;->manager:Lcom/nuance/connect/language/KLManager;

    invoke-virtual {v0}, Lcom/nuance/connect/language/KLManager;->sendWifiState()V

    .line 74
    iget-object v0, p0, Lcom/nuance/connect/language/KLConfiguration;->manager:Lcom/nuance/connect/language/KLManager;

    invoke-virtual {v0}, Lcom/nuance/connect/language/KLManager;->onConnectivityChanged()V

    .line 75
    invoke-direct {p0}, Lcom/nuance/connect/language/KLConfiguration;->saveStoredSettings()V

    .line 76
    return-void
.end method

.method public getDownloadIdleTimeout()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lcom/nuance/connect/language/KLConfiguration;->downloadIdleTimeout:I

    return v0
.end method

.method public getRefreshInterval()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/nuance/connect/language/KLConfiguration;->refreshInterval:I

    return v0
.end method

.method public isTOSAccepted()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/nuance/connect/language/KLConfiguration;->tosAccepted:Z

    return v0
.end method

.method public setDownloadIdleTimeout(I)V
    .locals 2
    .parameter "seconds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/connect/language/KLException;
        }
    .end annotation

    .prologue
    .line 176
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 177
    new-instance v0, Lcom/nuance/connect/language/KLException;

    const/16 v1, 0x70

    invoke-direct {v0, v1}, Lcom/nuance/connect/language/KLException;-><init>(I)V

    throw v0

    .line 179
    :cond_0
    iput p1, p0, Lcom/nuance/connect/language/KLConfiguration;->downloadIdleTimeout:I

    .line 180
    iget-object v0, p0, Lcom/nuance/connect/language/KLConfiguration;->manager:Lcom/nuance/connect/language/KLManager;

    invoke-virtual {v0}, Lcom/nuance/connect/language/KLManager;->sendDownloadIdleTimeout()V

    .line 182
    return-void
.end method

.method public setRefreshInterval(I)V
    .locals 1
    .parameter "seconds"

    .prologue
    .line 101
    iput p1, p0, Lcom/nuance/connect/language/KLConfiguration;->refreshInterval:I

    .line 102
    invoke-direct {p0}, Lcom/nuance/connect/language/KLConfiguration;->saveStoredSettings()V

    .line 103
    iget-object v0, p0, Lcom/nuance/connect/language/KLConfiguration;->manager:Lcom/nuance/connect/language/KLManager;

    invoke-virtual {v0}, Lcom/nuance/connect/language/KLManager;->sendRefreshFrequency()V

    .line 104
    return-void
.end method

.method public userHasAcceptedTOS()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/connect/language/KLConfiguration;->tosAccepted:Z

    .line 126
    invoke-direct {p0}, Lcom/nuance/connect/language/KLConfiguration;->saveStoredSettings()V

    .line 127
    return-void
.end method
