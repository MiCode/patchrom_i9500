.class public Lcom/nuance/swype/connect/manager/AccountManager;
.super Lcom/nuance/swype/connect/manager/AbstractCommandManager;
.source "AccountManager.java"


# static fields
.field public static final ACCOUNT_FIRST_START:Ljava/lang/String; = "account_FIRST_START"

.field public static final ACCOUNT_PREF:Ljava/lang/String; = "account_ACCOUNT"

.field private static final ACCOUNT_REGISTRATION_ALARM:Ljava/lang/String; = "account_REGISTRATION_ALARM"

.field public static final ALARM_TYPE_REGISTRATION_ALERT:Ljava/lang/String; = "REGISTRATION_ALERT"

.field public static final COMMAND_ACCOUNT:Ljava/lang/String; = "account"

.field public static final COMMAND_ACCOUNT_CHECK:Ljava/lang/String; = "accountCheck"

.field public static final COMMAND_DELETE_ACCOUNT:Ljava/lang/String; = "deleteAccount"

.field public static final COMMAND_DEVICE_LIST:Ljava/lang/String; = "deviceList"

.field public static final COMMAND_FAMILY:Ljava/lang/String; = "account"

.field public static final COMMAND_NAME_DEVICE:Ljava/lang/String; = "nameDevice"

.field public static final COMMAND_REGISTER:Ljava/lang/String; = "register"

.field public static final COMMAND_REVERIFY:Ljava/lang/String; = "reverify"

.field public static final COMMAND_UNLINK_DEVICE:Ljava/lang/String; = "unlinkDevice"

.field public static final COMMAND_VERIFY:Ljava/lang/String; = "verify"

.field public static final COMMAND_VERSION:I = 0x5

.field public static final DEVICE_TYPE_STRING_TRANSLATED:Ljava/lang/String; = "account_DEVICE_TYPE_STRING"

.field public static final MANAGER_NAME:Ljava/lang/String; = "account"

.field private static final MESSAGES_HANDLED:[I = null

.field private static final NOTIFICATION_ID:I = 0x3491992

.field private static final REGISTRATION_ALARM_DELAY:I = 0x7


# instance fields
.field private final accountList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/swype/connect/api/ConnectAccount;",
            ">;"
        }
    .end annotation
.end field

.field private accountListener:Lcom/nuance/swype/connect/manager/interfaces/AccountListener;

.field private activeAccount:Lcom/nuance/swype/connect/api/ConnectAccount;

.field private deviceTypeString:Ljava/lang/String;

.field private firstStart:Z

.field private isDevBuild:Z

