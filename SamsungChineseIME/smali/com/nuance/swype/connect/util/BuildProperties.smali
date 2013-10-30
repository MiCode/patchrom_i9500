.class public Lcom/nuance/swype/connect/util/BuildProperties;
.super Ljava/lang/Object;
.source "BuildProperties.java"

# interfaces
.implements Lcom/nuance/swype/connect/util/BuildProps;


# static fields
.field public static final ALM_DL:Ljava/lang/String; = "ALM_DL"

.field private static final ANDROIDID_HASH:Ljava/lang/String; = "ANDROIDID_HASH"

.field public static final APPLICATION_ID:Ljava/lang/String; = "APPLICATION_ID"

.field public static final BOARD:Ljava/lang/String; = "BOARD"

.field public static final BOOTLOADER:Ljava/lang/String; = "BOOTLOADER"

.field public static final BRAND:Ljava/lang/String; = "BRAND"

.field public static final CORE_VERSION_ALPHA:Ljava/lang/String; = "CORE_VERSION_ALPHA"

.field public static final CORE_VERSION_CHINESE:Ljava/lang/String; = "CORE_VERSION_CHINESE"

.field public static final CORE_VERSION_JAPANESE:Ljava/lang/String; = "CORE_VERSION_JAPANESE"

.field public static final CORE_VERSION_KOREAN:Ljava/lang/String; = "CORE_VERSION_KOREAN"

.field public static final CPU_ABI:Ljava/lang/String; = "CPU_ABI"

.field public static final CPU_ABI2:Ljava/lang/String; = "CPU_ABI2"

.field public static final CUSTOMER_STRING:Ljava/lang/String; = "CUSTOMER_STRING"

.field public static final DEVICE:Ljava/lang/String; = "DEVICE"

.field public static final DEVICE_ID:Ljava/lang/String; = "DEVICE_ID"

