.class public Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;
.super Landroid/preference/PreferenceFragment;
.source "PowerUsageSummary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$3;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final KEY_APP_LIST:Ljava/lang/String; = "app_list"

.field private static final KEY_BATTERY_STATUS:Ljava/lang/String; = "battery_status"

.field private static final MAX_ITEMS_TO_LIST:I = 0xa

.field private static final MENU_HELP:I = 0x3

.field private static final MENU_STATS_REFRESH:I = 0x2

.field private static final MENU_STATS_TYPE:I = 0x1

.field private static final MIN_POWER_THRESHOLD:I = 0x5

.field static final MSG_UPDATE_NAME_ICON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PowerUsageSummary"

.field private static sStatsXfer:Lcom/android/internal/os/BatteryStatsImpl;


# instance fields
.field private mAbort:Z

.field private mAppListGroup:Landroid/preference/PreferenceGroup;

.field private mAppWifiRunning:J

.field mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryStatusPref:Landroid/preference/Preference;

.field private mBluetoothPower:D

.field private final mBluetoothSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private mMaxPower:D

.field private mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field private mRequestQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestThread:Ljava/lang/Thread;

.field mStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private mStatsPeriod:J

.field private mStatsType:I

.field private mTotalPower:D

.field mUm:Landroid/os/UserManager;

.field private final mUsageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserPower:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserSippers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/fuelgauge/BatterySipper;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWifiPower:D

