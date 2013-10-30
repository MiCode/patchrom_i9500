.class Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;
.super Ljava/lang/Object;
.source "SimeSkbTemplate.java"


# static fields
.field public static final KEYTYPE_ID_34_EMAIL_KEY:I = 0x28

.field public static final KEYTYPE_ID_34_FUNCTION_KEY:I = 0x29

.field public static final KEYTYPE_ID_DISABLE_KEY:I = 0x21

.field public static final KEYTYPE_ID_DOUBLETAB_KEY:I = 0x1d

.field public static final KEYTYPE_ID_FUNCTION_KEY:I = 0x1

.field public static final KEYTYPE_ID_FUNCTION_KEY_BIG_FONT:I = 0xc

.field public static final KEYTYPE_ID_FUNCTION_KEY_QWERTY:I = 0x1a

.field public static final KEYTYPE_ID_FUNCTION_KEY_QWERTY_TWO_LINE_1:I = 0x1c

.field public static final KEYTYPE_ID_FUNCTION_KEY_SMALL_FONT:I = 0xb

.field public static final KEYTYPE_ID_FUNCTION_KEY_SMALL_FONT_BUBBLEFONTCOLOR:I = 0x15

.field public static final KEYTYPE_ID_FUNCTION_KEY_TOGGLE:I = 0x2

.field public static final KEYTYPE_ID_FUNCTION_KEY_TWO_LINE:I = 0x7

.field public static final KEYTYPE_ID_FUNCTION_KEY_TWO_LINE_1:I = 0x8

.field public static final KEYTYPE_ID_HANDWRITE_EMAIL_KEY:I = 0x25

.field public static final KEYTYPE_ID_HANDWRITE_FUNCTION_KEY:I = 0x26

.field public static final KEYTYPE_ID_NORMAL_DISABLED_KEY:I = 0xe

.field public static final KEYTYPE_ID_NORMAL_DOUBLE_LINE_KEY:I = 0xd

.field public static final KEYTYPE_ID_NORMAL_KEY:I = 0x0

.field public static final KEYTYPE_ID_NORMAL_KEY_BIG_FONT:I = 0xa

.field public static final KEYTYPE_ID_NORMAL_KEY_CONSTSIZE:I = 0xf

.field public static final KEYTYPE_ID_NORMAL_KEY_SMALL_FONT:I = 0x9

.field public static final KEYTYPE_ID_NORMAL_SYMBOL_KEY:I = 0x12

.field public static final KEYTYPE_ID_NORMAL_YEARTIME_KEY:I = 0x13

.field public static final KEYTYPE_ID_NORMAL_YEARTIME_LANDSCAPE_KEY:I = 0x14

.field public static final KEYTYPE_ID_NUMBER_KEY_QWERTY:I = 0x1b

.field public static final KEYTYPE_ID_NUMERIC_KEY:I = 0x10

.field public static final KEYTYPE_ID_NUMERIC_KEY_FUNC:I = 0x16

.field public static final KEYTYPE_ID_PHONEPAD_DOUBLE_LINE_KEY:I = 0x3

.field public static final KEYTYPE_ID_PHONEPAD_SPACE_KEY:I = 0x1f

.field public static final KEYTYPE_ID_PHONEPAD_SYMBOL_KEY:I = 0x1e

.field public static final KEYTYPE_ID_PHONEPAD_SYMBOL_KEY_SMALL:I = 0x20

.field public static final KEYTYPE_ID_PHONEPAD_THIRD_LINE_KEY:I = 0x24

.field public static final KEYTYPE_ID_QWERTY_DOUBLE_LINE_KEY:I = 0x4

.field public static final KEYTYPE_ID_QWERTY_EMAIL_KEY:I = 0x27

.field public static final KEYTYPE_ID_QWERTY_FOURTH_LINE_KEY:I = 0x23

.field public static final KEYTYPE_ID_QWERTY_SECOND_LINE_KEY:I = 0x22

.field public static final KEYTYPE_ID_SAMEBACKGROUND_KEY:I = 0x19

.field public static final KEYTYPE_ID_TOOLBAR_FOCUS_KEY:I = 0x18

.field public static final KEYTYPE_ID_TOOLBAR_PICTURE_KEY:I = 0x17

.field public static final KEYTYPE_ID_UNITE_KEY_LEFT:I = 0x5

.field public static final KEYTYPE_ID_UNITE_KEY_RIGHT:I = 0x6


# instance fields
.field public mColor:I

.field public mColorBalloon:I

.field public mColorHl:I

.field public mKeyBg:Landroid/graphics/drawable/Drawable;

.field public mKeyHlBg:Landroid/graphics/drawable/Drawable;

.field public mKeyTypeId:I

.field public mballoonHeight:F

.field public mballoonWidth:F


# direct methods
.method constructor <init>(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "id"
    .parameter "bg"
    .parameter "hlBg"

    .prologue
    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    iput p1, p0, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mKeyTypeId:I

    .line 351
    iput-object p2, p0, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mKeyBg:Landroid/graphics/drawable/Drawable;

    .line 352
    iput-object p3, p0, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mKeyHlBg:Landroid/graphics/drawable/Drawable;

    .line 353
    return-void
.end method


# virtual methods
.method public setBalloonSize(FF)V
    .locals 0
    .parameter "balloonWidth"
    .parameter "balloonHeight"

    .prologue
    .line 363
    iput p1, p0, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mballoonWidth:F

    .line 364
    iput p2, p0, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mballoonHeight:F

    .line 365
    return-void
.end method

.method public setColors(III)V
    .locals 0
    .parameter "color"
    .parameter "colorHl"
    .parameter "colorBalloon"

    .prologue
    .line 356
    iput p1, p0, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mColor:I

    .line 357
    iput p2, p0, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mColorHl:I

    .line 358
    iput p3, p0, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mColorBalloon:I

    .line 359
    return-void
.end method
