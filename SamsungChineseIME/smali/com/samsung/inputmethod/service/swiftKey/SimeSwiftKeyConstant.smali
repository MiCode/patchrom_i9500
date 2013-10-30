.class public Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant;
.super Ljava/lang/Object;
.source "SimeSwiftKeyConstant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant$SEQUENCE_TYPE;
    }
.end annotation


# static fields
.field public static final KEY_ALT_PRESS:I = 0x2

.field public static final KEY_CAPS_LOCK:I = 0x4

.field public static final KEY_SHIFT_PRESS:I = 0x1

.field public static final STROKE_CHARACTERS:[C = null

.field public static final STROKE_DISPLAY_MAP:[C = null

.field public static final SWIFTKEY_DEFAULT_PREDICTS_NUM:I = 0x1e

.field public static final SWIFTKEY_ERROR:I = -0x1

.field public static final SWIFTKEY_INVALID_INPUT:I = -0x2

.field public static final SWIFTKEY_MAXIMUM_CHUNJIIN_WORDSIZE:I = 0x20

.field public static final SWIFTKEY_MAXIMUM_LOADED_LANGUAGEPACK:I = 0x4

.field public static final SWIFTKEY_MAXIMUM_WORDSIZE:I = 0x40

.field public static final SWIFTKEY_MAXNUM_TOUCHHISTORY_REPOSITORY:I = 0x64

.field public static final SWIFTKEY_NUMBER_OF_CHINESE_PREDICTIONS:I = 0x1e

.field public static final SWIFTKEY_NUMBER_OF_PREDICTIONS:I = 0x9

.field public static final SWIFTKEY_N_GRAM:I = 0x4

.field public static final SWIFTKEY_SELECTING:I = 0x1

.field public static final SWIFTKEY_SELECT_FINISHED:I = 0x2

.field public static final SWIFTKEY_SUCCESS:I = 0x0

.field public static final bpmfChangeLabel:[C = null

.field public static final toneKeyFor12Key:C = '#'

.field public static final toneValues:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xc

    .line 22
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant;->STROKE_CHARACTERS:[C

    .line 26
    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant;->STROKE_DISPLAY_MAP:[C

    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant;->toneValues:[C

    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_3

    sput-object v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant;->bpmfChangeLabel:[C

    return-void

    .line 22
    nop

    :array_0
    .array-data 0x2
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0xd0t 0x31t
        0xd1t 0x31t
        0xd3t 0x31t
        0xd4t 0x31t
        0xd6t 0x31t
        0x2at 0x0t
    .end array-data

    .line 26
    :array_1
    .array-data 0x2
        0x0t 0x4et
        0x28t 0x4et
        0x3ft 0x4et
        0x36t 0x4et
        0x5bt 0x4et
        0x1ft 0xfft
        0x0t 0x4et
        0x28t 0x4et
        0x3ft 0x4et
        0x36t 0x4et
        0x5bt 0x4et
        0x1ft 0xfft
    .end array-data

    .line 37
    :array_2
    .array-data 0x2
        0xcat 0x2t
        0xc7t 0x2t
        0xcbt 0x2t
        0xd9t 0x2t
    .end array-data

    .line 39
    :array_3
    .array-data 0x2
        0x0t 0x4et
        0x27t 0x31t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
