.class public Lcom/android/server/wifi_offload/ExceptionalAppList;
.super Ljava/lang/Object;
.source "ExceptionalAppList.java"


# static fields
.field public static appList:[Ljava/lang/String;

.field public static appList_Tablet:[Ljava/lang/String;

.field private static final mDependentPackagesTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static wifiAppList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    const/16 v0, 0x2d

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.cequint.ecid"

    aput-object v1, v0, v3

    const-string v1, "com.mobitv.client.nfl2010"

    aput-object v1, v0, v4

    const-string v1, "com.samsung.vmmhux"

    aput-object v1, v0, v5

    const-string v1, "com.vzw.hs.android.modlite"

    aput-object v1, v0, v6

    const-string v1, "com.samsung.vvm"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.vznavigator.SCHI535"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.vznavigator.SCHI200"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.vznavigator.SCHI415"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.vznavigator.SCHI605"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.android.calendar"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.sec.android.app.camera"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.android.contacts"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.sec.android.app.popupcalculator"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.google.android.apps.maps"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.android.mms"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.sec.android.app.music"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.sec.android.app.setupwizard"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.android.settings"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.sec.android.app.videoplayer"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.sec.android.app.clockpackage"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "com.sec.android.gallery3d"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "com.sec.android.app.myfiles"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "com.samsung.tutorial"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "com.google.android.music"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "com.android.development"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "com.sec.android.app.memo"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "com.diotek.penmemo"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "com.google.android.voicesearch"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "com.samsung.spg"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "com.peel.app"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "com.android.phone"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "com.sec.android.app.controlpanel"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "com.android.hiddenmenu"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "com.sec.android.app.servicemodeapp"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "com.android.samsungtest.SimpleFunctionTest"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "com.android.samsungtest.FactoryTest"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "com.sec.android.app.phoneutil"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "com.sec.android.app.factorymode"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "com.sec.android.app.dlna"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "com.android.providers.downloads.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "com.google.android.googlequicksearchbox"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "com.sec.android.app.samsungapps"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "com.google.android.talk"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "com.sec.android.app.ve"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "com.gameloft.android.VERIZON.GloftLPHP"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/wifi_offload/ExceptionalAppList;->appList:[Ljava/lang/String;

    .line 78
    const/16 v0, 0x26

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.mobitv.client.nfl2010"

    aput-object v1, v0, v3

    const-string v1, "com.samsung.vmmhux"

    aput-object v1, v0, v4

    const-string v1, "com.vzw.hs.android.modlite"

    aput-object v1, v0, v5

    const-string v1, "com.vznavigator.Tablet"

    aput-object v1, v0, v6

    const-string v1, "com.android.calendar"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.sec.android.app.camera"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.android.contacts"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.sec.android.app.popupcalculator"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.google.android.apps.maps"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.sec.android.app.music"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.sec.android.app.setupwizard"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.android.settings"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.sec.android.app.videoplayer"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.sec.android.gallery3d"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.sec.android.app.myfiles"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.samsung.tutorial"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.google.android.music"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.android.development"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.sec.android.app.memo"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.diotek.penmemo"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "com.google.android.voicesearch"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "com.samsung.spg"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "com.peel.app"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "com.android.phone"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "com.sec.android.app.controlpanel"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "com.android.hiddenmenu"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "com.sec.android.app.servicemodeapp"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "com.android.samsungtest.SimpleFunctionTest"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "com.android.samsungtest.FactoryTest"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "com.sec.android.app.phoneutil"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "com.sec.android.app.factorymode"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "com.sec.android.app.dlna"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "com.android.providers.downloads.ui"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "com.google.android.googlequicksearchbox"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "com.sec.android.app.samsungapps"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "com.google.android.talk"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "com.sec.android.app.ve"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "com.gameloft.android.VERIZON.GloftLPHP"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/wifi_offload/ExceptionalAppList;->appList_Tablet:[Ljava/lang/String;

    .line 136
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/wifi_offload/ExceptionalAppList;->wifiAppList:[Ljava/lang/String;

    .line 175
    invoke-static {}, Lcom/android/server/wifi_offload/ExceptionalAppList;->buildTable()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi_offload/ExceptionalAppList;->mDependentPackagesTable:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildTable()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 178
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 183
    .local v1, localMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v0, dependentPackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "com.android.exchange"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    const-string v2, "com.android.email"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    return-object v1
.end method

.method public static getListOfDependentPackageNamesForDataUsage(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    sget-object v1, Lcom/android/server/wifi_offload/ExceptionalAppList;->mDependentPackagesTable:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 200
    .local v0, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .end local v0           #packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-object v0
.end method