.field private final mWifiSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mWifiSippers:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mBluetoothSippers:Ljava/util/List;

    .line 93
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mUserSippers:Landroid/util/SparseArray;

    .line 95
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mUserPower:Landroid/util/SparseArray;

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 105
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsPeriod:J

    .line 106
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mMaxPower:D

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    .line 120
    new-instance v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$1;-><init>(Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 874
    new-instance v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$2;-><init>(Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Landroid/preference/Preference;

    return-object v0
.end method

.method private addBluetoothUsage(J)V
    .locals 12
    .parameter "uSecNow"

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothOnTime(JI)J

    move-result-wide v0

    const-wide/16 v5, 0x3e8

    div-long v3, v0, v5

    .line 749
    .local v3, btOnTimeMs:J
    long-to-double v0, v3

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "bluetooth.on"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v0, v5

    const-wide v5, 0x408f400000000000L

    div-double v10, v0, v5

    .line 751
    .local v10, btPower:D
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothPingCount()I

    move-result v9

    .line 752
    .local v9, btPingCount:I
    int-to-double v0, v9

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "bluetooth.at"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v0, v5

    const-wide v5, 0x408f400000000000L

    div-double/2addr v0, v5

    add-double/2addr v10, v0

    .line 754
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0907bc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;->BLUETOOTH:Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f0201bb

    iget-wide v6, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mBluetoothPower:D

    add-double/2addr v6, v10

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings_ex/fuelgauge/BatterySipper;

    move-result-object v8

    .line 757
    .local v8, bs:Lcom/android/settings_ex/fuelgauge/BatterySipper;
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mBluetoothSippers:Ljava/util/List;

    const-string v1, "Bluetooth"

    invoke-direct {p0, v8, v0, v1}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->aggregateSippers(Lcom/android/settings_ex/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 758
    return-void
.end method

.method private addEntry(Ljava/lang/String;Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings_ex/fuelgauge/BatterySipper;
    .locals 9
    .parameter "label"
    .parameter "drainType"
    .parameter "time"
    .parameter "iconId"
    .parameter "power"

    .prologue
    .line 834
    iget-wide v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mMaxPower:D

    cmpl-double v1, p6, v1

    if-lez v1, :cond_0

    iput-wide p6, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mMaxPower:D

    .line 835
    :cond_0
    iget-wide v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mTotalPower:D

    add-double/2addr v1, p6

    iput-wide v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mTotalPower:D

    .line 836
    new-instance v0, Lcom/android/settings_ex/fuelgauge/BatterySipper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v4, 0x1

    new-array v8, v4, [D

    const/4 v4, 0x0

    aput-wide p6, v8, v4

    move-object v4, p1

    move-object v5, p2

    move v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/settings_ex/fuelgauge/BatterySipper;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;Ljava/lang/String;Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;ILandroid/os/BatteryStats$Uid;[D)V

    .line 838
    .local v0, bs:Lcom/android/settings_ex/fuelgauge/BatterySipper;
    iput-wide p3, v0, Lcom/android/settings_ex/fuelgauge/BatterySipper;->usageTime:J

    .line 839
    iput p5, v0, Lcom/android/settings_ex/fuelgauge/BatterySipper;->iconId:I

    .line 840
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 841
    return-object v0
.end method

.method private addIdleUsage(J)V
    .locals 10
    .parameter "uSecNow"

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v8, 0x3e8

    div-long v3, v0, v8

    .line 741
    .local v3, idleTimeMs:J
    long-to-double v0, v3

    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "cpu.idle"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v8

    mul-double/2addr v0, v8

    const-wide v8, 0x408f400000000000L

    div-double v6, v0, v8

    .line 743
    .local v6, idlePower:D
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0907bf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;->IDLE:Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f0201df

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings_ex/fuelgauge/BatterySipper;

    .line 745
    return-void
.end method

.method private addNotAvailableMessage()V
    .locals 2

    .prologue
    .line 368
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 369
    .local v0, notAvailable:Landroid/preference/Preference;
    const v1, 0x7f0907a4

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 370
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 371
    return-void
.end method

.method private addPhoneUsage(J)V
    .locals 10
    .parameter "uSecNow"

    .prologue
    .line 661
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneOnTime(JI)J

    move-result-wide v0

    const-wide/16 v8, 0x3e8

    div-long v3, v0, v8

    .line 662
    .local v3, phoneOnTimeMs:J
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v1, "radio.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    long-to-double v8, v3

    mul-double/2addr v0, v8

    const-wide v8, 0x408f400000000000L

    div-double v6, v0, v8

    .line 664
    .local v6, phoneOnPower:D
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0907be

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;->PHONE:Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f0201ff

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings_ex/fuelgauge/BatterySipper;

    .line 666
    return-void
.end method

.method private addRadioUsage(J)V
    .locals 19
    .parameter "uSecNow"

    .prologue
    .line 688
    const-wide/16 v8, 0x0

    .line 689
    .local v8, power:D
    sget v10, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    .line 690
    .local v10, BINS:I
    const-wide/16 v5, 0x0

    .line 691
    .local v5, signalTimeMs:J
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-ge v12, v10, :cond_0

    .line 692
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v12, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v2

    const-wide/16 v17, 0x3e8

    div-long v15, v2, v17

    .line 693
    .local v15, strengthTimeMs:J
    const-wide/16 v2, 0x3e8

    div-long v2, v15, v2

    long-to-double v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "radio.on"

    invoke-virtual {v4, v7, v12}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v17

    mul-double v2, v2, v17

    add-double/2addr v8, v2

    .line 695
    add-long/2addr v5, v15

    .line 691
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 697
    .end local v15           #strengthTimeMs:J
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalScanningTime(JI)J

    move-result-wide v2

    const-wide/16 v17, 0x3e8

    div-long v13, v2, v17

    .line 698
    .local v13, scanningTimeMs:J
    const-wide/16 v2, 0x3e8

    div-long v2, v13, v2

    long-to-double v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "radio.scanning"

    invoke-virtual {v4, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v17

    mul-double v2, v2, v17

    add-double/2addr v8, v2

    .line 700
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0907bd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;->CELL:Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;

    const v7, 0x7f0201bd

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings_ex/fuelgauge/BatterySipper;

    move-result-object v11

    .line 703
    .local v11, bs:Lcom/android/settings_ex/fuelgauge/BatterySipper;
    const-wide/16 v2, 0x0

    cmp-long v2, v5, v2

    if-eqz v2, :cond_1

    .line 704
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v2

    const-wide/16 v17, 0x3e8

    div-long v2, v2, v17

    long-to-double v2, v2

    const-wide/high16 v17, 0x4059

    mul-double v2, v2, v17

    long-to-double v0, v5

    move-wide/from16 v17, v0

    div-double v2, v2, v17

    iput-wide v2, v11, Lcom/android/settings_ex/fuelgauge/BatterySipper;->noCoveragePercent:D

    .line 707
    :cond_1
    return-void
.end method

.method private addScreenUsage(J)V
    .locals 19
    .parameter "uSecNow"

    .prologue
    .line 669
    const-wide/16 v8, 0x0

    .line 670
    .local v8, power:D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v2

    const-wide/16 v17, 0x3e8

    div-long v5, v2, v17

    .line 671
    .local v5, screenOnTimeMs:J
    long-to-double v2, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "screen.on"

    invoke-virtual {v4, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v17

    mul-double v2, v2, v17

    add-double/2addr v8, v2

    .line 672
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v3, "screen.full"

    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v15

    .line 674
    .local v15, screenFullPower:D
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    const/4 v2, 0x5

    if-ge v12, v2, :cond_0

    .line 675
    int-to-float v2, v12

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-double v2, v2

    mul-double/2addr v2, v15

    const-wide/high16 v17, 0x4014

    div-double v13, v2, v17

    .line 677
    .local v13, screenBinPower:D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v12, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenBrightnessTime(IJI)J

    move-result-wide v2

    const-wide/16 v17, 0x3e8

    div-long v10, v2, v17

    .line 678
    .local v10, brightnessTime:J
    long-to-double v2, v10

    mul-double/2addr v2, v13

    add-double/2addr v8, v2

    .line 679
    const-string v2, "PowerUsageSummary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Screen bin power = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    double-to-int v4, v13

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 682
    .end local v10           #brightnessTime:J
    .end local v13           #screenBinPower:D
    :cond_0
    const-wide v2, 0x408f400000000000L

    div-double/2addr v8, v2

    .line 683
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0907ba

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;->SCREEN:Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;

    const v7, 0x7f0203ba

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings_ex/fuelgauge/BatterySipper;

    .line 685
    return-void
.end method

.method private addUserUsage()V
    .locals 14

    .prologue
    const/4 v5, 0x0

    .line 761
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v9, v0, :cond_3

    .line 762
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    .line 763
    .local v13, userId:I
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 764
    .local v12, sippers:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings_ex/fuelgauge/BatterySipper;>;"
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0, v13}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v11

    .line 767
    .local v11, info:Landroid/content/pm/UserInfo;
    if-eqz v11, :cond_2

    .line 768
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0, v11, v2}, Lcom/android/settings_ex/users/UserUtils;->getUserIcon(Landroid/os/UserManager;Landroid/content/pm/UserInfo;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 769
    .local v10, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v11, :cond_1

    iget-object v1, v11, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 770
    .local v1, name:Ljava/lang/String;
    :goto_1
    if-nez v1, :cond_0

    .line 771
    iget v0, v11, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 773
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0906d0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 780
    :goto_2
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mUserPower:Landroid/util/SparseArray;

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 781
    .local v6, power:D
    sget-object v2, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;->USER:Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;

    const-wide/16 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings_ex/fuelgauge/BatterySipper;

    move-result-object v8

    .line 782
    .local v8, bs:Lcom/android/settings_ex/fuelgauge/BatterySipper;
    iput-object v10, v8, Lcom/android/settings_ex/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    .line 783
    const-string v0, "User"

    invoke-direct {p0, v8, v12, v0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->aggregateSippers(Lcom/android/settings_ex/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 761
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 769
    .end local v1           #name:Ljava/lang/String;
    .end local v6           #power:D
    .end local v8           #bs:Lcom/android/settings_ex/fuelgauge/BatterySipper;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 776
    .end local v10           #icon:Landroid/graphics/drawable/Drawable;
    :cond_2
    const/4 v10, 0x0

    .line 777
    .restart local v10       #icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0906d1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #name:Ljava/lang/String;
    goto :goto_2

    .line 785
    .end local v1           #name:Ljava/lang/String;
    .end local v10           #icon:Landroid/graphics/drawable/Drawable;
    .end local v11           #info:Landroid/content/pm/UserInfo;
    .end local v12           #sippers:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings_ex/fuelgauge/BatterySipper;>;"
    .end local v13           #userId:I
    :cond_3
    return-void
.end method

.method private addWiFiUsage(J)V
    .locals 17
    .parameter "uSecNow"

    .prologue
    .line 724
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getWifiOnTime(JI)J

    move-result-wide v2

    const-wide/16 v7, 0x3e8

    div-long v11, v2, v7

    .line 725
    .local v11, onTimeMs:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getGlobalWifiRunningTime(JI)J

    move-result-wide v2

    const-wide/16 v7, 0x3e8

    div-long v5, v2, v7

    .line 726
    .local v5, runningTimeMs:J
    const-string v2, "PowerUsageSummary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WIFI runningTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " app runningTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppWifiRunning:J

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppWifiRunning:J

    sub-long/2addr v5, v2

    .line 729
    const-wide/16 v2, 0x0

    cmp-long v2, v5, v2

    if-gez v2, :cond_0

    const-wide/16 v5, 0x0

    .line 730
    :cond_0
    const-wide/16 v2, 0x0

    mul-long/2addr v2, v11

    long-to-double v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "wifi.on"

    invoke-virtual {v4, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v2, v7

    long-to-double v7, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "wifi.on"

    invoke-virtual {v4, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v15

    mul-double/2addr v7, v15

    add-double/2addr v2, v7

    const-wide v7, 0x408f400000000000L

    div-double v13, v2, v7

    .line 733
    .local v13, wifiPower:D
    const-string v2, "PowerUsageSummary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WIFI power="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from procs="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mWifiPower:D

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0907bb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;->WIFI:Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;

    const v7, 0x7f020212

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mWifiPower:D

    add-double/2addr v8, v13

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings_ex/fuelgauge/BatterySipper;

    move-result-object v10

    .line 736
    .local v10, bs:Lcom/android/settings_ex/fuelgauge/BatterySipper;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mWifiSippers:Ljava/util/List;

    const-string v3, "WIFI"

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2, v3}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->aggregateSippers(Lcom/android/settings_ex/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 737
    return-void
.end method

.method private aggregateSippers(Lcom/android/settings_ex/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .parameter "bs"
    .parameter
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings_ex/fuelgauge/BatterySipper;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/fuelgauge/BatterySipper;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 710
    .local p2, from:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings_ex/fuelgauge/BatterySipper;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 711
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/fuelgauge/BatterySipper;

    .line 712
    .local v1, wbs:Lcom/android/settings_ex/fuelgauge/BatterySipper;
    const-string v2, "PowerUsageSummary"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " adding sipper "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": cpu="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/android/settings_ex/fuelgauge/BatterySipper;->cpuTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iget-wide v2, p1, Lcom/android/settings_ex/fuelgauge/BatterySipper;->cpuTime:J

    iget-wide v4, v1, Lcom/android/settings_ex/fuelgauge/BatterySipper;->cpuTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings_ex/fuelgauge/BatterySipper;->cpuTime:J

    .line 714
    iget-wide v2, p1, Lcom/android/settings_ex/fuelgauge/BatterySipper;->gpsTime:J

    iget-wide v4, v1, Lcom/android/settings_ex/fuelgauge/BatterySipper;->gpsTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings_ex/fuelgauge/BatterySipper;->gpsTime:J

    .line 715
    iget-wide v2, p1, Lcom/android/settings_ex/fuelgauge/BatterySipper;->wifiRunningTime:J

    iget-wide v4, v1, Lcom/android/settings_ex/fuelgauge/BatterySipper;->wifiRunningTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings_ex/fuelgauge/BatterySipper;->wifiRunningTime:J

    .line 716
    iget-wide v2, p1, Lcom/android/settings_ex/fuelgauge/BatterySipper;->cpuFgTime:J

    iget-wide v4, v1, Lcom/android/settings_ex/fuelgauge/BatterySipper;->cpuFgTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings_ex/fuelgauge/BatterySipper;->cpuFgTime:J

    .line 717
    iget-wide v2, p1, Lcom/android/settings_ex/fuelgauge/BatterySipper;->wakeLockTime:J

    iget-wide v4, v1, Lcom/android/settings_ex/fuelgauge/BatterySipper;->wakeLockTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings_ex/fuelgauge/BatterySipper;->wakeLockTime:J

    .line 718
    iget-wide v2, p1, Lcom/android/settings_ex/fuelgauge/BatterySipper;->tcpBytesReceived:J

    iget-wide v4, v1, Lcom/android/settings_ex/fuelgauge/BatterySipper;->tcpBytesReceived:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings_ex/fuelgauge/BatterySipper;->tcpBytesReceived:J

    .line 719
    iget-wide v2, p1, Lcom/android/settings_ex/fuelgauge/BatterySipper;->tcpBytesSent:J

    iget-wide v4, v1, Lcom/android/settings_ex/fuelgauge/BatterySipper;->tcpBytesSent:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings_ex/fuelgauge/BatterySipper;->tcpBytesSent:J

    .line 710
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 721
    .end local v1           #wbs:Lcom/android/settings_ex/fuelgauge/BatterySipper;
    :cond_0
    return-void
.end method

.method private getAverageDataCost()D
    .locals 26

    .prologue
    .line 788
    const-wide/32 v6, 0xf4240

    .line 789
    .local v6, WIFI_BPS:J
    const-wide/32 v2, 0x30d40

    .line 790
    .local v2, MOBILE_BPS:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v22, v0

    const-string v23, "wifi.active"

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v22

    const-wide v24, 0x40ac200000000000L

    div-double v8, v22, v24

    .line 792
    .local v8, WIFI_POWER:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v22, v0

    const-string v23, "radio.active"

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v22

    const-wide v24, 0x40ac200000000000L

    div-double v4, v22, v24

    .line 794
    .local v4, MOBILE_POWER:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesReceived(I)J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesSent(I)J

    move-result-wide v24

    add-long v14, v22, v24

    .line 796
    .local v14, mobileData:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/os/BatteryStatsImpl;->getTotalTcpBytesReceived(I)J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/internal/os/BatteryStatsImpl;->getTotalTcpBytesSent(I)J

    move-result-wide v24

    add-long v22, v22, v24

    sub-long v20, v22, v14

    .line 798
    .local v20, wifiData:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/os/BatteryStatsImpl;->getRadioDataUptime()J

    move-result-wide v22

    const-wide/16 v24, 0x3e8

    div-long v16, v22, v24

    .line 799
    .local v16, radioDataUptimeMs:J
    const-wide/16 v22, 0x0

    cmp-long v22, v16, v22

    if-eqz v22, :cond_0

    const-wide/16 v22, 0x8

    mul-long v22, v22, v14

    const-wide/16 v24, 0x3e8

    mul-long v22, v22, v24

    div-long v10, v22, v16

    .line 803
    .local v10, mobileBps:J
    :goto_0
    const-wide/16 v22, 0x8

    div-long v22, v10, v22

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v12, v4, v22

    .line 804
    .local v12, mobileCostPerByte:D
    const-wide v22, 0x40fe848000000000L

    div-double v18, v8, v22

    .line 805
    .local v18, wifiCostPerByte:D
    add-long v22, v20, v14

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-eqz v22, :cond_1

    .line 806
    long-to-double v0, v14

    move-wide/from16 v22, v0

    mul-double v22, v22, v12

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v24, v24, v18

    add-double v22, v22, v24

    add-long v24, v14, v20

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    .line 809
    :goto_1
    return-wide v22

    .line 799
    .end local v10           #mobileBps:J
    .end local v12           #mobileCostPerByte:D
    .end local v18           #wifiCostPerByte:D
    :cond_0
    const-wide/32 v10, 0x30d40

    goto :goto_0

    .line 809
    .restart local v10       #mobileBps:J
    .restart local v12       #mobileCostPerByte:D
    .restart local v18       #wifiCostPerByte:D
    :cond_1
    const-wide/16 v22, 0x0

    goto :goto_1
.end method

.method private load()V
    .locals 5

    .prologue
    .line 846
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->getStatistics()[B

    move-result-object v0

    .line 847
    .local v0, data:[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 848
    .local v2, parcel:Landroid/os/Parcel;
    const/4 v3, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 849
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 850
    sget-object v3, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v3, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 852
    iget-object v3, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->distributeWorkLocked(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 856
    .end local v0           #data:[B
    .end local v2           #parcel:Landroid/os/Parcel;
    :goto_0
    return-void

    .line 853
    :catch_0
    move-exception v1

    .line 854
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "PowerUsageSummary"

    const-string v4, "RemoteException:"

    invoke-static {v3, v4, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private processAppUsage()V
    .locals 88

    .prologue
    .line 434
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "sensor"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Landroid/hardware/SensorManager;

    .line 436
    .local v51, sensorManager:Landroid/hardware/SensorManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v82, v0

    .line 437
    .local v82, which:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v5}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    move-result v56

    .line 438
    .local v56, speedSteps:I
    move/from16 v0, v56

    new-array v0, v0, [D

    move-object/from16 v41, v0

    .line 439
    .local v41, powerCpuNormal:[D
    move/from16 v0, v56

    new-array v0, v0, [J

    move-object/from16 v20, v0

    .line 440
    .local v20, cpuSpeedStepTimes:[J
    const/16 v37, 0x0

    .local v37, p:I
    :goto_0
    move/from16 v0, v37

    move/from16 v1, v56

    if-ge v0, v1, :cond_0

    .line 441
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v6, "cpu.active"

    move/from16 v0, v37

    invoke-virtual {v5, v6, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v5

    aput-wide v5, v41, v37

    .line 440
    add-int/lit8 v37, v37, 0x1

    goto :goto_0

    .line 443
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->getAverageDataCost()D

    move-result-wide v16

    .line 444
    .local v16, averageCostPerByte:D
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v9, 0x3e8

    mul-long/2addr v6, v9

    move/from16 v0, v82

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v68

    .line 445
    .local v68, uSecTime:J
    const-wide/16 v14, 0x0

    .line 446
    .local v14, appWakelockTime:J
    const/16 v36, 0x0

    .line 447
    .local v36, osApp:Lcom/android/settings_ex/fuelgauge/BatterySipper;
    move-wide/from16 v0, v68

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsPeriod:J

    .line 448
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v70

    .line 449
    .local v70, uidStats:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v70 .. v70}, Landroid/util/SparseArray;->size()I

    move-result v13

    .line 450
    .local v13, NU:I
    const/16 v32, 0x0

    .end local v37           #p:I
    .local v32, iu:I
    :goto_1
    move/from16 v0, v32

    if-ge v0, v13, :cond_19

    .line 451
    move-object/from16 v0, v70

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/BatteryStats$Uid;

    .line 453
    .local v11, u:Landroid/os/BatteryStats$Uid;
    const-wide/16 v39, 0x0

    .line 454
    .local v39, power:D
    const-wide/16 v28, 0x0

    .line 455
    .local v28, highestDrain:D
    const/4 v8, 0x0

    .line 457
    .local v8, packageWithHighestDrain:Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getProcessStats()Ljava/util/Map;

    move-result-object v44

    .line 458
    .local v44, processStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    const-wide/16 v21, 0x0

    .line 459
    .local v21, cpuTime:J
    const-wide/16 v18, 0x0

    .line 460
    .local v18, cpuFgTime:J
    const-wide/16 v80, 0x0

    .line 461
    .local v80, wakelockTime:J
    const-wide/16 v26, 0x0

    .line 463
    .local v26, gpsTime:J
    invoke-interface/range {v44 .. v44}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 466
    invoke-interface/range {v44 .. v44}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map$Entry;

    .line 467
    .local v23, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/os/BatteryStats$Uid$Proc;

    .line 468
    .local v45, ps:Landroid/os/BatteryStats$Uid$Proc;
    move-object/from16 v0, v45

    move/from16 v1, v82

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v73

    .line 469
    .local v73, userTime:J
    move-object/from16 v0, v45

    move/from16 v1, v82

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v58

    .line 470
    .local v58, systemTime:J
    move-object/from16 v0, v45

    move/from16 v1, v82

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v24

    .line 471
    .local v24, foregroundTime:J
    const-wide/16 v5, 0xa

    mul-long v5, v5, v24

    add-long v18, v18, v5

    .line 472
    add-long v5, v73, v58

    const-wide/16 v9, 0xa

    mul-long v65, v5, v9

    .line 473
    .local v65, tmpCpuTime:J
    const/16 v67, 0x0

    .line 475
    .local v67, totalTimeAtSpeeds:I
    const/16 v57, 0x0

    .local v57, step:I
    :goto_3
    move/from16 v0, v57

    move/from16 v1, v56

    if-ge v0, v1, :cond_2

    .line 476
    move-object/from16 v0, v45

    move/from16 v1, v57

    move/from16 v2, v82

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid$Proc;->getTimeAtCpuSpeedStep(II)J

    move-result-wide v5

    aput-wide v5, v20, v57

    .line 477
    move/from16 v0, v67

    int-to-long v5, v0

    aget-wide v9, v20, v57

    add-long/2addr v5, v9

    long-to-int v0, v5

    move/from16 v67, v0

    .line 475
    add-int/lit8 v57, v57, 0x1

    goto :goto_3

    .line 479
    :cond_2
    if-nez v67, :cond_3

    const/16 v67, 0x1

    .line 481
    :cond_3
    const-wide/16 v42, 0x0

    .line 482
    .local v42, processPower:D
    const/16 v57, 0x0

    :goto_4
    move/from16 v0, v57

    move/from16 v1, v56

    if-ge v0, v1, :cond_4

    .line 483
    aget-wide v5, v20, v57

    long-to-double v5, v5

    move/from16 v0, v67

    int-to-double v9, v0

    div-double v46, v5, v9

    .line 484
    .local v46, ratio:D
    move-wide/from16 v0, v65

    long-to-double v5, v0

    mul-double v5, v5, v46

    aget-wide v9, v41, v57

    mul-double/2addr v5, v9

    add-double v42, v42, v5

    .line 482
    add-int/lit8 v57, v57, 0x1

    goto :goto_4

    .line 486
    .end local v46           #ratio:D
    :cond_4
    add-long v21, v21, v65

    .line 491
    add-double v39, v39, v42

    .line 492
    if-eqz v8, :cond_5

    const-string v5, "*"

    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 494
    :cond_5
    move-wide/from16 v28, v42

    .line 495
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    .end local v8           #packageWithHighestDrain:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .restart local v8       #packageWithHighestDrain:Ljava/lang/String;
    goto/16 :goto_2

    .line 496
    :cond_6
    cmpg-double v5, v28, v42

    if-gez v5, :cond_1

    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 498
    move-wide/from16 v28, v42

    .line 499
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    .end local v8           #packageWithHighestDrain:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .restart local v8       #packageWithHighestDrain:Ljava/lang/String;
    goto/16 :goto_2

    .line 503
    .end local v23           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v24           #foregroundTime:J
    .end local v30           #i$:Ljava/util/Iterator;
    .end local v42           #processPower:D
    .end local v45           #ps:Landroid/os/BatteryStats$Uid$Proc;
    .end local v57           #step:I
    .end local v58           #systemTime:J
    .end local v65           #tmpCpuTime:J
    .end local v67           #totalTimeAtSpeeds:I
    .end local v73           #userTime:J
    :cond_7
    cmp-long v5, v18, v21

    if-lez v5, :cond_8

    .line 507
    move-wide/from16 v21, v18

    .line 509
    :cond_8
    const-wide v5, 0x408f400000000000L

    div-double v39, v39, v5

    .line 513
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v79

    .line 515
    .local v79, wakelockStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v79 .. v79}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .restart local v30       #i$:Ljava/util/Iterator;
    :cond_9
    :goto_5
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Ljava/util/Map$Entry;

    .line 516
    .local v78, wakelockEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v78 .. v78}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 519
    .local v77, wakelock:Landroid/os/BatteryStats$Uid$Wakelock;
    const/4 v5, 0x0

    move-object/from16 v0, v77

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v64

    .line 520
    .local v64, timer:Landroid/os/BatteryStats$Timer;
    if-eqz v64, :cond_9

    .line 521
    move-object/from16 v0, v64

    move-wide/from16 v1, v68

    move/from16 v3, v82

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v5

    add-long v80, v80, v5

    goto :goto_5

    .line 524
    .end local v64           #timer:Landroid/os/BatteryStats$Timer;
    .end local v77           #wakelock:Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v78           #wakelockEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_a
    const-wide/16 v5, 0x3e8

    div-long v80, v80, v5

    .line 525
    add-long v14, v14, v80

    .line 528
    move-wide/from16 v0, v80

    long-to-double v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "cpu.awake"

    invoke-virtual {v7, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v5, v9

    const-wide v9, 0x408f400000000000L

    div-double v37, v5, v9

    .line 530
    .local v37, p:D
    add-double v39, v39, v37

    .line 534
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v11, v5}, Landroid/os/BatteryStats$Uid;->getTcpBytesReceived(I)J

    move-result-wide v60

    .line 535
    .local v60, tcpBytesReceived:J
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v11, v5}, Landroid/os/BatteryStats$Uid;->getTcpBytesSent(I)J

    move-result-wide v62

    .line 536
    .local v62, tcpBytesSent:J
    add-long v5, v60, v62

    long-to-double v5, v5

    mul-double v37, v5, v16

    .line 537
    add-double v39, v39, v37

    .line 541
    move-wide/from16 v0, v68

    move/from16 v2, v82

    invoke-virtual {v11, v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long v83, v5, v9

    .line 542
    .local v83, wifiRunningTimeMs:J
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppWifiRunning:J

    add-long v5, v5, v83

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppWifiRunning:J

    .line 543
    move-wide/from16 v0, v83

    long-to-double v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "wifi.on"

    invoke-virtual {v7, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v5, v9

    const-wide v9, 0x408f400000000000L

    div-double v37, v5, v9

    .line 545
    add-double v39, v39, v37

    .line 549
    move-wide/from16 v0, v68

    move/from16 v2, v82

    invoke-virtual {v11, v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long v85, v5, v9

    .line 550
    .local v85, wifiScanTimeMs:J
    move-wide/from16 v0, v85

    long-to-double v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "wifi.scan"

    invoke-virtual {v7, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v5, v9

    const-wide v9, 0x408f400000000000L

    div-double v37, v5, v9

    .line 552
    add-double v39, v39, v37

    .line 556
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getSensorStats()Ljava/util/Map;

    move-result-object v52

    .line 558
    .local v52, sensorStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-interface/range {v52 .. v52}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :goto_6
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/util/Map$Entry;

    .line 559
    .local v50, sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-interface/range {v50 .. v50}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/os/BatteryStats$Uid$Sensor;

    .line 560
    .local v48, sensor:Landroid/os/BatteryStats$Uid$Sensor;
    invoke-virtual/range {v48 .. v48}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v55

    .line 561
    .local v55, sensorType:I
    invoke-virtual/range {v48 .. v48}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v64

    .line 562
    .restart local v64       #timer:Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, v64

    move-wide/from16 v1, v68

    move/from16 v3, v82

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long v53, v5, v9

    .line 563
    .local v53, sensorTime:J
    const-wide/16 v34, 0x0

    .line 564
    .local v34, multiplier:D
    packed-switch v55, :pswitch_data_0

    .line 570
    move-object/from16 v0, v51

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v49

    .line 572
    .local v49, sensorData:Landroid/hardware/Sensor;
    if-eqz v49, :cond_b

    .line 573
    invoke-virtual/range {v49 .. v49}, Landroid/hardware/Sensor;->getPower()F

    move-result v5

    float-to-double v0, v5

    move-wide/from16 v34, v0

    .line 576
    .end local v49           #sensorData:Landroid/hardware/Sensor;
    :cond_b
    :goto_7
    move-wide/from16 v0, v53

    long-to-double v5, v0

    mul-double v5, v5, v34

    const-wide v9, 0x408f400000000000L

    div-double v37, v5, v9

    .line 577
    add-double v39, v39, v37

    .line 581
    goto :goto_6

    .line 566
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v6, "gps.on"

    invoke-virtual {v5, v6}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v34

    .line 567
    move-wide/from16 v26, v53

    .line 568
    goto :goto_7

    .line 586
    .end local v34           #multiplier:D
    .end local v48           #sensor:Landroid/os/BatteryStats$Uid$Sensor;
    .end local v50           #sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v53           #sensorTime:J
    .end local v55           #sensorType:I
    .end local v64           #timer:Landroid/os/BatteryStats$Timer;
    :cond_c
    const/16 v31, 0x0

    .line 587
    .local v31, isOtherUser:Z
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v71

    .line 588
    .local v71, userId:I
    const-wide/16 v5, 0x0

    cmpl-double v5, v39, v5

    if-nez v5, :cond_d

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    if-nez v5, :cond_e

    .line 589
    :cond_d
    new-instance v4, Lcom/android/settings_ex/fuelgauge/BatterySipper;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    sget-object v9, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;->APP:Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;

    const/4 v10, 0x0

    const/4 v12, 0x1

    new-array v12, v12, [D

    const/16 v87, 0x0

    aput-wide v39, v12, v87

    invoke-direct/range {v4 .. v12}, Lcom/android/settings_ex/fuelgauge/BatterySipper;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;Ljava/lang/String;Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;ILandroid/os/BatteryStats$Uid;[D)V

    .line 592
    .local v4, app:Lcom/android/settings_ex/fuelgauge/BatterySipper;
    move-wide/from16 v0, v21

    iput-wide v0, v4, Lcom/android/settings_ex/fuelgauge/BatterySipper;->cpuTime:J

    .line 593
    move-wide/from16 v0, v26

    iput-wide v0, v4, Lcom/android/settings_ex/fuelgauge/BatterySipper;->gpsTime:J

    .line 594
    move-wide/from16 v0, v83

    iput-wide v0, v4, Lcom/android/settings_ex/fuelgauge/BatterySipper;->wifiRunningTime:J

    .line 595
    move-wide/from16 v0, v18

    iput-wide v0, v4, Lcom/android/settings_ex/fuelgauge/BatterySipper;->cpuFgTime:J

    .line 596
    move-wide/from16 v0, v80

    iput-wide v0, v4, Lcom/android/settings_ex/fuelgauge/BatterySipper;->wakeLockTime:J

    .line 597
    move-wide/from16 v0, v60

    iput-wide v0, v4, Lcom/android/settings_ex/fuelgauge/BatterySipper;->tcpBytesReceived:J

    .line 598
    move-wide/from16 v0, v62

    iput-wide v0, v4, Lcom/android/settings_ex/fuelgauge/BatterySipper;->tcpBytesSent:J

    .line 599
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x3f2

    if-ne v5, v6, :cond_10

    .line 600
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mWifiSippers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 615
    :goto_8
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    if-nez v5, :cond_e

    .line 616
    move-object/from16 v36, v4

    .line 619
    .end local v4           #app:Lcom/android/settings_ex/fuelgauge/BatterySipper;
    :cond_e
    const-wide/16 v5, 0x0

    cmpl-double v5, v39, v5

    if-eqz v5, :cond_f

    .line 620
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x3f2

    if-ne v5, v6, :cond_14

    .line 621
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mWifiPower:D

    add-double v5, v5, v39

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mWifiPower:D

    .line 450
    :cond_f
    :goto_9
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_1

    .line 601
    .restart local v4       #app:Lcom/android/settings_ex/fuelgauge/BatterySipper;
    :cond_10
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x7d0

    if-ne v5, v6, :cond_11

    .line 602
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mBluetoothSippers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 603
    :cond_11
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    move/from16 v0, v71

    if-eq v0, v5, :cond_13

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    const/16 v6, 0x2710

    if-lt v5, v6, :cond_13

    .line 605
    const/16 v31, 0x1

    .line 606
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mUserSippers:Landroid/util/SparseArray;

    move/from16 v0, v71

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/util/List;

    .line 607
    .local v33, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings_ex/fuelgauge/BatterySipper;>;"
    if-nez v33, :cond_12

    .line 608
    new-instance v33, Ljava/util/ArrayList;

    .end local v33           #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings_ex/fuelgauge/BatterySipper;>;"
    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 609
    .restart local v33       #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings_ex/fuelgauge/BatterySipper;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mUserSippers:Landroid/util/SparseArray;

    move/from16 v0, v71

    move-object/from16 v1, v33

    invoke-virtual {v5, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 611
    :cond_12
    move-object/from16 v0, v33

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 613
    .end local v33           #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings_ex/fuelgauge/BatterySipper;>;"
    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 622
    .end local v4           #app:Lcom/android/settings_ex/fuelgauge/BatterySipper;
    :cond_14
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x7d0

    if-ne v5, v6, :cond_15

    .line 623
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mBluetoothPower:D

    add-double v5, v5, v39

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mBluetoothPower:D

    goto :goto_9

    .line 624
    :cond_15
    if-eqz v31, :cond_17

    .line 625
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mUserPower:Landroid/util/SparseArray;

    move/from16 v0, v71

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Ljava/lang/Double;

    .line 626
    .local v72, userPower:Ljava/lang/Double;
    if-nez v72, :cond_16

    .line 627
    invoke-static/range {v39 .. v40}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v72

    .line 631
    :goto_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mUserPower:Landroid/util/SparseArray;

    move/from16 v0, v71

    move-object/from16 v1, v72

    invoke-virtual {v5, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_9

    .line 629
    :cond_16
    invoke-virtual/range {v72 .. v72}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    add-double v5, v5, v39

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v72

    goto :goto_a

    .line 633
    .end local v72           #userPower:Ljava/lang/Double;
    :cond_17
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mMaxPower:D

    cmpl-double v5, v39, v5

    if-lez v5, :cond_18

    move-wide/from16 v0, v39

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mMaxPower:D

    .line 634
    :cond_18
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mTotalPower:D

    add-double v5, v5, v39

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mTotalPower:D

    goto/16 :goto_9

    .line 642
    .end local v8           #packageWithHighestDrain:Ljava/lang/String;
    .end local v11           #u:Landroid/os/BatteryStats$Uid;
    .end local v18           #cpuFgTime:J
    .end local v21           #cpuTime:J
    .end local v26           #gpsTime:J
    .end local v28           #highestDrain:D
    .end local v30           #i$:Ljava/util/Iterator;
    .end local v31           #isOtherUser:Z
    .end local v37           #p:D
    .end local v39           #power:D
    .end local v44           #processStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v52           #sensorStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v60           #tcpBytesReceived:J
    .end local v62           #tcpBytesSent:J
    .end local v71           #userId:I
    .end local v79           #wakelockStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v80           #wakelockTime:J
    .end local v83           #wifiRunningTimeMs:J
    .end local v85           #wifiScanTimeMs:J
    :cond_19
    if-eqz v36, :cond_1b

    .line 643
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v9, 0x3e8

    mul-long/2addr v6, v9

    move/from16 v0, v82

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryUptime(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long v75, v5, v9

    .line 645
    .local v75, wakeTimeMillis:J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move/from16 v0, v82

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long/2addr v5, v9

    add-long/2addr v5, v14

    sub-long v75, v75, v5

    .line 647
    const-wide/16 v5, 0x0

    cmp-long v5, v75, v5

    if-lez v5, :cond_1b

    .line 648
    move-wide/from16 v0, v75

    long-to-double v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "cpu.awake"

    invoke-virtual {v7, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v5, v9

    const-wide v9, 0x408f400000000000L

    div-double v39, v5, v9

    .line 650
    .restart local v39       #power:D
    const-string v5, "PowerUsageSummary"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OS wakeLockTime "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v75

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " power "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v39

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    move-object/from16 v0, v36

    iget-wide v5, v0, Lcom/android/settings_ex/fuelgauge/BatterySipper;->wakeLockTime:J

    add-long v5, v5, v75

    move-object/from16 v0, v36

    iput-wide v5, v0, Lcom/android/settings_ex/fuelgauge/BatterySipper;->wakeLockTime:J

    .line 652
    move-object/from16 v0, v36

    iget-wide v5, v0, Lcom/android/settings_ex/fuelgauge/BatterySipper;->value:D

    add-double v5, v5, v39

    move-object/from16 v0, v36

    iput-wide v5, v0, Lcom/android/settings_ex/fuelgauge/BatterySipper;->value:D

    .line 653
    move-object/from16 v0, v36

    iget-object v5, v0, Lcom/android/settings_ex/fuelgauge/BatterySipper;->values:[D

    const/4 v6, 0x0

    aget-wide v9, v5, v6

    add-double v9, v9, v39

    aput-wide v9, v5, v6

    .line 654
    move-object/from16 v0, v36

    iget-wide v5, v0, Lcom/android/settings_ex/fuelgauge/BatterySipper;->value:D

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mMaxPower:D

    cmpl-double v5, v5, v9

    if-lez v5, :cond_1a

    move-object/from16 v0, v36

    iget-wide v5, v0, Lcom/android/settings_ex/fuelgauge/BatterySipper;->value:D

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mMaxPower:D

    .line 655
    :cond_1a
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mTotalPower:D

    add-double v5, v5, v39

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mTotalPower:D

    .line 658
    .end local v39           #power:D
    .end local v75           #wakeTimeMillis:J
    :cond_1b
    return-void

    .line 564
    :pswitch_data_0
    .packed-switch -0x2710
        :pswitch_0
    .end packed-switch
.end method

.method private processMiscUsage()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    .line 814
    iget v6, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 815
    .local v6, which:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    mul-long v4, v7, v10

    .line 816
    .local v4, uSecTime:J
    iget-object v7, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v7, v4, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v2

    .line 817
    .local v2, uSecNow:J
    move-wide v0, v2

    .line 818
    .local v0, timeSinceUnplugged:J
    const-string v7, "PowerUsageSummary"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Uptime since last unplugged = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    div-long v9, v0, v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->addUserUsage()V

    .line 821
    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->addPhoneUsage(J)V

    .line 822
    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->addScreenUsage(J)V

    .line 823
    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->addWiFiUsage(J)V

    .line 824
    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->addBluetoothUsage(J)V

    .line 825
    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->addIdleUsage(J)V

    .line 827
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 828
    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->addRadioUsage(J)V

    .line 830
    :cond_0
    return-void
.end method

.method private refreshStats()V
    .locals 14

    .prologue
    const-wide/high16 v12, 0x4059

    const-wide/16 v9, 0x0

    .line 374
    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    if-nez v8, :cond_0

    .line 375
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->load()V

    .line 377
    :cond_0
    iput-wide v9, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mMaxPower:D

    .line 378
    iput-wide v9, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mTotalPower:D

    .line 379
    iput-wide v9, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mWifiPower:D

    .line 380
    iput-wide v9, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mBluetoothPower:D

    .line 381
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppWifiRunning:J

    .line 383
    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 384
    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 385
    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mWifiSippers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 386
    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mBluetoothSippers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 387
    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->clear()V

    .line 388
    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mUserPower:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->clear()V

    .line 389
    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 391
    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Landroid/preference/Preference;

    const/4 v9, -0x2

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setOrder(I)V

    .line 392
    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    iget-object v9, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Landroid/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 393
    new-instance v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v0, v8, v9}, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;-><init>(Landroid/content/Context;Landroid/os/BatteryStats;)V

    .line 394
    .local v0, hist:Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;
    const/4 v8, -0x1

    invoke-virtual {v0, v8}, Landroid/preference/Preference;->setOrder(I)V

    .line 395
    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 397
    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "screen.full"

    invoke-virtual {v8, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v8

    const-wide/high16 v10, 0x4024

    cmpg-double v8, v8, v10

    if-gez v8, :cond_1

    .line 398
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->addNotAvailableMessage()V

    .line 431
    :goto_0
    return-void

    .line 401
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->processAppUsage()V

    .line 402
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->processMiscUsage()V

    .line 404
    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 405
    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings_ex/fuelgauge/BatterySipper;

    .line 406
    .local v7, sipper:Lcom/android/settings_ex/fuelgauge/BatterySipper;
    invoke-virtual {v7}, Lcom/android/settings_ex/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v8

    const-wide/high16 v10, 0x4014

    cmpg-double v8, v8, v10

    if-ltz v8, :cond_2

    .line 407
    invoke-virtual {v7}, Lcom/android/settings_ex/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mTotalPower:D

    div-double/2addr v8, v10

    mul-double v4, v8, v12

    .line 408
    .local v4, percentOfTotal:D
    const-wide/high16 v8, 0x3ff0

    cmpg-double v8, v4, v8

    if-ltz v8, :cond_2

    .line 409
    new-instance v6, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/settings_ex/fuelgauge/BatterySipper;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-direct {v6, v8, v9, v7}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/android/settings_ex/fuelgauge/BatterySipper;)V

    .line 410
    .local v6, pref:Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;
    invoke-virtual {v7}, Lcom/android/settings_ex/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v8

    mul-double/2addr v8, v12

    iget-wide v10, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mMaxPower:D

    div-double v2, v8, v10

    .line 411
    .local v2, percentOfMax:D
    iput-wide v4, v7, Lcom/android/settings_ex/fuelgauge/BatterySipper;->percent:D

    .line 412
    iget-object v8, v7, Lcom/android/settings_ex/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 413
    const v8, 0x7fffffff

    invoke-virtual {v7}, Lcom/android/settings_ex/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v9

    double-to-int v9, v9

    sub-int/2addr v8, v9

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setOrder(I)V

    .line 414
    invoke-virtual {v6, v2, v3, v4, v5}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->setPercent(DD)V

    .line 415
    iget-object v8, v7, Lcom/android/settings_ex/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v8, :cond_3

    .line 416
    iget-object v8, v7, Lcom/android/settings_ex/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 418
    :cond_3
    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 419
    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v8

    const/16 v9, 0xb

    if-le v8, v9, :cond_2

    .line 421
    .end local v2           #percentOfMax:D
    .end local v4           #percentOfTotal:D
    .end local v6           #pref:Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;
    .end local v7           #sipper:Lcom/android/settings_ex/fuelgauge/BatterySipper;
    :cond_4
    iget-object v9, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v9

    .line 422
    :try_start_0
    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    .line 423
    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    if-nez v8, :cond_5

    .line 424
    new-instance v8, Ljava/lang/Thread;

    const-string v10, "BatteryUsage Icon Loader"

    invoke-direct {v8, p0, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    .line 425
    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Ljava/lang/Thread;->setPriority(I)V

    .line 426
    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 428
    :cond_5
    iget-object v8, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    .line 430
    :cond_6
    monitor-exit v9

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 140
    if-eqz p1, :cond_0

    .line 141
    sget-object v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->sStatsXfer:Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 144
    :cond_0
    const v0, 0x7f07005b

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 145
    const-string v0, "batteryinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 147
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mUm:Landroid/os/UserManager;

    .line 148
    const-string v0, "app_list"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    .line 149
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const-string v1, "battery_status"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mBatteryStatusPref:Landroid/preference/Preference;

    .line 150
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 151
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 152
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v5, 0x0

    .line 334
    const/4 v3, 0x2

    const v4, 0x7f0907e5

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f02018e

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    const/16 v4, 0x72

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v2

    .line 337
    .local v2, refresh:Landroid/view/MenuItem;
    const/4 v3, 0x5

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 341
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090a18

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, helpUrl:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 342
    const/4 v3, 0x3

    const v4, 0x7f090a11

    invoke-interface {p1, v5, v3, v5, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 343
    .local v0, help:Landroid/view/MenuItem;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lcom/android/settings_ex/HelpUtils;->prepareHelpMenuItem(Landroid/content/Context;Landroid/view/MenuItem;Ljava/lang/String;)Z

    .line 345
    .end local v0           #help:Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 175
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 176
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    sput-object v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->sStatsXfer:Lcom/android/internal/os/BatteryStatsImpl;

    .line 179
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 349
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 363
    :goto_0
    return v0

    .line 351
    :pswitch_0
    iget v2, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    if-nez v2, :cond_0

    .line 352
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 356
    :goto_1
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->refreshStats()V

    goto :goto_0

    .line 354
    :cond_0
    iput v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    goto :goto_1

    .line 359
    :pswitch_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 360
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->refreshStats()V

    goto :goto_0

    .line 349
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 165
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 166
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAbort:Z

    .line 167
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 169
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 170
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 171
    return-void

    .line 167
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 17
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 183
    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/android/settings_ex/fuelgauge/BatteryHistoryPreference;

    if-eqz v2, :cond_0

    .line 184
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8

    .line 185
    .local v8, hist:Landroid/os/Parcel;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v4, 0x0

    invoke-virtual {v2, v8, v4}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcelWithoutUids(Landroid/os/Parcel;I)V

    .line 186
    invoke-virtual {v8}, Landroid/os/Parcel;->marshall()[B

    move-result-object v9

    .line 187
    .local v9, histData:[B
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 188
    .local v3, args:Landroid/os/Bundle;
    const-string v2, "stats"

    invoke-virtual {v3, v2, v9}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 189
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 190
    .local v1, pa:Landroid/preference/PreferenceActivity;
    const-class v2, Lcom/android/settings_ex/fuelgauge/BatteryHistoryDetail;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f0907b5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 192
    invoke-super/range {p0 .. p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    .line 324
    .end local v1           #pa:Landroid/preference/PreferenceActivity;
    .end local v3           #args:Landroid/os/Bundle;
    .end local v8           #hist:Landroid/os/Parcel;
    .end local v9           #histData:[B
    :goto_0
    return v2

    .line 194
    :cond_0
    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;

    if-nez v2, :cond_1

    .line 195
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v10, p2

    .line 197
    check-cast v10, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;

    .line 198
    .local v10, pgp:Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;
    invoke-virtual {v10}, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->getInfo()Lcom/android/settings_ex/fuelgauge/BatterySipper;

    move-result-object v13

    .line 199
    .local v13, sipper:Lcom/android/settings_ex/fuelgauge/BatterySipper;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 200
    .restart local v3       #args:Landroid/os/Bundle;
    const-string v2, "title"

    iget-object v4, v13, Lcom/android/settings_ex/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v2, "percent"

    invoke-virtual {v13}, Lcom/android/settings_ex/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x4059

    mul-double/2addr v4, v6

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mTotalPower:D

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 203
    const-string v2, "gauge"

    invoke-virtual {v13}, Lcom/android/settings_ex/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x4059

    mul-double/2addr v4, v6

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mMaxPower:D

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 205
    const-string v2, "duration"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsPeriod:J

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 206
    const-string v2, "iconPackage"

    iget-object v4, v13, Lcom/android/settings_ex/fuelgauge/BatterySipper;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v2, "iconId"

    iget v4, v13, Lcom/android/settings_ex/fuelgauge/BatterySipper;->iconId:I

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 208
    const-string v2, "noCoverage"

    iget-wide v4, v13, Lcom/android/settings_ex/fuelgauge/BatterySipper;->noCoveragePercent:D

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 209
    iget-object v2, v13, Lcom/android/settings_ex/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v2, :cond_2

    .line 210
    const-string v2, "uid"

    iget-object v4, v13, Lcom/android/settings_ex/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 212
    :cond_2
    const-string v2, "drainType"

    iget-object v4, v13, Lcom/android/settings_ex/fuelgauge/BatterySipper;->drainType:Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 216
    sget-object v2, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary$3;->$SwitchMap$com$android$settings$fuelgauge$PowerUsageDetail$DrainType:[I

    iget-object v4, v13, Lcom/android/settings_ex/fuelgauge/BatterySipper;->drainType:Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 310
    const/4 v2, 0x1

    new-array v14, v2, [I

    const/4 v2, 0x0

    const v4, 0x7f0907ca

    aput v4, v14, v2

    .line 313
    .local v14, types:[I
    const/4 v2, 0x1

    new-array v0, v2, [D

    move-object/from16 v16, v0

    const/4 v2, 0x0

    iget-wide v4, v13, Lcom/android/settings_ex/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v4, v4

    aput-wide v4, v16, v2

    .line 318
    .local v16, values:[D
    :cond_3
    :goto_1
    const-string v2, "types"

    invoke-virtual {v3, v2, v14}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 319
    const-string v2, "values"

    move-object/from16 v0, v16

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 320
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 321
    .restart local v1       #pa:Landroid/preference/PreferenceActivity;
    const-class v2, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f0907b6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 324
    invoke-super/range {p0 .. p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto/16 :goto_0

    .line 220
    .end local v1           #pa:Landroid/preference/PreferenceActivity;
    .end local v14           #types:[I
    .end local v16           #values:[D
    :pswitch_0
    iget-object v15, v13, Lcom/android/settings_ex/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    .line 221
    .local v15, uid:Landroid/os/BatteryStats$Uid;
    const/16 v2, 0x9

    new-array v14, v2, [I

    fill-array-data v14, :array_0

    .line 232
    .restart local v14       #types:[I
    const/16 v2, 0x9

    new-array v0, v2, [D

    move-object/from16 v16, v0

    const/4 v2, 0x0

    iget-wide v4, v13, Lcom/android/settings_ex/fuelgauge/BatterySipper;->cpuTime:J

    long-to-double v4, v4

    aput-wide v4, v16, v2

    const/4 v2, 0x1

    iget-wide v4, v13, Lcom/android/settings_ex/fuelgauge/BatterySipper;->cpuFgTime:J

    long-to-double v4, v4

    aput-wide v4, v16, v2

    const/4 v2, 0x2

    iget-wide v4, v13, Lcom/android/settings_ex/fuelgauge/BatterySipper;->wakeLockTime:J

    long-to-double v4, v4

    aput-wide v4, v16, v2

    const/4 v2, 0x3

    iget-wide v4, v13, Lcom/android/settings_ex/fuelgauge/BatterySipper;->gpsTime:J

    long-to-double v4, v4

    aput-wide v4, v16, v2

    const/4 v2, 0x4

    iget-wide v4, v13, Lcom/android/settings_ex/fuelgauge/BatterySipper;->wifiRunningTime:J

    long-to-double v4, v4

    aput-wide v4, v16, v2

    const/4 v2, 0x5

    iget-wide v4, v13, Lcom/android/settings_ex/fuelgauge/BatterySipper;->tcpBytesSent:J

    long-to-double v4, v4

    aput-wide v4, v16, v2

    const/4 v2, 0x6

    iget-wide v4, v13, Lcom/android/settings_ex/fuelgauge/BatterySipper;->tcpBytesReceived:J

    long-to-double v4, v4

    aput-wide v4, v16, v2

    const/4 v2, 0x7

    const-wide/16 v4, 0x0

    aput-wide v4, v16, v2

    const/16 v2, 0x8

    const-wide/16 v4, 0x0

    aput-wide v4, v16, v2

    .line 244
    .restart local v16       #values:[D
    iget-object v2, v13, Lcom/android/settings_ex/fuelgauge/BatterySipper;->drainType:Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;

    sget-object v4, Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;->APP:Lcom/android/settings_ex/fuelgauge/PowerUsageDetail$DrainType;

    if-ne v2, v4, :cond_3

    .line 245
    new-instance v12, Ljava/io/StringWriter;

    invoke-direct {v12}, Ljava/io/StringWriter;-><init>()V

    .line 246
    .local v12, result:Ljava/io/Writer;
    new-instance v11, Ljava/io/PrintWriter;

    invoke-direct {v11, v12}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 247
    .local v11, printWriter:Ljava/io/PrintWriter;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const-string v4, ""

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v6

    invoke-virtual {v2, v11, v4, v5, v6}, Landroid/os/BatteryStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;II)V

    .line 248
    const-string v2, "report_details"

    invoke-virtual {v12}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    new-instance v12, Ljava/io/StringWriter;

    .end local v12           #result:Ljava/io/Writer;
    invoke-direct {v12}, Ljava/io/StringWriter;-><init>()V

    .line 251
    .restart local v12       #result:Ljava/io/Writer;
    new-instance v11, Ljava/io/PrintWriter;

    .end local v11           #printWriter:Ljava/io/PrintWriter;
    invoke-direct {v11, v12}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 252
    .restart local v11       #printWriter:Ljava/io/PrintWriter;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    invoke-virtual {v2, v11, v4, v5}, Landroid/os/BatteryStats;->dumpCheckinLocked(Ljava/io/PrintWriter;II)V

    .line 253
    const-string v2, "report_checkin_details"

    invoke-virtual {v12}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 260
    .end local v11           #printWriter:Ljava/io/PrintWriter;
    .end local v12           #result:Ljava/io/Writer;
    .end local v14           #types:[I
    .end local v15           #uid:Landroid/os/BatteryStats$Uid;
    .end local v16           #values:[D
    :pswitch_1
    const/4 v2, 0x2

    new-array v14, v2, [I

    fill-array-data v14, :array_1

    .line 264
    .restart local v14       #types:[I
    const/4 v2, 0x2

    new-array v0, v2, [D

    move-object/from16 v16, v0

    const/4 v2, 0x0

    iget-wide v4, v13, Lcom/android/settings_ex/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v4, v4

    aput-wide v4, v16, v2

    const/4 v2, 0x1

    iget-wide v4, v13, Lcom/android/settings_ex/fuelgauge/BatterySipper;->noCoveragePercent:D

    aput-wide v4, v16, v2

    .line 269
    .restart local v16       #values:[D
    goto/16 :goto_1

    .line 272
    .end local v14           #types:[I
    .end local v16           #values:[D
    :pswitch_2
    const/4 v2, 0x6

    new-array v14, v2, [I

    fill-array-data v14, :array_2

    .line 280
    .restart local v14       #types:[I
    const/4 v2, 0x6

    new-array v0, v2, [D

    move-object/from16 v16, v0

    const/4 v2, 0x0

    iget-wide v4, v13, Lcom/android/settings_ex/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v4, v4

    aput-wide v4, v16, v2

    const/4 v2, 0x1

    iget-wide v4, v13, Lcom/android/settings_ex/fuelgauge/BatterySipper;->cpuTime:J

    long-to-double v4, v4

    aput-wide v4, v16, v2

    const/4 v2, 0x2

    iget-wide v4, v13, Lcom/android/settings_ex/fuelgauge/BatterySipper;->cpuFgTime:J

    long-to-double v4, v4

    aput-wide v4, v16, v2

    const/4 v2, 0x3

    iget-wide v4, v13, Lcom/android/settings_ex/fuelgauge/BatterySipper;->wakeLockTime:J

    long-to-double v4, v4

    aput-wide v4, v16, v2

    const/4 v2, 0x4

    iget-wide v4, v13, Lcom/android/settings_ex/fuelgauge/BatterySipper;->tcpBytesSent:J

    long-to-double v4, v4

    aput-wide v4, v16, v2

    const/4 v2, 0x5

    iget-wide v4, v13, Lcom/android/settings_ex/fuelgauge/BatterySipper;->tcpBytesReceived:J

    long-to-double v4, v4

    aput-wide v4, v16, v2

    .line 288
    .restart local v16       #values:[D
    goto/16 :goto_1

    .line 291
    .end local v14           #types:[I
    .end local v16           #values:[D
    :pswitch_3
    const/4 v2, 0x6

    new-array v14, v2, [I

    fill-array-data v14, :array_3

    .line 299
    .restart local v14       #types:[I
    const/4 v2, 0x6

    new-array v0, v2, [D

    move-object/from16 v16, v0

    const/4 v2, 0x0

    iget-wide v4, v13, Lcom/android/settings_ex/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v4, v4

    aput-wide v4, v16, v2

    const/4 v2, 0x1

    iget-wide v4, v13, Lcom/android/settings_ex/fuelgauge/BatterySipper;->cpuTime:J

    long-to-double v4, v4

    aput-wide v4, v16, v2

    const/4 v2, 0x2

    iget-wide v4, v13, Lcom/android/settings_ex/fuelgauge/BatterySipper;->cpuFgTime:J

    long-to-double v4, v4

    aput-wide v4, v16, v2

    const/4 v2, 0x3

    iget-wide v4, v13, Lcom/android/settings_ex/fuelgauge/BatterySipper;->wakeLockTime:J

    long-to-double v4, v4

    aput-wide v4, v16, v2

    const/4 v2, 0x4

    iget-wide v4, v13, Lcom/android/settings_ex/fuelgauge/BatterySipper;->tcpBytesSent:J

    long-to-double v4, v4

    aput-wide v4, v16, v2

    const/4 v2, 0x5

    iget-wide v4, v13, Lcom/android/settings_ex/fuelgauge/BatterySipper;->tcpBytesReceived:J

    long-to-double v4, v4

    aput-wide v4, v16, v2

    .line 307
    .restart local v16       #values:[D
    goto/16 :goto_1

    .line 216
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 221
    :array_0
    .array-data 0x4
        0xc0t 0x7t 0x9t 0x7ft
        0xc1t 0x7t 0x9t 0x7ft
        0xc2t 0x7t 0x9t 0x7ft
        0xc3t 0x7t 0x9t 0x7ft
        0xc4t 0x7t 0x9t 0x7ft
        0xc6t 0x7t 0x9t 0x7ft
        0xc7t 0x7t 0x9t 0x7ft
        0xc8t 0x7t 0x9t 0x7ft
        0xc9t 0x7t 0x9t 0x7ft
    .end array-data

    .line 260
    :array_1
    .array-data 0x4
        0xcat 0x7t 0x9t 0x7ft
        0xcbt 0x7t 0x9t 0x7ft
    .end array-data

    .line 272
    :array_2
    .array-data 0x4
        0xc4t 0x7t 0x9t 0x7ft
        0xc0t 0x7t 0x9t 0x7ft
        0xc1t 0x7t 0x9t 0x7ft
        0xc2t 0x7t 0x9t 0x7ft
        0xc6t 0x7t 0x9t 0x7ft
        0xc7t 0x7t 0x9t 0x7ft
    .end array-data

    .line 291
    :array_3
    .array-data 0x4
        0xcat 0x7t 0x9t 0x7ft
        0xc0t 0x7t 0x9t 0x7ft
        0xc1t 0x7t 0x9t 0x7ft
        0xc2t 0x7t 0x9t 0x7ft
        0xc6t 0x7t 0x9t 0x7ft
        0xc7t 0x7t 0x9t 0x7ft
    .end array-data
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 156
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAbort:Z

    .line 158
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    invoke-direct {p0}, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->refreshStats()V

    .line 161
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 861
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v2

    .line 862
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mAbort:Z

    if-eqz v1, :cond_1

    .line 863
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    .line 864
    monitor-exit v2

    return-void

    .line 866
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/fuelgauge/BatterySipper;

    .line 867
    .local v0, bs:Lcom/android/settings_ex/fuelgauge/BatterySipper;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 868
    invoke-virtual {v0}, Lcom/android/settings_ex/fuelgauge/BatterySipper;->getNameIcon()V

    goto :goto_0

    .line 867
    .end local v0           #bs:Lcom/android/settings_ex/fuelgauge/BatterySipper;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
