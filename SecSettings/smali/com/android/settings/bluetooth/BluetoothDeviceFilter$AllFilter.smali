.class final Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$AllFilter;
.super Ljava/lang/Object;
.source "BluetoothDeviceFilter.java"

# interfaces
.implements Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AllFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/settings_ex/bluetooth/BluetoothDeviceFilter$AllFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 84
    const/4 v0, 0x1

    return v0
.end method