.field private static final DEVICE_PROPERTIES:[Ljava/lang/String; = null

.field public static final DISPLAY:Ljava/lang/String; = "DISPLAY"

.field public static final FINGERPRINT:Ljava/lang/String; = "FINGERPRINT"

.field public static final HARDWARE:Ljava/lang/String; = "HARDWARE"

.field public static final ID:Ljava/lang/String; = "ID"

.field private static final IGNORE_CHANGES_PROPERTIES:[Ljava/lang/String; = null

.field public static final IMEI_HASH:Ljava/lang/String; = "IMEI_HASH"

.field public static final LANGUAGES:Ljava/lang/String; = "LANGUAGES"

.field public static final LANGUAGES_DL:Ljava/lang/String; = "LANGUAGES_DL"

.field public static final LOCALE:Ljava/lang/String; = "LOCALE"

.field public static final MAC_HASH:Ljava/lang/String; = "MAC_HASH"

.field public static final MANUFACTURER:Ljava/lang/String; = "MANUFACTURER"

.field public static final MODEL:Ljava/lang/String; = "MODEL"

.field public static final NAD_ID:Ljava/lang/String; = "NAD_ID"

.field public static final OEM_ID:Ljava/lang/String; = "OEM_ID"

.field public static final OS_VERSION:Ljava/lang/String; = "OS_VERSION"

.field public static final PRODUCT:Ljava/lang/String; = "PRODUCT"

.field public static final RADIO:Ljava/lang/String; = "RADIO"

.field private static final REQUIRED_DEVICE_PROPERTIES:[Ljava/lang/String; = null

.field public static final SCREENLAYOUT_SIZE:Ljava/lang/String; = "SCREENLAYOUT_SIZE"

.field public static final SCREENRESOLUTION:Ljava/lang/String; = "SCREENRESOLUTION"

.field public static final SCREENTYPE:Ljava/lang/String; = "SCREENTYPE"

.field public static final SCREEN_DENSITY:Ljava/lang/String; = "SCREEN_DENSITY"

.field public static final SDK_VERSION:Ljava/lang/String; = "SDK_VERSION"

.field public static final SERIAL_HASH:Ljava/lang/String; = "SERIAL_HASH"

.field public static final SWIB:Ljava/lang/String; = "SWIB"

.field public static final SWYPER_ID:Ljava/lang/String; = "SWYPER_ID"

.field public static final SWYPE_BUILD_TYPE:Ljava/lang/String; = "SWYPE_BUILD_TYPE"

.field public static final SWYPE_OEM_NAME:Ljava/lang/String; = "SWYPE_OEM_NAME"

.field public static final SWYPE_PRIVACY_ENABLED:Ljava/lang/String; = "SWYPE_PRIVACY_ENABLED"

.field public static final SWYPE_PROJECT_NAME:Ljava/lang/String; = "SWYPE_PROJECT_NAME"

.field public static final SWYPE_VERSION:Ljava/lang/String; = "SWYPE_VERSION"

.field public static final TAGS:Ljava/lang/String; = "TAGS"

.field public static final TIMEZONE:Ljava/lang/String; = "TIMEZONE"

.field public static final TRIAL:Ljava/lang/String; = "TRIAL"

.field public static final TYPE:Ljava/lang/String; = "TYPE"


# instance fields
.field private context:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nuance/swype/connect/ConnectClient;",
            ">;"
        }
    .end annotation
.end field

.field private nuanceId:Lcom/nuance/id/NuanceId;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 139
    const/16 v0, 0x30

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ID"

    aput-object v1, v0, v3

    const-string v1, "PRODUCT"

    aput-object v1, v0, v4

    const-string v1, "DEVICE"

    aput-object v1, v0, v5

    const-string v1, "BOARD"

    aput-object v1, v0, v6

    const-string v1, "MANUFACTURER"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "BRAND"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "MODEL"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SWYPE_OEM_NAME"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "SWYPE_PROJECT_NAME"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "OS_VERSION"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "SWYPE_VERSION"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "SCREENTYPE"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "SCREENRESOLUTION"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "LANGUAGES"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "DEVICE_ID"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "BOOTLOADER"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "CPU_ABI"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "CPU_ABI2"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "DISPLAY"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "FINGERPRINT"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "HARDWARE"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "RADIO"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "TAGS"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "TYPE"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "TIMEZONE"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "SWIB"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "SWYPER_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "LANGUAGES_DL"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "ALM_DL"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "SWYPE_PRIVACY_ENABLED"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "SWYPE_BUILD_TYPE"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "SCREENLAYOUT_SIZE"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "SCREEN_DENSITY"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "TRIAL"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "IMEI_HASH"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "SERIAL_HASH"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "ANDROIDID_HASH"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "MAC_HASH"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "NAD_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "LOCALE"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "OEM_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "SDK_VERSION"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "APPLICATION_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "CUSTOMER_STRING"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "CORE_VERSION_ALPHA"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "CORE_VERSION_CHINESE"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "CORE_VERSION_JAPANESE"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "CORE_VERSION_KOREAN"

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/swype/connect/util/BuildProperties;->DEVICE_PROPERTIES:[Ljava/lang/String;

    .line 190
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "LANGUAGES"

    aput-object v1, v0, v3

    const-string v1, "MANUFACTURER"

    aput-object v1, v0, v4

    const-string v1, "MODEL"

    aput-object v1, v0, v5

    const-string v1, "SWYPE_VERSION"

    aput-object v1, v0, v6

    const-string v1, "SCREENTYPE"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "SCREENRESOLUTION"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "IMEI_HASH"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SERIAL_HASH"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ANDROIDID_HASH"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "MAC_HASH"

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/swype/connect/util/BuildProperties;->REQUIRED_DEVICE_PROPERTIES:[Ljava/lang/String;

    .line 203
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "SCREENRESOLUTION"

    aput-object v1, v0, v3

    const-string v1, "SCREENTYPE"

    aput-object v1, v0, v4

    sput-object v0, Lcom/nuance/swype/connect/util/BuildProperties;->IGNORE_CHANGES_PROPERTIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/nuance/swype/connect/ConnectClient;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nuance/swype/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    .line 130
    return-void
.end method

.method protected static getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "prop"

    .prologue
    .line 219
    :try_start_0
    const-class v2, Landroid/os/Build;

    invoke-virtual {v2, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 220
    .local v1, field:Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 221
    const-class v2, Landroid/os/Build;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 223
    .end local v1           #field:Ljava/lang/reflect/Field;
    :goto_0
    return-object v2

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, ex:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "pref"
    .parameter "defaultValue"

    .prologue
    .line 440
    move-object v1, p2

    .line 441
    .local v1, returnVal:Ljava/lang/String;
    iget-object v2, p0, Lcom/nuance/swype/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/ConnectClient;

    .line 442
    .local v0, client:Lcom/nuance/swype/connect/ConnectClient;
    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {v0}, Lcom/nuance/swype/connect/ConnectClient;->getDataStore()Lcom/nuance/swype/connect/store/PersistentDataStore;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/nuance/swype/connect/store/PersistentDataStore;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 445
    :cond_0
    return-object v1
.end method


# virtual methods
.method public compareDeviceProperties(Ljava/util/HashMap;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .parameter
    .parameter "whichProperties"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 502
    .local p1, oldProperties:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 503
    .local v2, differentProperties:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    array-length v7, p2

    if-nez v7, :cond_1

    .line 504
    :cond_0
    sget-object p2, Lcom/nuance/swype/connect/util/BuildProperties;->DEVICE_PROPERTIES:[Ljava/lang/String;

    .line 506
    :cond_1
    new-instance v4, Ljava/util/HashSet;

    sget-object v7, Lcom/nuance/swype/connect/util/BuildProperties;->IGNORE_CHANGES_PROPERTIES:[Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 507
    .local v4, ignoreProperties:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/nuance/swype/connect/util/BuildProperties;->getDeviceProperties()Ljava/util/HashMap;

    move-result-object v1

    .line 508
    .local v1, currentDeviceProperties:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_5

    .line 509
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_5

    aget-object v6, v0, v3

    .line 510
    .local v6, prop:Ljava/lang/String;
    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 511
    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_3

    .line 512
    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 513
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 515
    :cond_3
    invoke-virtual {p1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 517
    :cond_4
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 522
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v6           #prop:Ljava/lang/String;
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    return-object v7
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "prop"

    .prologue
    .line 526
    new-instance v1, Lcom/nuance/id/NuanceId;

    iget-object v0, p0, Lcom/nuance/swype/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/nuance/id/NuanceId;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nuance/swype/connect/util/BuildProperties;->nuanceId:Lcom/nuance/id/NuanceId;

    .line 527
    invoke-virtual {p0, p1}, Lcom/nuance/swype/connect/util/BuildProperties;->getDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceProperties()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 457
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 460
    .local v1, deviceProperties:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v7, Lcom/nuance/id/NuanceId;

    iget-object v6, p0, Lcom/nuance/swype/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    invoke-direct {v7, v6}, Lcom/nuance/id/NuanceId;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/nuance/swype/connect/util/BuildProperties;->nuanceId:Lcom/nuance/id/NuanceId;

    .line 462
    sget-object v0, Lcom/nuance/swype/connect/util/BuildProperties;->DEVICE_PROPERTIES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 463
    .local v5, prop:Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/nuance/swype/connect/util/BuildProperties;->getDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 466
    .local v2, deviceProperty:Ljava/lang/String;
    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 468
    .end local v2           #deviceProperty:Ljava/lang/String;
    .end local v5           #prop:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method protected getDeviceProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 21
    .parameter "name"

    .prologue
    .line 237
    const-string v19, "ID"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 238
    invoke-static/range {p1 .. p1}, Lcom/nuance/swype/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 436
    :goto_0
    return-object v10

    .line 239
    :cond_0
    const-string v19, "PRODUCT"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 240
    invoke-static/range {p1 .. p1}, Lcom/nuance/swype/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 241
    :cond_1
    const-string v19, "DEVICE"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 242
    invoke-static/range {p1 .. p1}, Lcom/nuance/swype/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 243
    :cond_2
    const-string v19, "BOARD"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 244
    invoke-static/range {p1 .. p1}, Lcom/nuance/swype/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 245
    :cond_3
    const-string v19, "MANUFACTURER"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 246
    invoke-static/range {p1 .. p1}, Lcom/nuance/swype/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 247
    :cond_4
    const-string v19, "BRAND"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 248
    invoke-static/range {p1 .. p1}, Lcom/nuance/swype/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 249
    :cond_5
    const-string v19, "MODEL"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 250
    invoke-static/range {p1 .. p1}, Lcom/nuance/swype/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 251
    :cond_6
    const-string v19, "BOOTLOADER"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 252
    invoke-static/range {p1 .. p1}, Lcom/nuance/swype/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 253
    :cond_7
    const-string v19, "CPU_ABI"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 254
    invoke-static/range {p1 .. p1}, Lcom/nuance/swype/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 255
    :cond_8
    const-string v19, "CPU_ABI2"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 256
    invoke-static/range {p1 .. p1}, Lcom/nuance/swype/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 257
    :cond_9
    const-string v19, "DISPLAY"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 258
    invoke-static/range {p1 .. p1}, Lcom/nuance/swype/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 259
    :cond_a
    const-string v19, "FINGERPRINT"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 260
    invoke-static/range {p1 .. p1}, Lcom/nuance/swype/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 261
    :cond_b
    const-string v19, "HARDWARE"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 262
    invoke-static/range {p1 .. p1}, Lcom/nuance/swype/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 263
    :cond_c
    const-string v19, "RADIO"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    .line 264
    invoke-static/range {p1 .. p1}, Lcom/nuance/swype/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 265
    :cond_d
    const-string v19, "TAGS"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 266
    invoke-static/range {p1 .. p1}, Lcom/nuance/swype/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 267
    :cond_e
    const-string v19, "TYPE"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    .line 268
    invoke-static/range {p1 .. p1}, Lcom/nuance/swype/connect/util/BuildProperties;->getCompatibilityDeviceProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 269
    :cond_f
    const-string v19, "SWYPE_VERSION"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/connect/ConnectClient;

    .line 271
    .local v5, client:Lcom/nuance/swype/connect/ConnectClient;
    if-eqz v5, :cond_30

    .line 272
    invoke-virtual {v5}, Lcom/nuance/swype/connect/ConnectClient;->getSwypeVersion()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 274
    .end local v5           #client:Lcom/nuance/swype/connect/ConnectClient;
    :cond_10
    const-string v19, "OS_VERSION"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 275
    sget-object v10, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    goto/16 :goto_0

    .line 276
    :cond_11
    const-string v19, "SCREENTYPE"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_12

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/connect/ConnectClient;

    .line 278
    .restart local v5       #client:Lcom/nuance/swype/connect/ConnectClient;
    if-eqz v5, :cond_30

    .line 279
    invoke-virtual {v5}, Lcom/nuance/swype/connect/ConnectClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "window"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/WindowManager;

    .line 281
    .local v18, wm:Landroid/view/WindowManager;
    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 284
    .local v6, display:Landroid/view/Display;
    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v19

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v20

    invoke-static/range {v19 .. v20}, Lcom/nuance/swype/connect/util/ScreenType;->fromDimension(II)Lcom/nuance/swype/connect/util/ScreenType;

    move-result-object v14

    .line 286
    .local v14, screen:Lcom/nuance/swype/connect/util/ScreenType;
    invoke-virtual {v14}, Lcom/nuance/swype/connect/util/ScreenType;->getName()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 288
    .end local v5           #client:Lcom/nuance/swype/connect/ConnectClient;
    .end local v6           #display:Landroid/view/Display;
    .end local v14           #screen:Lcom/nuance/swype/connect/util/ScreenType;
    .end local v18           #wm:Landroid/view/WindowManager;
    :cond_12
    const-string v19, "SCREENRESOLUTION"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_13

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/connect/ConnectClient;

    .line 290
    .restart local v5       #client:Lcom/nuance/swype/connect/ConnectClient;
    if-eqz v5, :cond_30

    .line 291
    invoke-virtual {v5}, Lcom/nuance/swype/connect/ConnectClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "window"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/WindowManager;

    .line 293
    .restart local v18       #wm:Landroid/view/WindowManager;
    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 296
    .restart local v6       #display:Landroid/view/Display;
    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v17

    .line 298
    .local v17, width:I
    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v9

    .line 300
    .local v9, height:I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    .local v13, sb:Ljava/lang/StringBuilder;
    move/from16 v0, v17

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 302
    const-string v19, "x"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    move/from16 v0, v17

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 306
    .end local v5           #client:Lcom/nuance/swype/connect/ConnectClient;
    .end local v6           #display:Landroid/view/Display;
    .end local v9           #height:I
    .end local v13           #sb:Ljava/lang/StringBuilder;
    .end local v17           #width:I
    .end local v18           #wm:Landroid/view/WindowManager;
    :cond_13
    const-string v19, "LANGUAGES"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_14

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/connect/ConnectClient;

    .line 308
    .restart local v5       #client:Lcom/nuance/swype/connect/ConnectClient;
    if-eqz v5, :cond_30

    .line 309
    invoke-virtual {v5}, Lcom/nuance/swype/connect/ConnectClient;->getLanguagesAvailable()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 311
    .end local v5           #client:Lcom/nuance/swype/connect/ConnectClient;
    :cond_14
    const-string v19, "SWIB"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_15

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/connect/ConnectClient;

    .line 313
    .restart local v5       #client:Lcom/nuance/swype/connect/ConnectClient;
    if-eqz v5, :cond_30

    .line 314
    invoke-virtual {v5}, Lcom/nuance/swype/connect/ConnectClient;->getSwib()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 316
    .end local v5           #client:Lcom/nuance/swype/connect/ConnectClient;
    :cond_15
    const-string v19, "OEM_ID"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/connect/ConnectClient;

    .line 318
    .restart local v5       #client:Lcom/nuance/swype/connect/ConnectClient;
    if-eqz v5, :cond_30

    .line 319
    invoke-virtual {v5}, Lcom/nuance/swype/connect/ConnectClient;->getOemId()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 321
    .end local v5           #client:Lcom/nuance/swype/connect/ConnectClient;
    :cond_16
    const-string v19, "SDK_VERSION"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_17

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/connect/ConnectClient;

    .line 323
    .restart local v5       #client:Lcom/nuance/swype/connect/ConnectClient;
    if-eqz v5, :cond_30

    .line 324
    invoke-virtual {v5}, Lcom/nuance/swype/connect/ConnectClient;->getSdkVersion()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 326
    .end local v5           #client:Lcom/nuance/swype/connect/ConnectClient;
    :cond_17
    const-string v19, "APPLICATION_ID"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_18

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/connect/ConnectClient;

    .line 328
    .restart local v5       #client:Lcom/nuance/swype/connect/ConnectClient;
    if-eqz v5, :cond_30

    .line 329
    invoke-virtual {v5}, Lcom/nuance/swype/connect/ConnectClient;->getApplicationId()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 331
    .end local v5           #client:Lcom/nuance/swype/connect/ConnectClient;
    :cond_18
    const-string v19, "CUSTOMER_STRING"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_19

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/connect/ConnectClient;

    .line 333
    .restart local v5       #client:Lcom/nuance/swype/connect/ConnectClient;
    if-eqz v5, :cond_30

    .line 334
    invoke-virtual {v5}, Lcom/nuance/swype/connect/ConnectClient;->getCustomerString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 336
    .end local v5           #client:Lcom/nuance/swype/connect/ConnectClient;
    :cond_19
    const-string v19, "DEVICE_ID"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1a

    .line 337
    const/4 v10, 0x0

    .line 338
    .local v10, id:Ljava/lang/String;
    const-string v19, "DEVICE_ID"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/connect/util/BuildProperties;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 339
    goto/16 :goto_0

    .line 340
    .end local v10           #id:Ljava/lang/String;
    :cond_1a
    const-string v19, "TRIAL"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1c

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/connect/ConnectClient;

    .line 342
    .restart local v5       #client:Lcom/nuance/swype/connect/ConnectClient;
    if-eqz v5, :cond_1b

    invoke-virtual {v5}, Lcom/nuance/swype/connect/ConnectClient;->getTrialStatus()Z

    move-result v19

    if-eqz v19, :cond_1b

    .line 343
    const-string v10, "True"

    goto/16 :goto_0

    .line 345
    :cond_1b
    const-string v10, "False"

    goto/16 :goto_0

    .line 347
    .end local v5           #client:Lcom/nuance/swype/connect/ConnectClient;
    :cond_1c
    const-string v19, "TIMEZONE"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1d

    .line 348
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 349
    .local v4, cal:Ljava/util/Calendar;
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v16

    .line 350
    .local v16, tz:Ljava/util/TimeZone;
    invoke-virtual/range {v16 .. v16}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 351
    .end local v4           #cal:Ljava/util/Calendar;
    .end local v16           #tz:Ljava/util/TimeZone;
    :cond_1d
    const-string v19, "SWYPER_ID"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1e

    .line 352
    const/4 v10, 0x0

    .line 353
    .restart local v10       #id:Ljava/lang/String;
    const-string v19, "SWYPER_ID"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/connect/util/BuildProperties;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 355
    goto/16 :goto_0

    .line 356
    .end local v10           #id:Ljava/lang/String;
    :cond_1e
    const-string v19, "LANGUAGES_DL"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1f

    .line 357
    const/4 v11, 0x0

    .line 358
    .local v11, langs:Ljava/lang/String;
    const-string v19, "LANGUAGES_DL"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/connect/util/BuildProperties;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    .line 360
    goto/16 :goto_0

    .line 361
    .end local v11           #langs:Ljava/lang/String;
    :cond_1f
    const-string v19, "ALM_DL"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_20

    .line 362
    const/4 v11, 0x0

    .line 363
    .restart local v11       #langs:Ljava/lang/String;
    const-string v19, "ALM_DL"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/connect/util/BuildProperties;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    .line 365
    goto/16 :goto_0

    .line 366
    .end local v11           #langs:Ljava/lang/String;
    :cond_20
    const-string v19, "SWYPE_PRIVACY_ENABLED"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_21

    .line 367
    const/4 v12, 0x0

    .local v12, privacy:Ljava/lang/String;
    move-object v10, v12

    .line 368
    goto/16 :goto_0

    .line 369
    .end local v12           #privacy:Ljava/lang/String;
    :cond_21
    const-string v19, "SWYPE_BUILD_TYPE"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_22

    .line 370
    const-string v19, "SWYPE_BUILD_TYPE"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/nuance/swype/connect/util/BuildProperties;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, buildType:Ljava/lang/String;
    move-object v10, v3

    .line 373
    goto/16 :goto_0

    .line 374
    .end local v3           #buildType:Ljava/lang/String;
    :cond_22
    const-string v19, "SCREENLAYOUT_SIZE"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_24

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/connect/ConnectClient;

    .line 383
    .restart local v5       #client:Lcom/nuance/swype/connect/ConnectClient;
    if-eqz v5, :cond_23

    .line 384
    invoke-virtual {v5}, Lcom/nuance/swype/connect/ConnectClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    move/from16 v19, v0

    and-int/lit8 v15, v19, 0xf

    .line 386
    .local v15, size:I
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 388
    .end local v15           #size:I
    :cond_23
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 390
    .end local v5           #client:Lcom/nuance/swype/connect/ConnectClient;
    :cond_24
    const-string v19, "SCREEN_DENSITY"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_26

    .line 391
    const/16 v8, 0xa0

    .line 392
    .local v8, dpi:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/connect/ConnectClient;

    .line 393
    .restart local v5       #client:Lcom/nuance/swype/connect/ConnectClient;
    if-eqz v5, :cond_25

    .line 394
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 395
    .local v7, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {v5}, Lcom/nuance/swype/connect/ConnectClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "window"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/WindowManager;

    .line 397
    .restart local v18       #wm:Landroid/view/WindowManager;
    invoke-interface/range {v18 .. v18}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 398
    .restart local v6       #display:Landroid/view/Display;
    invoke-virtual {v6, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 399
    iget v8, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 401
    .end local v6           #display:Landroid/view/Display;
    .end local v7           #dm:Landroid/util/DisplayMetrics;
    .end local v18           #wm:Landroid/view/WindowManager;
    :cond_25
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 402
    .end local v5           #client:Lcom/nuance/swype/connect/ConnectClient;
    .end local v8           #dpi:I
    :cond_26
    const-string v19, "IMEI_HASH"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_27

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/util/BuildProperties;->nuanceId:Lcom/nuance/id/NuanceId;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/nuance/id/NuanceId;->getIMEIHash()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 404
    :cond_27
    const-string v19, "SERIAL_HASH"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_28

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/util/BuildProperties;->nuanceId:Lcom/nuance/id/NuanceId;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/nuance/id/NuanceId;->getSerialHash()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 406
    :cond_28
    const-string v19, "ANDROIDID_HASH"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_29

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/util/BuildProperties;->nuanceId:Lcom/nuance/id/NuanceId;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/nuance/id/NuanceId;->getAndroidIdHash()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 408
    :cond_29
    const-string v19, "MAC_HASH"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2a

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/util/BuildProperties;->nuanceId:Lcom/nuance/id/NuanceId;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/nuance/id/NuanceId;->getMacHash()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 410
    :cond_2a
    const-string v19, "NAD_ID"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2b

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/util/BuildProperties;->nuanceId:Lcom/nuance/id/NuanceId;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/nuance/id/NuanceId;->getExternalId()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 412
    :cond_2b
    const-string v19, "LOCALE"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2c

    .line 413
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 414
    :cond_2c
    const-string v19, "CORE_VERSION_ALPHA"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2d

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/connect/ConnectClient;

    .line 416
    .restart local v5       #client:Lcom/nuance/swype/connect/ConnectClient;
    if-eqz v5, :cond_30

    .line 417
    invoke-virtual {v5}, Lcom/nuance/swype/connect/ConnectClient;->getCoreVersionAlpha()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 419
    .end local v5           #client:Lcom/nuance/swype/connect/ConnectClient;
    :cond_2d
    const-string v19, "CORE_VERSION_CHINESE"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2e

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/connect/ConnectClient;

    .line 421
    .restart local v5       #client:Lcom/nuance/swype/connect/ConnectClient;
    if-eqz v5, :cond_30

    .line 422
    invoke-virtual {v5}, Lcom/nuance/swype/connect/ConnectClient;->getCoreVersionChinese()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 424
    .end local v5           #client:Lcom/nuance/swype/connect/ConnectClient;
    :cond_2e
    const-string v19, "CORE_VERSION_JAPANESE"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2f

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/connect/ConnectClient;

    .line 426
    .restart local v5       #client:Lcom/nuance/swype/connect/ConnectClient;
    if-eqz v5, :cond_30

    .line 427
    invoke-virtual {v5}, Lcom/nuance/swype/connect/ConnectClient;->getCoreVersionJapanese()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 429
    .end local v5           #client:Lcom/nuance/swype/connect/ConnectClient;
    :cond_2f
    const-string v19, "CORE_VERSION_KOREAN"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_30

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nuance/swype/connect/util/BuildProperties;->context:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nuance/swype/connect/ConnectClient;

    .line 431
    .restart local v5       #client:Lcom/nuance/swype/connect/ConnectClient;
    if-eqz v5, :cond_30

    .line 432
    invoke-virtual {v5}, Lcom/nuance/swype/connect/ConnectClient;->getCoreVersionKorean()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 436
    .end local v5           #client:Lcom/nuance/swype/connect/ConnectClient;
    :cond_30
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public hasRequiredDeviceProperties(Ljava/util/HashMap;)[Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 472
    .local p1, verifyProperties:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 474
    .local v3, missingProperties:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v0, Lcom/nuance/swype/connect/util/BuildProperties;->REQUIRED_DEVICE_PROPERTIES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 475
    .local v4, prop:Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 476
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 480
    .end local v4           #prop:Ljava/lang/String;
    :cond_1
    const-string v5, "SWIB"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "OEM_ID"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 481
    const-string v5, "SWIB"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5
.end method