.field private isPrefsLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nuance/swype/connect/manager/AccountManager;->MESSAGES_HANDLED:[I

    return-void

    :array_0
    .array-data 0x4
        0xfdt 0x0t 0x0t 0x0t
        0xfet 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0x0t 0x1t 0x0t 0x0t
        0x1t 0x1t 0x0t 0x0t
        0x2t 0x1t 0x0t 0x0t
        0x4t 0x1t 0x0t 0x0t
        0x3t 0x1t 0x0t 0x0t
        0x5t 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/nuance/swype/connect/ConnectClient;)V
    .locals 6
    .parameter "ctx"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 157
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    .line 103
    iput-boolean v4, p0, Lcom/nuance/swype/connect/manager/AccountManager;->firstStart:Z

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->accountList:Ljava/util/Map;

    .line 127
    iput-boolean v5, p0, Lcom/nuance/swype/connect/manager/AccountManager;->isDevBuild:Z

    .line 132
    iput-boolean v5, p0, Lcom/nuance/swype/connect/manager/AccountManager;->isPrefsLoaded:Z

    .line 140
    new-instance v0, Lcom/nuance/swype/connect/manager/AccountManager$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/connect/manager/AccountManager$1;-><init>(Lcom/nuance/swype/connect/manager/AccountManager;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->accountListener:Lcom/nuance/swype/connect/manager/interfaces/AccountListener;

    .line 158
    const-string v0, "[AccountManager] AccountManager()"

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 159
    const/4 v0, 0x5

    iput v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->version:I

    .line 160
    const-string v0, "account"

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->commandFamily:Ljava/lang/String;

    .line 161
    sget-object v0, Lcom/nuance/swype/connect/manager/AccountManager;->MESSAGES_HANDLED:[I

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->messages:[I

    .line 163
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "account"

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 168
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "register"

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 173
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "accountCheck"

    new-array v2, v4, [I

    aput v4, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 177
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "verify"

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 182
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "reverify"

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 187
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "unlinkDevice"

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 192
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "nameDevice"

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 197
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "deviceList"

    new-array v2, v4, [I

    aput v4, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 201
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "deleteAccount"

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->addCommand(Ljava/lang/String;[I)V

    .line 205
    return-void

    .line 163
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 168
    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data

    .line 177
    :array_2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data

    .line 182
    :array_3
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data

    .line 187
    :array_4
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 192
    :array_5
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 201
    :array_6
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/nuance/swype/connect/manager/AccountManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->sendAccount()V

    return-void
.end method

.method private addAccount(Lcom/nuance/swype/connect/api/ConnectAccount;)V
    .locals 2
    .parameter "account"

    .prologue
    .line 978
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->accountList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/swype/connect/api/ConnectAccount;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 979
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->accountList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/swype/connect/api/ConnectAccount;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    :cond_0
    return-void
.end method

.method private addAccounts([Ljava/lang/String;)V
    .locals 8
    .parameter "accounts"

    .prologue
    .line 957
    const-string v4, "AccountManager.addAccounts() "

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 958
    if-eqz p1, :cond_1

    .line 959
    move-object v1, p1

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 960
    .local v0, account:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AccountManager.addAccounts() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 961
    new-instance v4, Lcom/nuance/swype/connect/api/ConnectAccount;

    const/4 v5, 0x0

    const/4 v6, 0x1

    sget-object v7, Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;->REGISTERED_ANDROID_ACCOUNT:Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;

    invoke-direct {v4, v5, v0, v6, v7}, Lcom/nuance/swype/connect/api/ConnectAccount;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;)V

    invoke-direct {p0, v4}, Lcom/nuance/swype/connect/manager/AccountManager;->addAccount(Lcom/nuance/swype/connect/api/ConnectAccount;)V

    .line 959
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 964
    .end local v0           #account:Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->savePreferences()V

    .line 968
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :goto_1
    return-void

    .line 966
    :cond_1
    const-string v4, "addAccounts() list is null"

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private buildDeviceName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1111
    .local v0, name:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/AccountManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectClient;->getBuildProps()Lcom/nuance/swype/connect/util/BuildProps;

    move-result-object v1

    const-string v2, "MANUFACTURER"

    invoke-interface {v1, v2}, Lcom/nuance/swype/connect/util/BuildProps;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private cleanHouse()V
    .locals 5

    .prologue
    .line 936
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/nuance/swype/connect/manager/AccountManager;->activeAccount:Lcom/nuance/swype/connect/api/ConnectAccount;

    .line 937
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/AccountManager;->accountList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/connect/api/ConnectAccount;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 938
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 940
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/connect/api/ConnectAccount;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/api/ConnectAccount;

    .line 941
    .local v0, account:Lcom/nuance/swype/connect/api/ConnectAccount;
    invoke-virtual {v0}, Lcom/nuance/swype/connect/api/ConnectAccount;->getCreationMethod()Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;

    move-result-object v3

    sget-object v4, Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;->USER_CREATED:Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 942
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 944
    :cond_0
    invoke-virtual {v0}, Lcom/nuance/swype/connect/api/ConnectAccount;->reset()V

    goto :goto_0

    .line 947
    .end local v0           #account:Lcom/nuance/swype/connect/api/ConnectAccount;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/connect/api/ConnectAccount;>;"
    :cond_1
    return-void
.end method

.method private containsAccount(Ljava/lang/String;)Z
    .locals 2
    .parameter "identifier"

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->accountList:Ljava/util/Map;

    invoke-static {p1}, Lcom/nuance/swype/connect/util/StringUtils;->normalizeEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private deleteActiveAccount(ZZ)V
    .locals 2
    .parameter "permanently"
    .parameter "sendStatus"

    .prologue
    .line 1233
    if-eqz p1, :cond_2

    .line 1234
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->cleanHouse()V

    .line 1240
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->savePreferences()V

    .line 1241
    if-eqz p2, :cond_1

    .line 1242
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->sendStatusUpdate()V

    .line 1244
    :cond_1
    return-void

    .line 1236
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->activeAccount:Lcom/nuance/swype/connect/api/ConnectAccount;

    if-eqz v0, :cond_0

    .line 1237
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->activeAccount:Lcom/nuance/swype/connect/api/ConnectAccount;

    sget-object v1, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->PENDING_DELETE:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/api/ConnectAccount;->setAccountState(Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;)V

    goto :goto_0
.end method

.method private deleteDevice(Ljava/lang/String;Z)V
    .locals 1
    .parameter "deviceId"
    .parameter "permanently"

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1208
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/nuance/swype/connect/manager/AccountManager;->deleteActiveAccount(ZZ)V

    .line 1218
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->savePreferences()V

    .line 1219
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->sendStatusUpdate()V

    .line 1220
    return-void

    .line 1209
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->activeAccount:Lcom/nuance/swype/connect/api/ConnectAccount;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->activeAccount:Lcom/nuance/swype/connect/api/ConnectAccount;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/api/ConnectAccount;->getDeviceCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 1210
    :cond_2
    const-string v0, "Attempting to Delete a device on an inactive account, ignoring."

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 1211
    :cond_3
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->activeAccount:Lcom/nuance/swype/connect/api/ConnectAccount;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/api/ConnectAccount;->getDevices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1212
    if-eqz p2, :cond_4

    .line 1213
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->activeAccount:Lcom/nuance/swype/connect/api/ConnectAccount;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/api/ConnectAccount;->getDevices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1215
    :cond_4
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->activeAccount:Lcom/nuance/swype/connect/api/ConnectAccount;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/api/ConnectAccount;->getDevices()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->markAsDeleted()V

    goto :goto_0
.end method

.method private findActiveAccount()Lcom/nuance/swype/connect/api/ConnectAccount;
    .locals 5

    .prologue
    .line 1071
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/AccountManager;->accountList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1072
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/connect/api/ConnectAccount;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/api/ConnectAccount;

    .line 1073
    .local v0, acct:Lcom/nuance/swype/connect/api/ConnectAccount;
    invoke-virtual {v0}, Lcom/nuance/swype/connect/api/ConnectAccount;->getAccountState()Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    move-result-object v3

    sget-object v4, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->REGISTERED:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/nuance/swype/connect/api/ConnectAccount;->getAccountState()Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    move-result-object v3

    sget-object v4, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->VERIFIED:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1078
    .end local v0           #acct:Lcom/nuance/swype/connect/api/ConnectAccount;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/connect/api/ConnectAccount;>;"
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private finishAccountActivation(Ljava/lang/String;)V
    .locals 3
    .parameter "identifier"

    .prologue
    .line 1042
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/AccountManager;->getAccount(Ljava/lang/String;)Lcom/nuance/swype/connect/api/ConnectAccount;

    move-result-object v0

    .line 1043
    .local v0, acct:Lcom/nuance/swype/connect/api/ConnectAccount;
    if-eqz v0, :cond_0

    .line 1044
    invoke-virtual {v0}, Lcom/nuance/swype/connect/api/ConnectAccount;->verify()V

    .line 1045
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->sendDeviceList()V

    .line 1046
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->sendStatusUpdate()V

    .line 1047
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->savePreferences()V

    .line 1049
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->sendAccount()V

    .line 1051
    new-instance v1, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/AccountManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-direct {v1, v2}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    const-string v2, "ACCOUNT_CREATED_DESC"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setMessageId(Ljava/lang/String;)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v1

    const v2, 0x3491992

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setId(I)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v1

    const-string v2, "ACCOUNT_CREATED_TITLE"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setTitleId(Ljava/lang/String;)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setFlagMultiline(Z)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->send()Lcom/nuance/swype/connect/util/StatusBarNotification;

    .line 1057
    return-void
.end method

.method private finishRegisterAccount(Ljava/lang/String;I)V
    .locals 5
    .parameter "identifier"
    .parameter "type"

    .prologue
    .line 1090
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/AccountManager;->accountList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1091
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/connect/api/ConnectAccount;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/swype/connect/api/ConnectAccount;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/api/ConnectAccount;->reset()V

    goto :goto_0

    .line 1093
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/connect/api/ConnectAccount;>;"
    :cond_0
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/AccountManager;->containsAccount(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1094
    new-instance v0, Lcom/nuance/swype/connect/api/ConnectAccount;

    const/4 v3, 0x0

    sget-object v4, Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;->USER_CREATED:Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;

    invoke-direct {v0, v3, p1, p2, v4}, Lcom/nuance/swype/connect/api/ConnectAccount;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;)V

    .line 1096
    .local v0, account:Lcom/nuance/swype/connect/api/ConnectAccount;
    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/manager/AccountManager;->addAccount(Lcom/nuance/swype/connect/api/ConnectAccount;)V

    .line 1098
    .end local v0           #account:Lcom/nuance/swype/connect/api/ConnectAccount;
    :cond_1
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/AccountManager;->getAccount(Ljava/lang/String;)Lcom/nuance/swype/connect/api/ConnectAccount;

    move-result-object v3

    iput-object v3, p0, Lcom/nuance/swype/connect/manager/AccountManager;->activeAccount:Lcom/nuance/swype/connect/api/ConnectAccount;

    .line 1099
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/AccountManager;->activeAccount:Lcom/nuance/swype/connect/api/ConnectAccount;

    sget-object v4, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->REGISTERED:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/connect/api/ConnectAccount;->setAccountState(Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;)V

    .line 1100
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->savePreferences()V

    .line 1101
    return-void
.end method

.method private getAccount(Ljava/lang/String;)Lcom/nuance/swype/connect/api/ConnectAccount;
    .locals 2
    .parameter "identifier"

    .prologue
    .line 993
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->accountList:Ljava/util/Map;

    invoke-static {p1}, Lcom/nuance/swype/connect/util/StringUtils;->normalizeEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/api/ConnectAccount;

    return-object v0
.end method

.method private getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1122
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TABLET"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "MOBILE_PHONE"

    goto :goto_0
.end method

.method private getDeviceTypeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->deviceTypeString:Ljava/lang/String;

    return-object v0
.end method

.method private getRegisteringAccount()Lcom/nuance/swype/connect/api/ConnectAccount;
    .locals 5

    .prologue
    .line 1026
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/AccountManager;->accountList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1027
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/connect/api/ConnectAccount;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/api/ConnectAccount;

    .line 1028
    .local v0, acct:Lcom/nuance/swype/connect/api/ConnectAccount;
    invoke-virtual {v0}, Lcom/nuance/swype/connect/api/ConnectAccount;->getAccountState()Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    move-result-object v3

    sget-object v4, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->REGISTERED:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    invoke-virtual {v3, v4}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1032
    .end local v0           #acct:Lcom/nuance/swype/connect/api/ConnectAccount;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/connect/api/ConnectAccount;>;"
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTablet()Z
    .locals 4

    .prologue
    .line 1144
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/AccountManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/ConnectClient;->getBuildProps()Lcom/nuance/swype/connect/util/BuildProps;

    move-result-object v2

    const-string v3, "SCREENLAYOUT_SIZE"

    invoke-interface {v2, v3}, Lcom/nuance/swype/connect/util/BuildProps;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1145
    .local v1, screenLayoutSize:I
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/AccountManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/ConnectClient;->getBuildProps()Lcom/nuance/swype/connect/util/BuildProps;

    move-result-object v2

    const-string v3, "SCREEN_DENSITY"

    invoke-interface {v2, v3}, Lcom/nuance/swype/connect/util/BuildProps;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1146
    .local v0, dpi:I
    const/16 v2, 0xa0

    if-lt v0, v2, :cond_0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadPreferences()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 904
    iget-boolean v1, p0, Lcom/nuance/swype/connect/manager/AccountManager;->isPrefsLoaded:Z

    if-nez v1, :cond_1

    .line 905
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/AccountManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v1

    const-string v2, "account_FIRST_START"

    invoke-interface {v1, v2, v4}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nuance/swype/connect/manager/AccountManager;->firstStart:Z

    .line 906
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/AccountManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v1

    const-string v2, "account_DEVICE_TYPE_STRING"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/connect/manager/AccountManager;->deviceTypeString:Ljava/lang/String;

    .line 908
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/AccountManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v1

    const-string v2, "account_ACCOUNT"

    invoke-interface {v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 910
    .local v0, savedAccounts:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/connect/api/ConnectAccount;>;"
    if-eqz v0, :cond_0

    .line 911
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/AccountManager;->accountList:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 912
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->findActiveAccount()Lcom/nuance/swype/connect/api/ConnectAccount;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/connect/manager/AccountManager;->activeAccount:Lcom/nuance/swype/connect/api/ConnectAccount;

    .line 914
    :cond_0
    iput-boolean v4, p0, Lcom/nuance/swype/connect/manager/AccountManager;->isPrefsLoaded:Z

    .line 916
    .end local v0           #savedAccounts:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/nuance/swype/connect/api/ConnectAccount;>;"
    :cond_1
    return-void
.end method

.method private onResponseAccount(Lcom/nuance/swype/connect/util/Response;)V
    .locals 10
    .parameter "response"

    .prologue
    .line 436
    const-string v8, "[AccountManager] onResponseAccount()"

    invoke-static {v8}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 437
    iget v8, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    .line 438
    iget-object v8, p1, Lcom/nuance/swype/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v9, "71"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 439
    .local v1, accountId:Ljava/lang/String;
    iget-object v8, p1, Lcom/nuance/swype/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v9, "72"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/nuance/swype/connect/util/StringUtils;->normalizeEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 440
    .local v5, identifier:Ljava/lang/String;
    iget-object v8, p1, Lcom/nuance/swype/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v9, "25"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 441
    .local v7, type:I
    iget-object v8, p1, Lcom/nuance/swype/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v9, "73"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 442
    .local v2, deviceCount:I
    iget-object v8, p0, Lcom/nuance/swype/connect/manager/AccountManager;->accountList:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 443
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/connect/api/ConnectAccount;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 446
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/api/ConnectAccount;

    .line 447
    .local v0, account:Lcom/nuance/swype/connect/api/ConnectAccount;
    invoke-virtual {v0}, Lcom/nuance/swype/connect/api/ConnectAccount;->getType()I

    move-result v8

    if-eq v8, v7, :cond_0

    .line 450
    const-string v8, "Account type returned from the server does not match stored account type"

    invoke-static {v8}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    .line 455
    :cond_0
    const/4 v6, 0x0

    .line 456
    .local v6, sendLinkNotification:Z
    iget-object v8, p0, Lcom/nuance/swype/connect/manager/AccountManager;->activeAccount:Lcom/nuance/swype/connect/api/ConnectAccount;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/nuance/swype/connect/manager/AccountManager;->activeAccount:Lcom/nuance/swype/connect/api/ConnectAccount;

    invoke-virtual {v8}, Lcom/nuance/swype/connect/api/ConnectAccount;->getAccountId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/nuance/swype/connect/manager/AccountManager;->activeAccount:Lcom/nuance/swype/connect/api/ConnectAccount;

    invoke-virtual {v8}, Lcom/nuance/swype/connect/api/ConnectAccount;->getAccountState()Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    move-result-object v8

    sget-object v9, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->VERIFIED:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    invoke-virtual {v8, v9}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 458
    :cond_1
    const/4 v6, 0x1

    .line 462
    :cond_2
    iput-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->activeAccount:Lcom/nuance/swype/connect/api/ConnectAccount;

    .line 463
    iget-object v8, p0, Lcom/nuance/swype/connect/manager/AccountManager;->activeAccount:Lcom/nuance/swype/connect/api/ConnectAccount;

    invoke-virtual {v8, v1}, Lcom/nuance/swype/connect/api/ConnectAccount;->setAccountId(Ljava/lang/String;)V

    .line 464
    iget-object v8, p0, Lcom/nuance/swype/connect/manager/AccountManager;->activeAccount:Lcom/nuance/swype/connect/api/ConnectAccount;

    invoke-virtual {v8, v2}, Lcom/nuance/swype/connect/api/ConnectAccount;->setDeviceCount(I)V

    .line 465
    iget-object v8, p0, Lcom/nuance/swype/connect/manager/AccountManager;->activeAccount:Lcom/nuance/swype/connect/api/ConnectAccount;

    invoke-virtual {v8}, Lcom/nuance/swype/connect/api/ConnectAccount;->verify()V

    .line 467
    if-eqz v6, :cond_3

    .line 469
    iget-object v8, p0, Lcom/nuance/swype/connect/manager/AccountManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v8}, Lcom/nuance/swype/connect/ConnectClient;->linkedAccount()V

    .line 471
    :cond_3
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->sendDeviceList()V

    goto :goto_0

    .line 474
    .end local v0           #account:Lcom/nuance/swype/connect/api/ConnectAccount;
    .end local v6           #sendLinkNotification:Z
    :cond_4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/nuance/swype/connect/api/ConnectAccount;

    invoke-virtual {v8}, Lcom/nuance/swype/connect/api/ConnectAccount;->reset()V

    goto :goto_0

    .line 477
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nuance/swype/connect/api/ConnectAccount;>;"
    :cond_5
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->sendPoll()V

    .line 486
    .end local v1           #accountId:Ljava/lang/String;
    .end local v2           #deviceCount:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #identifier:Ljava/lang/String;
    .end local v7           #type:I
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->sendStatusUpdate()V

    .line 487
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->savePreferences()V

    .line 488
    iget-object v8, p0, Lcom/nuance/swype/connect/manager/AccountManager;->managerStartState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    sget-object v9, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {v8, v9}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 489
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->managerStartComplete()V

    .line 491
    :cond_7
    return-void

    .line 478
    :cond_8
    iget v8, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    if-nez v8, :cond_6

    .line 481
    iget-object v8, p0, Lcom/nuance/swype/connect/manager/AccountManager;->activeAccount:Lcom/nuance/swype/connect/api/ConnectAccount;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/nuance/swype/connect/manager/AccountManager;->activeAccount:Lcom/nuance/swype/connect/api/ConnectAccount;

    invoke-virtual {v8}, Lcom/nuance/swype/connect/api/ConnectAccount;->getAccountState()Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    move-result-object v8

    sget-object v9, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->VERIFIED:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    invoke-virtual {v8, v9}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 482
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->cleanHouse()V

    .line 483
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->sendAccountCheck()V

    goto :goto_1
.end method

.method private onResponseAccountCheck(Lcom/nuance/swype/connect/util/Response;)V
    .locals 9
    .parameter "response"

    .prologue
    .line 592
    const-string v7, "[AccountManager] onResponseAccountCheck()"

    invoke-static {v7}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 593
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 594
    .local v6, validAccounts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p1, Lcom/nuance/swype/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v8, "74"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONArray;

    .line 595
    .local v3, jsAccounts:Lorg/json/JSONArray;
    if-eqz v3, :cond_1

    .line 596
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 598
    :try_start_0
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 599
    .local v4, o:Lorg/json/JSONObject;
    const-string v7, "72"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 600
    const-string v7, "72"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    .end local v4           #o:Lorg/json/JSONObject;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 602
    :catch_0
    move-exception v0

    .line 603
    .local v0, e:Lorg/json/JSONException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[AccountManager] JSONException "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    goto :goto_1

    .line 608
    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #i:I
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 609
    .local v5, recognizedAccount:Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/nuance/swype/connect/manager/AccountManager;->getAccount(Ljava/lang/String;)Lcom/nuance/swype/connect/api/ConnectAccount;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/nuance/swype/connect/api/ConnectAccount;->setExistsOnServer(Z)V

    goto :goto_2

    .line 611
    .end local v5           #recognizedAccount:Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->savePreferences()V

    .line 612
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->sendStatusUpdate()V

    .line 613
    return-void
.end method

.method private onResponseDeleteAccount(Lcom/nuance/swype/connect/util/Response;)V
    .locals 2
    .parameter "response"

    .prologue
    const/4 v1, 0x1

    .line 889
    const-string v0, "[AccountManager] onResponseDeleteAccount()"

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 890
    iget v0, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    if-ne v0, v1, :cond_0

    .line 891
    invoke-direct {p0, v1, v1}, Lcom/nuance/swype/connect/manager/AccountManager;->deleteActiveAccount(ZZ)V

    .line 892
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->sendPoll()V

    .line 894
    :cond_0
    return-void
.end method

.method private onResponseDeviceList(Lcom/nuance/swype/connect/util/Response;)V
    .locals 14
    .parameter "response"

    .prologue
    .line 803
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[AccountManager] onResponseDeviceList() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 804
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 805
    .local v8, devices:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;>;"
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/AccountManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/ConnectClient;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    .line 806
    .local v7, deviceId:Ljava/lang/String;
    iget v3, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 807
    iget-object v3, p1, Lcom/nuance/swype/connect/util/Response;->parameters:Ljava/util/HashMap;

    const-string v4, "75"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/json/JSONArray;

    .line 808
    .local v12, jsDevices:Lorg/json/JSONArray;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[AccountManager] count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 809
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v11, v3, :cond_4

    .line 811
    :try_start_0
    invoke-virtual {v12, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 812
    .local v13, o:Lorg/json/JSONObject;
    const-string v3, "16"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 813
    .local v2, tmpName:Ljava/lang/String;
    const-string v3, "5"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 814
    .local v1, tmpDeviceId:Ljava/lang/String;
    sget-object v6, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;->PHONE:Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;

    .line 817
    .local v6, type:Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 818
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->buildDeviceName()Ljava/lang/String;

    move-result-object v2

    .line 819
    invoke-direct {p0, v1, v2}, Lcom/nuance/swype/connect/manager/AccountManager;->sendNameDevice(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 823
    :cond_0
    :try_start_1
    const-string v3, "TABLET"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 824
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "TABLET"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 826
    sget-object v6, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;->TABLET:Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 840
    :cond_1
    :goto_1
    :try_start_2
    new-instance v0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;

    const-string v3, "76"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;-><init>(Ljava/lang/String;Ljava/lang/String;JZLcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;)V

    .line 843
    .local v0, device:Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 844
    invoke-virtual {v0}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 809
    .end local v0           #device:Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;
    .end local v1           #tmpDeviceId:Ljava/lang/String;
    .end local v2           #tmpName:Ljava/lang/String;
    .end local v6           #type:Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;
    .end local v13           #o:Lorg/json/JSONObject;
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 827
    .restart local v1       #tmpDeviceId:Ljava/lang/String;
    .restart local v2       #tmpName:Ljava/lang/String;
    .restart local v6       #type:Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;
    .restart local v13       #o:Lorg/json/JSONObject;
    :cond_2
    :try_start_3
    const-string v3, "MOBILE_PHONE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 828
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "MOBILE_PHONE"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 830
    sget-object v6, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;->PHONE:Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;

    goto :goto_1

    .line 831
    :cond_3
    const-string v3, "TV"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 832
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "TV"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 834
    sget-object v6, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;->TV:Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 836
    :catch_0
    move-exception v10

    .line 837
    .local v10, ex:Ljava/lang/IndexOutOfBoundsException;
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error setting the name for device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 846
    .end local v1           #tmpDeviceId:Ljava/lang/String;
    .end local v2           #tmpName:Ljava/lang/String;
    .end local v6           #type:Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice$DeviceType;
    .end local v10           #ex:Ljava/lang/IndexOutOfBoundsException;
    .end local v13           #o:Lorg/json/JSONObject;
    :catch_1
    move-exception v9

    .line 847
    .local v9, e:Lorg/json/JSONException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Json exception reading device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_2

    .line 850
    .end local v9           #e:Lorg/json/JSONException;
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 851
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/AccountManager;->activeAccount:Lcom/nuance/swype/connect/api/ConnectAccount;

    invoke-virtual {v3, v8}, Lcom/nuance/swype/connect/api/ConnectAccount;->addDevices(Ljava/util/List;)V

    .line 853
    :cond_5
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->sendStatusUpdate()V

    .line 854
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->savePreferences()V

    .line 856
    .end local v11           #i:I
    .end local v12           #jsDevices:Lorg/json/JSONArray;
    :cond_6
    return-void
.end method

.method private onResponseNameDevice(Lcom/nuance/swype/connect/util/Response;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 772
    const-string v0, "[AccountManager] onResponseNameDevice()"

    invoke-static {v0}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 773
    iget v0, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 776
    :cond_0
    return-void
.end method

.method private onResponseRegister(Lcom/nuance/swype/connect/util/Response;)V
    .locals 5
    .parameter "response"

    .prologue
    .line 527
    const-string v3, "[AccountManager] onResponseRegister()"

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 528
    iget v3, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 530
    iget-object v3, p1, Lcom/nuance/swype/connect/util/Response;->initialCommand:Lcom/nuance/swype/connect/util/Command;

    iget-object v3, v3, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v4, "72"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 531
    .local v1, identifier:Ljava/lang/String;
    iget-object v3, p1, Lcom/nuance/swype/connect/util/Response;->initialCommand:Lcom/nuance/swype/connect/util/Command;

    iget-object v3, v3, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v4, "25"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 532
    .local v2, type:I
    invoke-direct {p0, v1, v2}, Lcom/nuance/swype/connect/manager/AccountManager;->finishRegisterAccount(Ljava/lang/String;I)V

    .line 533
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->sendStatusUpdate()V

    .line 534
    iget-boolean v3, p0, Lcom/nuance/swype/connect/manager/AccountManager;->isDevBuild:Z

    if-eqz v3, :cond_0

    .line 535
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->sendAccount()V

    .line 538
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 539
    .local v0, extras:Landroid/os/Bundle;
    const-string v3, "DEFAULT_KEY"

    const-string v4, "CONNECT_ACTIVATION"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    new-instance v3, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    iget-object v4, p0, Lcom/nuance/swype/connect/manager/AccountManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-direct {v3, v4}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    const-string v4, "ACCOUNT_CHECK_EMAIL_DESC"

    invoke-virtual {v3, v4}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setMessageId(Ljava/lang/String;)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v3

    const v4, 0x3491992

    invoke-virtual {v3, v4}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setId(I)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v3

    const-string v4, "ENTER_ACTIVATION_CODE"

    invoke-virtual {v3, v4}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setTitleId(Ljava/lang/String;)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v3

    const-string v4, "com.nuance.swype.input.DisplaySettings"

    invoke-virtual {v3, v4}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setAction(Ljava/lang/String;)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setExtras(Landroid/os/Bundle;)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setFlagMultiline(Z)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->send()Lcom/nuance/swype/connect/util/StatusBarNotification;

    .line 551
    .end local v0           #extras:Landroid/os/Bundle;
    .end local v1           #identifier:Ljava/lang/String;
    .end local v2           #type:I
    :cond_1
    :goto_0
    return-void

    .line 548
    :cond_2
    iget v3, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    const/16 v4, 0xf

    if-ne v3, v4, :cond_1

    goto :goto_0
.end method

.method private onResponseReverify(Lcom/nuance/swype/connect/util/Response;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 689
    const-string v1, "[AccountManager] onResponseReverify()"

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 690
    iget v1, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 691
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 692
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "DEFAULT_KEY"

    const-string v2, "CONNECT_ACTIVATION"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    new-instance v1, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/AccountManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-direct {v1, v2}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    const-string v2, "ACCOUNT_CHECK_EMAIL_DESC"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setMessageId(Ljava/lang/String;)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v1

    const v2, 0x3491992

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setId(I)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v1

    const-string v2, "ENTER_ACTIVATION_CODE"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setTitleId(Ljava/lang/String;)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v1

    const-string v2, "com.nuance.swype.input.DisplaySettings"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setAction(Ljava/lang/String;)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setExtras(Landroid/os/Bundle;)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setFlagMultiline(Z)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->send()Lcom/nuance/swype/connect/util/StatusBarNotification;

    .line 703
    .end local v0           #extras:Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private onResponseUnlinkDevice(Lcom/nuance/swype/connect/util/Response;)V
    .locals 4
    .parameter "response"

    .prologue
    const/4 v3, 0x1

    .line 732
    const-string v1, "[AccountManager] onResponseUnlinkDevice()"

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 733
    iget v1, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    if-ne v1, v3, :cond_1

    .line 734
    iget-object v1, p1, Lcom/nuance/swype/connect/util/Response;->initialCommand:Lcom/nuance/swype/connect/util/Command;

    iget-object v1, v1, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v2, "5"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 736
    .local v0, deviceId:Ljava/lang/String;
    invoke-direct {p0, v0, v3}, Lcom/nuance/swype/connect/manager/AccountManager;->deleteDevice(Ljava/lang/String;Z)V

    .line 738
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/AccountManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectClient;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 740
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/AccountManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectClient;->invalidAccount()V

    .line 742
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->sendPoll()V

    .line 744
    .end local v0           #deviceId:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private onResponseVerify(Lcom/nuance/swype/connect/util/Response;)V
    .locals 4
    .parameter "response"

    .prologue
    const/16 v3, 0x8f

    .line 645
    const-string v1, "[AccountManager] onResponseVerify()"

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 646
    iget v1, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 647
    iget-object v1, p1, Lcom/nuance/swype/connect/util/Response;->initialCommand:Lcom/nuance/swype/connect/util/Command;

    iget-object v1, v1, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v2, "72"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 648
    .local v0, identifier:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/nuance/swype/connect/manager/AccountManager;->finishAccountActivation(Ljava/lang/String;)V

    .line 649
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/AccountManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const-string v2, "SUCCESS"

    invoke-virtual {v1, v3, v2}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILjava/lang/String;)V

    .line 659
    .end local v0           #identifier:Ljava/lang/String;
    :goto_0
    return-void

    .line 651
    :cond_0
    iget v1, p1, Lcom/nuance/swype/connect/util/Response;->status:I

    const/16 v2, 0x18

    if-ne v1, v2, :cond_1

    .line 652
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->cleanHouse()V

    .line 653
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->sendStatusUpdate()V

    goto :goto_0

    .line 655
    :cond_1
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/AccountManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const-string v2, "FAILURE"

    invoke-virtual {v1, v3, v2}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private savePreferences()V
    .locals 3

    .prologue
    .line 922
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "account_FIRST_START"

    iget-boolean v2, p0, Lcom/nuance/swype/connect/manager/AccountManager;->firstStart:Z

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveBoolean(Ljava/lang/String;Z)Z

    .line 923
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->accountList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 924
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "account_ACCOUNT"

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/AccountManager;->accountList:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveObject(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 928
    :goto_0
    return-void

    .line 926
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v0

    const-string v1, "account_ACCOUNT"

    invoke-interface {v0, v1}, Lcom/nuance/swype/connect/store/PersistentDataStore;->delete(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private sendAccount()V
    .locals 2

    .prologue
    .line 417
    const-string v1, "[AccountManager] sendAccount()"

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 418
    const-string v1, "account"

    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/manager/AccountManager;->createCommand(Ljava/lang/String;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 419
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/manager/AccountManager;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    .line 420
    return-void
.end method

.method private sendAccountCheck()V
    .locals 8

    .prologue
    .line 563
    const-string v6, "[AccountManager] sendAccountCheck()"

    invoke-static {v6}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 564
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 565
    .local v3, jsonAccounts:Lorg/json/JSONArray;
    iget-object v6, p0, Lcom/nuance/swype/connect/manager/AccountManager;->accountList:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/api/ConnectAccount;

    .line 566
    .local v0, account:Lcom/nuance/swype/connect/api/ConnectAccount;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 568
    .local v4, o:Lorg/json/JSONObject;
    :try_start_0
    const-string v6, "72"

    invoke-virtual {v0}, Lcom/nuance/swype/connect/api/ConnectAccount;->getIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 569
    const-string v6, "25"

    invoke-virtual {v0}, Lcom/nuance/swype/connect/api/ConnectAccount;->getType()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 570
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 571
    :catch_0
    move-exception v6

    goto :goto_0

    .line 574
    .end local v0           #account:Lcom/nuance/swype/connect/api/ConnectAccount;
    .end local v4           #o:Lorg/json/JSONObject;
    :cond_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 575
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 576
    .local v5, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "74"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    const-string v6, "accountCheck"

    invoke-virtual {p0, v6, v5}, Lcom/nuance/swype/connect/manager/AccountManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v1

    .line 578
    .local v1, command:Lcom/nuance/swype/connect/util/Command;
    iget-object v6, p0, Lcom/nuance/swype/connect/manager/AccountManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v6, v1}, Lcom/nuance/swype/connect/ConnectClient;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    .line 580
    .end local v1           #command:Lcom/nuance/swype/connect/util/Command;
    .end local v5           #parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-void
.end method

.method private sendDeleteAccount(Z)V
    .locals 6
    .parameter "deleteData"

    .prologue
    const/4 v5, 0x1

    .line 866
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[AccountManager] sendDeleteAccount("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 867
    const-string v2, "deleteAccount"

    invoke-virtual {p0, v2}, Lcom/nuance/swype/connect/manager/AccountManager;->createCommand(Ljava/lang/String;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 868
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    if-eqz p1, :cond_0

    .line 869
    iget-object v2, v0, Lcom/nuance/swype/connect/util/Command;->parameters:Ljava/util/HashMap;

    const-string v3, "94"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    :cond_0
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/AccountManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v2, v0}, Lcom/nuance/swype/connect/ConnectClient;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    .line 873
    const/4 v2, 0x0

    invoke-direct {p0, v2, v5}, Lcom/nuance/swype/connect/manager/AccountManager;->deleteActiveAccount(ZZ)V

    .line 874
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/AccountManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v2}, Lcom/nuance/swype/connect/ConnectClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 876
    .local v1, nm:Landroid/app/NotificationManager;
    const v2, 0x3491992

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 877
    return-void
.end method

.method private sendDeviceList()V
    .locals 2

    .prologue
    .line 787
    const-string v1, "[AccountManager] sendDeviceList()"

    invoke-static {v1}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 788
    const-string v1, "deviceList"

    invoke-virtual {p0, v1}, Lcom/nuance/swype/connect/manager/AccountManager;->createCommand(Ljava/lang/String;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 789
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nuance/swype/connect/util/Command;->allowDuplicateOfCommand:Z

    .line 790
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/AccountManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v1, v0}, Lcom/nuance/swype/connect/ConnectClient;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    .line 791
    return-void
.end method

.method private sendNameDevice(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "deviceId"
    .parameter "name"

    .prologue
    .line 754
    const-string v2, "[AccountManager] sendNameDevice()"

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 755
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 756
    .local v1, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "5"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    const-string v2, "16"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    const-string v2, "nameDevice"

    invoke-virtual {p0, v2, v1}, Lcom/nuance/swype/connect/manager/AccountManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 759
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/AccountManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v2, v0}, Lcom/nuance/swype/connect/ConnectClient;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    .line 760
    return-void
.end method

.method private sendPoll()V
    .locals 2

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->postMessage(I)V

    .line 1264
    return-void
.end method

.method private sendRegister(ILjava/lang/String;)V
    .locals 4
    .parameter "type"
    .parameter "identifier"

    .prologue
    .line 506
    const-string v2, "[AccountManager] sendRegister()"

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 507
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 508
    .local v1, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "72"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    const-string v2, "25"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    const-string v2, "11"

    iget-object v3, p0, Lcom/nuance/swype/connect/manager/AccountManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/ConnectClient;->getCurrentLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    const-string v2, "register"

    invoke-virtual {p0, v2, v1}, Lcom/nuance/swype/connect/manager/AccountManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 512
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/AccountManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v2, v0}, Lcom/nuance/swype/connect/ConnectClient;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    .line 513
    return-void
.end method

.method private sendRegisterNotification()V
    .locals 3

    .prologue
    .line 1174
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/AccountManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v1

    const-string v2, "account_REGISTRATION_ALARM"

    invoke-interface {v1, v2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->delete(Ljava/lang/String;)Z

    .line 1176
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->isAccountLinked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1189
    :goto_0
    return-void

    .line 1179
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1180
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "DEFAULT_KEY"

    const-string v2, "CONNECT_ACTIVATION"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    new-instance v1, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/AccountManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-direct {v1, v2}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;-><init>(Lcom/nuance/swype/connect/ConnectClient;)V

    const-string v2, "ACCOUNT_CREATE_TITLE"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setMessageId(Ljava/lang/String;)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v1

    const v2, 0x3491992

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setId(I)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v1

    const-string v2, "BACKUP_SYNC"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setTitleId(Ljava/lang/String;)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v1

    const-string v2, "com.nuance.swype.input.DisplaySettings"

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setAction(Ljava/lang/String;)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setFlagMultiline(Z)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->setExtras(Landroid/os/Bundle;)Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/connect/util/StatusBarNotification$Builder;->send()Lcom/nuance/swype/connect/util/StatusBarNotification;

    goto :goto_0
.end method

.method private sendReverify(Ljava/lang/String;I)V
    .locals 4
    .parameter "identifier"
    .parameter "type"

    .prologue
    .line 670
    const-string v2, "[AccountManager] sendReverify()"

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 671
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 672
    .local v1, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "72"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    const-string v2, "25"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    const-string v2, "11"

    iget-object v3, p0, Lcom/nuance/swype/connect/manager/AccountManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/ConnectClient;->getCurrentLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    const-string v2, "reverify"

    invoke-virtual {p0, v2, v1}, Lcom/nuance/swype/connect/manager/AccountManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 676
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/AccountManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v2, v0}, Lcom/nuance/swype/connect/ConnectClient;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    .line 677
    return-void
.end method

.method private sendStatusUpdate()V
    .locals 3

    .prologue
    .line 1014
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1015
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "DEFAULT_KEY"

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/AccountManager;->accountList:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1016
    iget-object v1, p0, Lcom/nuance/swype/connect/manager/AccountManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v2, 0x8e

    invoke-virtual {v1, v2, v0}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILandroid/os/Bundle;)V

    .line 1017
    return-void
.end method

.method private sendUnlinkDevice(Ljava/lang/String;)V
    .locals 3
    .parameter "deviceId"

    .prologue
    .line 713
    const-string v2, "[AccountManager] sendUnlinkDevice()"

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 714
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 715
    .local v1, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "5"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    const-string v2, "unlinkDevice"

    invoke-virtual {p0, v2, v1}, Lcom/nuance/swype/connect/manager/AccountManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 717
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/AccountManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v2, v0}, Lcom/nuance/swype/connect/ConnectClient;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    .line 719
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/nuance/swype/connect/manager/AccountManager;->deleteDevice(Ljava/lang/String;Z)V

    .line 720
    return-void
.end method

.method private sendVerify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .parameter "identifier"
    .parameter "type"
    .parameter "code"

    .prologue
    .line 625
    const-string v2, "[AccountManager] sendVerify()"

    invoke-static {v2}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 626
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 627
    .local v1, parameters:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "72"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    const-string v2, "25"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    const-string v2, "57"

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    const-string v2, "verify"

    invoke-virtual {p0, v2, v1}, Lcom/nuance/swype/connect/manager/AccountManager;->createCommand(Ljava/lang/String;Ljava/util/HashMap;)Lcom/nuance/swype/connect/util/Command;

    move-result-object v0

    .line 631
    .local v0, command:Lcom/nuance/swype/connect/util/Command;
    iget-object v2, p0, Lcom/nuance/swype/connect/manager/AccountManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v2, v0}, Lcom/nuance/swype/connect/ConnectClient;->sendCommand(Lcom/nuance/swype/connect/util/Command;)V

    .line 632
    return-void
.end method

.method private setRegisterAlarm()V
    .locals 7

    .prologue
    const-wide/high16 v5, -0x8000

    .line 1157
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/AccountManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v3

    const-string v4, "account_REGISTRATION_ALARM"

    invoke-interface {v3, v4, v5, v6}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 1158
    .local v1, alarmTime:J
    cmp-long v3, v1, v5

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/nuance/swype/connect/util/TimeConversion;->getCurrentTime()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 1159
    new-instance v3, Lcom/nuance/swype/connect/util/Alarm$Builder;

    iget-object v4, p0, Lcom/nuance/swype/connect/manager/AccountManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const-class v5, Lcom/nuance/swype/connect/manager/AccountManager;

    const-string v6, "REGISTRATION_ALERT"

    invoke-direct {v3, v4, v5, v6}, Lcom/nuance/swype/connect/util/Alarm$Builder;-><init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Lcom/nuance/swype/connect/util/Alarm$Builder;->triggerTime(J)Lcom/nuance/swype/connect/util/Alarm$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/swype/connect/util/Alarm$Builder;->build()Lcom/nuance/swype/connect/util/Alarm;

    move-result-object v0

    .line 1162
    .local v0, alarm:Lcom/nuance/swype/connect/util/Alarm;
    invoke-virtual {v0}, Lcom/nuance/swype/connect/util/Alarm;->cancel()V

    .line 1163
    invoke-virtual {v0}, Lcom/nuance/swype/connect/util/Alarm;->set()V

    .line 1167
    .end local v0           #alarm:Lcom/nuance/swype/connect/util/Alarm;
    :cond_0
    :goto_0
    return-void

    .line 1164
    :cond_1
    cmp-long v3, v1, v5

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/nuance/swype/connect/util/TimeConversion;->getCurrentTime()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    .line 1165
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->sendRegisterNotification()V

    goto :goto_0
.end method


# virtual methods
.method public alarmNotification(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter "type"
    .parameter "data"

    .prologue
    .line 399
    const-string v0, "REGISTRATION_ALERT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->sendRegisterNotification()V

    .line 402
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/AccountManager;->accountListener:Lcom/nuance/swype/connect/manager/interfaces/AccountListener;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->unregisterAccountListener(Lcom/nuance/swype/connect/manager/interfaces/AccountListener;)V

    .line 267
    return-void
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1252
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->activeAccount:Lcom/nuance/swype/connect/api/ConnectAccount;

    if-nez v0, :cond_0

    .line 1253
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->loadPreferences()V

    .line 1255
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->activeAccount:Lcom/nuance/swype/connect/api/ConnectAccount;

    if-eqz v0, :cond_1

    .line 1256
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->activeAccount:Lcom/nuance/swype/connect/api/ConnectAccount;

    invoke-virtual {v0}, Lcom/nuance/swype/connect/api/ConnectAccount;->getAccountId()Ljava/lang/String;

    move-result-object v0

    .line 1259
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDependencies()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 213
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "session"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->loadPreferences()V

    .line 221
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/AccountManager;->accountListener:Lcom/nuance/swype/connect/manager/interfaces/AccountListener;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/ConnectClient;->registerAccountListener(Lcom/nuance/swype/connect/manager/interfaces/AccountListener;)V

    .line 222
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->accountList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 223
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->sendStatusUpdate()V

    .line 225
    :cond_0
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->setRegisterAlarm()V

    .line 226
    return-void
.end method

.method public isAccountLinked()Z
    .locals 2

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->activeAccount:Lcom/nuance/swype/connect/api/ConnectAccount;

    if-nez v0, :cond_0

    .line 1273
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->loadPreferences()V

    .line 1275
    :cond_0
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->activeAccount:Lcom/nuance/swype/connect/api/ConnectAccount;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->VERIFIED:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    iget-object v1, p0, Lcom/nuance/swype/connect/manager/AccountManager;->activeAccount:Lcom/nuance/swype/connect/api/ConnectAccount;

    invoke-virtual {v1}, Lcom/nuance/swype/connect/api/ConnectAccount;->getAccountState()Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1277
    const/4 v0, 0x1

    .line 1279
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onHandleMessage(Landroid/os/Message;)Z
    .locals 12
    .parameter "message"

    .prologue
    .line 275
    const/4 v5, 0x0

    .line 276
    .local v5, handled:Z
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 367
    :goto_0
    return v5

    .line 278
    :pswitch_0
    const-string v8, "AccountManager.onHandleMessage(MESSAGE_CLIENT_SET_ANDROID_ACCOUNTS)"

    invoke-static {v8}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "DEFAULT_KEY"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 281
    .local v1, androidAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    .line 282
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/nuance/swype/connect/manager/AccountManager;->addAccounts([Ljava/lang/String;)V

    .line 283
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->sendAccountCheck()V

    .line 285
    :cond_0
    iget-object v8, p0, Lcom/nuance/swype/connect/manager/AccountManager;->managerStartState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    sget-object v9, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    invoke-virtual {v8, v9}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 286
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->managerStartComplete()V

    .line 288
    :cond_1
    const/4 v5, 0x1

    .line 289
    goto :goto_0

    .line 292
    .end local v1           #androidAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_1
    const-string v8, "[AccountManager] onHandleMessage(MESSAGE_CLIENT_ACCOUNT_REGISTER)"

    invoke-static {v8}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 294
    .local v3, data:Landroid/os/Bundle;
    if-eqz v3, :cond_2

    .line 295
    const-string v8, "DEFAULT_KEY"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 296
    .local v6, identifier:Ljava/lang/String;
    const-string v8, "type"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 297
    .local v7, type:I
    invoke-direct {p0, v7, v6}, Lcom/nuance/swype/connect/manager/AccountManager;->sendRegister(ILjava/lang/String;)V

    .line 299
    .end local v6           #identifier:Ljava/lang/String;
    .end local v7           #type:I
    :cond_2
    const/4 v5, 0x1

    .line 300
    goto :goto_0

    .line 303
    .end local v3           #data:Landroid/os/Bundle;
    :pswitch_2
    const-string v8, "[AccountManager] onHandleMessage(MESSAGE_CLIENT_ACCOUNT_VERIFY)"

    invoke-static {v8}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 305
    .restart local v3       #data:Landroid/os/Bundle;
    if-eqz v3, :cond_3

    .line 306
    const-string v8, "DEFAULT_KEY"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 307
    .local v2, code:Ljava/lang/String;
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->getRegisteringAccount()Lcom/nuance/swype/connect/api/ConnectAccount;

    move-result-object v0

    .line 308
    .local v0, activeAccount:Lcom/nuance/swype/connect/api/ConnectAccount;
    if-eqz v0, :cond_4

    .line 309
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendVerify("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/nuance/swype/connect/api/ConnectAccount;->getIdentifier()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/nuance/swype/connect/api/ConnectAccount;->getType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v0}, Lcom/nuance/swype/connect/api/ConnectAccount;->getIdentifier()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/nuance/swype/connect/api/ConnectAccount;->getType()I

    move-result v9

    invoke-direct {p0, v8, v9, v2}, Lcom/nuance/swype/connect/manager/AccountManager;->sendVerify(Ljava/lang/String;ILjava/lang/String;)V

    .line 316
    .end local v0           #activeAccount:Lcom/nuance/swype/connect/api/ConnectAccount;
    .end local v2           #code:Ljava/lang/String;
    :cond_3
    :goto_1
    const/4 v5, 0x1

    .line 317
    goto/16 :goto_0

    .line 313
    .restart local v0       #activeAccount:Lcom/nuance/swype/connect/api/ConnectAccount;
    .restart local v2       #code:Ljava/lang/String;
    :cond_4
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->sendStatusUpdate()V

    goto :goto_1

    .line 320
    .end local v0           #activeAccount:Lcom/nuance/swype/connect/api/ConnectAccount;
    .end local v2           #code:Ljava/lang/String;
    .end local v3           #data:Landroid/os/Bundle;
    :pswitch_3
    const-string v8, "[AccountManager] onHandleMessage(MESSAGE_CLIENT_ACCOUNT_REVERIFY)"

    invoke-static {v8}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 321
    iget-object v8, p0, Lcom/nuance/swype/connect/manager/AccountManager;->activeAccount:Lcom/nuance/swype/connect/api/ConnectAccount;

    if-eqz v8, :cond_5

    .line 322
    iget-object v8, p0, Lcom/nuance/swype/connect/manager/AccountManager;->activeAccount:Lcom/nuance/swype/connect/api/ConnectAccount;

    invoke-virtual {v8}, Lcom/nuance/swype/connect/api/ConnectAccount;->getIdentifier()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/nuance/swype/connect/manager/AccountManager;->activeAccount:Lcom/nuance/swype/connect/api/ConnectAccount;

    invoke-virtual {v9}, Lcom/nuance/swype/connect/api/ConnectAccount;->getType()I

    move-result v9

    invoke-direct {p0, v8, v9}, Lcom/nuance/swype/connect/manager/AccountManager;->sendReverify(Ljava/lang/String;I)V

    .line 324
    :cond_5
    const/4 v5, 0x1

    .line 325
    goto/16 :goto_0

    .line 328
    :pswitch_4
    const-string v8, "[AccountManager] onHandleMessage(MESSAGE_CLIENT_ACCOUNT_DELETE)"

    invoke-static {v8}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 330
    .restart local v3       #data:Landroid/os/Bundle;
    const-string v8, "DEFAULT_KEY"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-direct {p0, v8}, Lcom/nuance/swype/connect/manager/AccountManager;->sendDeleteAccount(Z)V

    .line 331
    const/4 v5, 0x1

    .line 332
    goto/16 :goto_0

    .line 335
    .end local v3           #data:Landroid/os/Bundle;
    :pswitch_5
    const-string v8, "[AccountManager] onHandleMessage(MESSAGE_CLIENT_ACCOUNT_UNLINK_DEVICE)"

    invoke-static {v8}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 337
    .restart local v3       #data:Landroid/os/Bundle;
    if-eqz v3, :cond_6

    .line 338
    const-string v8, "DEFAULT_KEY"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 339
    .local v4, deviceId:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/nuance/swype/connect/manager/AccountManager;->sendUnlinkDevice(Ljava/lang/String;)V

    .line 341
    .end local v4           #deviceId:Ljava/lang/String;
    :cond_6
    const/4 v5, 0x1

    .line 342
    goto/16 :goto_0

    .line 345
    .end local v3           #data:Landroid/os/Bundle;
    :pswitch_6
    const-string v8, "[AccountManager] onHandleMessage(MESSAGE_CLIENT_SET_DEVICE_NAME)"

    invoke-static {v8}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 347
    .restart local v3       #data:Landroid/os/Bundle;
    const-string v8, "DEFAULT_KEY"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/nuance/swype/connect/manager/AccountManager;->deviceTypeString:Ljava/lang/String;

    .line 348
    iget-object v8, p0, Lcom/nuance/swype/connect/manager/AccountManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v8}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v8

    const-string v9, "account_DEVICE_TYPE_STRING"

    iget-object v10, p0, Lcom/nuance/swype/connect/manager/AccountManager;->deviceTypeString:Ljava/lang/String;

    invoke-interface {v8, v9, v10}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 349
    const/4 v5, 0x1

    .line 350
    goto/16 :goto_0

    .line 353
    .end local v3           #data:Landroid/os/Bundle;
    :pswitch_7
    const-string v8, "[AccountManager] onHandleMessage(MESSAGE_CLIENT_ACCOUNT_SET_DELAYED_REGISTRATION_ALERT)"

    invoke-static {v8}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 354
    iget-object v8, p0, Lcom/nuance/swype/connect/manager/AccountManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v8}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v8

    const-string v9, "account_REGISTRATION_ALARM"

    const/4 v10, 0x7

    invoke-static {v10}, Lcom/nuance/swype/connect/util/TimeConversion;->convertDaysToTimeStamp(I)J

    move-result-wide v10

    invoke-interface {v8, v9, v10, v11}, Lcom/nuance/swype/connect/store/PersistentDataStore;->saveLong(Ljava/lang/String;J)Z

    .line 356
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->setRegisterAlarm()V

    .line 357
    const/4 v5, 0x1

    .line 358
    goto/16 :goto_0

    .line 361
    :pswitch_8
    const-string v8, "[AccountManager] onHandleMessage(MESSAGE_CLIENT_ACCOUNT_REFRESH_DEVICES)"

    invoke-static {v8}, Lcom/nuance/swype/connect/util/Logger;->v(Ljava/lang/String;)V

    .line 362
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->sendDeviceList()V

    .line 363
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 276
    nop

    :pswitch_data_0
    .packed-switch 0xfd
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method public onResponse(Lcom/nuance/swype/connect/util/Response;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 376
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/AccountManager;->onResponseAccount(Lcom/nuance/swype/connect/util/Response;)V

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "register"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 379
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/AccountManager;->onResponseRegister(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0

    .line 380
    :cond_2
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "accountCheck"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 381
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/AccountManager;->onResponseAccountCheck(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0

    .line 382
    :cond_3
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "verify"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 383
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/AccountManager;->onResponseVerify(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0

    .line 384
    :cond_4
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "reverify"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 385
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/AccountManager;->onResponseReverify(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0

    .line 386
    :cond_5
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "unlinkDevice"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 387
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/AccountManager;->onResponseUnlinkDevice(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0

    .line 388
    :cond_6
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "nameDevice"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 389
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/AccountManager;->onResponseNameDevice(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0

    .line 390
    :cond_7
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "deviceList"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 391
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/AccountManager;->onResponseDeviceList(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0

    .line 392
    :cond_8
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/AccountManager;->validCommands:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;

    const-string v1, "deleteAccount"

    invoke-virtual {v0, v1, p1}, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ValidCommands;->isResponseFor(Ljava/lang/String;Lcom/nuance/swype/connect/util/Response;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    invoke-direct {p0, p1}, Lcom/nuance/swype/connect/manager/AccountManager;->onResponseDeleteAccount(Lcom/nuance/swype/connect/util/Response;)V

    goto :goto_0
.end method

.method public start()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 230
    sget-object v3, Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;->STARTING:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    iput-object v3, p0, Lcom/nuance/swype/connect/manager/AccountManager;->managerStartState:Lcom/nuance/swype/connect/manager/AbstractCommandManager$ManagerState;

    .line 232
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/AccountManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    invoke-virtual {v3}, Lcom/nuance/swype/connect/ConnectClient;->getBuildProps()Lcom/nuance/swype/connect/util/BuildProps;

    move-result-object v3

    const-string v4, "SWYPE_BUILD_TYPE"

    invoke-interface {v3, v4}, Lcom/nuance/swype/connect/util/BuildProps;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, type:Ljava/lang/String;
    const-string v3, "Dev"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 235
    iput-boolean v6, p0, Lcom/nuance/swype/connect/manager/AccountManager;->isDevBuild:Z

    .line 236
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/AccountManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const-string v4, "ACCOUNT_ACCOUNT_EMAIL"

    invoke-virtual {v3, v4}, Lcom/nuance/swype/connect/ConnectClient;->getConfigurationValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, testingAccount:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AccountManager: Auto-registering an account for TESTING PURPOSES: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nuance/swype/connect/util/Logger;->d(Ljava/lang/String;)V

    .line 240
    invoke-direct {p0, v6, v1}, Lcom/nuance/swype/connect/manager/AccountManager;->sendRegister(ILjava/lang/String;)V

    .line 243
    .end local v1           #testingAccount:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/AccountManager;->deviceTypeString:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 244
    iget-object v4, p0, Lcom/nuance/swype/connect/manager/AccountManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v5, 0x93

    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "TABLET"

    :goto_0
    invoke-virtual {v4, v5, v3}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILjava/lang/String;)V

    .line 248
    :cond_1
    iget-boolean v3, p0, Lcom/nuance/swype/connect/manager/AccountManager;->firstStart:Z

    if-eqz v3, :cond_3

    .line 249
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/nuance/swype/connect/manager/AccountManager;->firstStart:Z

    .line 250
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->savePreferences()V

    .line 251
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 252
    .local v0, b:Landroid/os/Bundle;
    const-string v3, "DEFAULT_KEY"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 253
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/AccountManager;->client:Lcom/nuance/swype/connect/ConnectClient;

    const/16 v4, 0x8d

    invoke-virtual {v3, v4, v0}, Lcom/nuance/swype/connect/ConnectClient;->sendMessageToHost(ILandroid/os/Bundle;)V

    .line 262
    .end local v0           #b:Landroid/os/Bundle;
    :goto_1
    return-void

    .line 244
    :cond_2
    const-string v3, "MOBILE_PHONE"

    goto :goto_0

    .line 254
    :cond_3
    iget-object v3, p0, Lcom/nuance/swype/connect/manager/AccountManager;->accountList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 258
    invoke-direct {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->sendAccount()V

    goto :goto_1

    .line 260
    :cond_4
    invoke-virtual {p0}, Lcom/nuance/swype/connect/manager/AccountManager;->managerStartComplete()V

    goto :goto_1
.end method
