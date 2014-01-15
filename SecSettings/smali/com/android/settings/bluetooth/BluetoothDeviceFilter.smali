.class final Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter;
.super Ljava/lang/Object;
.source "BluetoothDeviceFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$1;,
        Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$HidFilter;,
        Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$AudioAVFilter;,
        Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$AudioAGFilter;,
        Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$NapFilter;,
        Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$PanuFilter;,
        Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$TransferFilter;,
        Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$AudioFilter;,
        Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$ClassUuidFilter;,
        Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$UnbondedDeviceFilter;,
        Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$BondedDeviceFilter;,
        Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$AllFilter;,
        Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$Filter;
    }
.end annotation


# static fields
.field static final ALL_FILTER:Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$Filter; = null

.field static final BONDED_DEVICE_FILTER:Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$Filter; = null

.field private static final FILTERS:[Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$Filter; = null

.field private static final TAG:Ljava/lang/String; = "BluetoothDeviceFilter"

.field static final UNBONDED_DEVICE_FILTER:Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$Filter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 40
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$AllFilter;

    invoke-direct {v0, v3}, Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$AllFilter;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$1;)V

    sput-object v0, Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$Filter;

    .line 43
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$BondedDeviceFilter;

    invoke-direct {v0, v3}, Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$BondedDeviceFilter;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$1;)V

    sput-object v0, Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$Filter;

    .line 46
    new-instance v0, Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$UnbondedDeviceFilter;

    invoke-direct {v0, v3}, Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$UnbondedDeviceFilter;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$1;)V

    sput-object v0, Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$Filter;

    .line 49
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$Filter;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$Filter;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$AudioFilter;

    invoke-direct {v2, v3}, Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$AudioFilter;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$TransferFilter;

    invoke-direct {v2, v3}, Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$TransferFilter;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$PanuFilter;

    invoke-direct {v2, v3}, Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$PanuFilter;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$NapFilter;

    invoke-direct {v2, v3}, Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$NapFilter;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$AudioAGFilter;

    invoke-direct {v2, v3}, Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$AudioAGFilter;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$AudioAVFilter;

    invoke-direct {v2, v3}, Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$AudioAVFilter;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$HidFilter;

    invoke-direct {v2, v3}, Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$HidFilter;-><init>(Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$1;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter;->FILTERS:[Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$Filter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method static getFilter(I)Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$Filter;
    .locals 3
    .parameter "filterType"

    .prologue
    .line 73
    if-ltz p0, :cond_0

    sget-object v0, Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter;->FILTERS:[Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$Filter;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 74
    sget-object v0, Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter;->FILTERS:[Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$Filter;

    aget-object v0, v0, p0

    .line 77
    :goto_0
    return-object v0

    .line 76
    :cond_0
    const-string v0, "BluetoothDeviceFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid filter type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for device picker"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sget-object v0, Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$Filter;

    goto :goto_0
.end method
