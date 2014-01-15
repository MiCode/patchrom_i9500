.class public Lcom/android/settings_ex/autohaptic/AutoHapticSettings$ReverbBasicSettings;
.super Ljava/lang/Object;
.source "AutoHapticSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/autohaptic/AutoHapticSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReverbBasicSettings"
.end annotation


# static fields
.field static final density_ERM:[I

.field static final density_LRA:[I

.field static final density_PIEZO:[I

.field static final sharpness_ERM:[I

.field static final sharpness_LRA:[I

.field static final sharpness_PIEZO:[I

.field static final strength_ERM:[I

.field static final strength_LRA:[I

.field static final strength_PIEZO:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 563
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$ReverbBasicSettings;->strength_ERM:[I

    .line 564
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$ReverbBasicSettings;->density_ERM:[I

    .line 565
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$ReverbBasicSettings;->sharpness_ERM:[I

    .line 566
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$ReverbBasicSettings;->strength_LRA:[I

    .line 567
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$ReverbBasicSettings;->density_LRA:[I

    .line 568
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$ReverbBasicSettings;->sharpness_LRA:[I

    .line 569
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$ReverbBasicSettings;->strength_PIEZO:[I

    .line 570
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$ReverbBasicSettings;->density_PIEZO:[I

    .line 571
    new-array v0, v1, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$ReverbBasicSettings;->sharpness_PIEZO:[I

    return-void

    .line 563
    :array_0
    .array-data 0x4
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data

    .line 564
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data

    .line 565
    :array_2
    .array-data 0x4
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data

    .line 566
    :array_3
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data

    .line 567
    :array_4
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 568
    :array_5
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 569
    :array_6
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data

    .line 570
    :array_7
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data

    .line 571
    :array_8
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDensity(II)I
    .locals 2
    .parameter "actuator"
    .parameter "intensity"

    .prologue
    .line 597
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 598
    sget-object v0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$ReverbBasicSettings;->density_PIEZO:[I

    invoke-static {p1}, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$ReverbBasicSettings;->getIntensity(I)I

    move-result v1

    aget v0, v0, v1

    .line 602
    :goto_0
    return v0

    .line 599
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 600
    sget-object v0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$ReverbBasicSettings;->density_LRA:[I

    invoke-static {p1}, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$ReverbBasicSettings;->getIntensity(I)I

    move-result v1

    aget v0, v0, v1

    goto :goto_0

    .line 602
    :cond_1
    sget-object v0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$ReverbBasicSettings;->density_ERM:[I

    invoke-static {p1}, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$ReverbBasicSettings;->getIntensity(I)I

    move-result v1

    aget v0, v0, v1

    goto :goto_0
.end method

.method private static getIntensity(I)I
    .locals 1
    .parameter "intensity"

    .prologue
    .line 575
    if-lez p0, :cond_1

    .line 577
    const/16 v0, 0x9

    if-le p0, v0, :cond_0

    const/16 p0, 0x9

    .line 580
    :cond_0
    add-int/lit8 p0, p0, -0x1

    .line 582
    .end local p0
    :cond_1
    return p0
.end method

.method public static getSharpness(II)I
    .locals 2
    .parameter "actuator"
    .parameter "intensity"

    .prologue
    .line 607
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 608
    sget-object v0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$ReverbBasicSettings;->sharpness_PIEZO:[I

    invoke-static {p1}, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$ReverbBasicSettings;->getIntensity(I)I

    move-result v1

    aget v0, v0, v1

    .line 612
    :goto_0
    return v0

    .line 609
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 610
    sget-object v0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$ReverbBasicSettings;->sharpness_LRA:[I

    invoke-static {p1}, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$ReverbBasicSettings;->getIntensity(I)I

    move-result v1

    aget v0, v0, v1

    goto :goto_0

    .line 612
    :cond_1
    sget-object v0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$ReverbBasicSettings;->sharpness_ERM:[I

    invoke-static {p1}, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$ReverbBasicSettings;->getIntensity(I)I

    move-result v1

    aget v0, v0, v1

    goto :goto_0
.end method

.method public static getStrength(II)I
    .locals 2
    .parameter "actuator"
    .parameter "intensity"

    .prologue
    .line 587
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 588
    sget-object v0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$ReverbBasicSettings;->strength_PIEZO:[I

    invoke-static {p1}, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$ReverbBasicSettings;->getIntensity(I)I

    move-result v1

    aget v0, v0, v1

    .line 592
    :goto_0
    return v0

    .line 589
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 590
    sget-object v0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$ReverbBasicSettings;->strength_LRA:[I

    invoke-static {p1}, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$ReverbBasicSettings;->getIntensity(I)I

    move-result v1

    aget v0, v0, v1

    goto :goto_0

    .line 592
    :cond_1
    sget-object v0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$ReverbBasicSettings;->strength_ERM:[I

    invoke-static {p1}, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$ReverbBasicSettings;->getIntensity(I)I

    move-result v1

    aget v0, v0, v1

    goto :goto_0
.end method
