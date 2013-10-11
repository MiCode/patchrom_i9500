.class public Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;
.super Ljava/lang/Object;
.source "Def.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;
    }
.end annotation


# static fields
.field public static MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

.field public static inkColorFromSettingForLCD:[[F

.field public static inkColorFromSettingForLED:[[F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 5
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_WITH_INK:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    .line 14
    const/16 v0, 0x9

    new-array v0, v0, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    new-array v1, v3, [F

    fill-array-data v1, :array_2

    aput-object v1, v0, v6

    new-array v1, v3, [F

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    new-array v1, v3, [F

    fill-array-data v1, :array_4

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [F

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [F

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [F

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [F

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->inkColorFromSettingForLCD:[[F

    .line 26
    const/16 v0, 0x9

    new-array v0, v0, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_9

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_a

    aput-object v1, v0, v5

    new-array v1, v3, [F

    fill-array-data v1, :array_b

    aput-object v1, v0, v6

    new-array v1, v3, [F

    fill-array-data v1, :array_c

    aput-object v1, v0, v3

    new-array v1, v3, [F

    fill-array-data v1, :array_d

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [F

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [F

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [F

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [F

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->inkColorFromSettingForLED:[[F

    return-void

    .line 14
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0xcct 0x3et
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_1
    .array-data 0x4
        0xd3t 0xd2t 0x52t 0x3ft
        0xf1t 0xf0t 0xf0t 0x3et
        0x8dt 0x8ct 0xct 0x3ft
    .end array-data

    :array_2
    .array-data 0x4
        0xd3t 0xd2t 0x52t 0x3ft
        0x8dt 0x8ct 0xct 0x3ft
        0xa1t 0xa0t 0xa0t 0x3et
    .end array-data

    :array_3
    .array-data 0x4
        0xb5t 0xb4t 0xb4t 0x3et
        0x97t 0x96t 0x16t 0x3ft
        0xddt 0xdct 0x5ct 0x3et
    .end array-data

    :array_4
    .array-data 0x4
        0xc9t 0xc8t 0xc8t 0x3dt
        0xa1t 0xa0t 0xa0t 0x3et
        0xbat 0xb9t 0x39t 0x3ft
    .end array-data

    :array_5
    .array-data 0x4
        0xc9t 0xc8t 0xc8t 0x3dt
        0xddt 0xdct 0x5ct 0x3et
        0xc9t 0xc8t 0xc8t 0x3et
    .end array-data

    :array_6
    .array-data 0x4
        0xa1t 0xa0t 0xa0t 0x3et
        0xa1t 0xa0t 0x20t 0x3et
        0xa1t 0xa0t 0x20t 0x3ft
    .end array-data

    :array_7
    .array-data 0x4
        0x83t 0x82t 0x2t 0x3ft
        0xbft 0xbet 0xbet 0x3et
        0xddt 0xdct 0x5ct 0x3et
    .end array-data

    :array_8
    .array-data 0x4
        0xa1t 0xa0t 0xa0t 0x3dt
        0xc9t 0xc8t 0xc8t 0x3et
        0x8dt 0x8ct 0xct 0x3ft
    .end array-data

    .line 26
    :array_9
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0xcct 0x3et
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_a
    .array-data 0x4
        0xb5t 0xc3t 0x43t 0x3ft
        0xe9t 0xf0t 0xf0t 0x3et
        0x82t 0x8ct 0xct 0x3ft
    .end array-data

    :array_b
    .array-data 0x4
        0xbet 0xbet 0x3et 0x3ft
        0xcat 0xdct 0xdct 0x3et
        0xe9t 0xf0t 0xf0t 0x3dt
    .end array-data

    :array_c
    .array-data 0x4
        0x72t 0x8ct 0x8ct 0x3et
        0x73t 0x82t 0x2t 0x3ft
        0xe9t 0xf0t 0xf0t 0x3dt
    .end array-data

    :array_d
    .array-data 0x4
        0xe8t 0x9ft 0x20t 0x3dt
        0x9ft 0xaat 0xaat 0x3et
        0xf8t 0xfat 0x7at 0x3ft
    .end array-data

    :array_e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xe9t 0xf0t 0xf0t 0x3dt
        0xaft 0xb4t 0xb4t 0x3et
    .end array-data

    :array_f
    .array-data 0x4
        0xaft 0xb4t 0xb4t 0x3et
        0xe9t 0xf0t 0x70t 0x3et
        0xaft 0xb4t 0x34t 0x3ft
    .end array-data

    :array_10
    .array-data 0x4
        0xcat 0xdct 0x5ct 0x3et
        0xact 0xc8t 0xc8t 0x3dt
        0xe8t 0x9ft 0x20t 0x3dt
    .end array-data

    :array_11
    .array-data 0x4
        0x90t 0xa0t 0xa0t 0x3et
        0x90t 0xa0t 0x20t 0x3ft
        0xaft 0xb4t 0x34t 0x3ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method
