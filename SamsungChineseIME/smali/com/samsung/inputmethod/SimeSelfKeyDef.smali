.class public Lcom/samsung/inputmethod/SimeSelfKeyDef;
.super Ljava/lang/Object;
.source "SimeSelfKeyDef.java"


# static fields
.field public static final USERDEF_KEYCODE_CANG_22:I = -0x16

.field public static final USERDEF_KEYCODE_CLEARALLSPELL:I = -0x13

.field public static final USERDEF_KEYCODE_DOWN_SYM_8:I = -0x8

.field public static final USERDEF_KEYCODE_HANDWRITING:I = -0x1e

.field public static final USERDEF_KEYCODE_HWBOX_POINTING:I = -0x18

.field public static final USERDEF_KEYCODE_HW_123MODE:I = -0x17

.field public static final USERDEF_KEYCODE_KEYPAD:I = -0x1f

.field public static final USERDEF_KEYCODE_LANG_2:I = -0x2

.field public static final USERDEF_KEYCODE_MM:I = -0x75

.field public static final USERDEF_KEYCODE_MM_POPUP_CLIPBOARD:I = -0x7d

.field public static final USERDEF_KEYCODE_MM_POPUP_COMMA:I = -0x7e

.field public static final USERDEF_KEYCODE_MM_POPUP_EXCLAMATION:I = -0x80

.field public static final USERDEF_KEYCODE_MM_POPUP_FLOATING:I = -0x7b

.field public static final USERDEF_KEYCODE_MM_POPUP_HANDWRITING:I = -0x77

.field public static final USERDEF_KEYCODE_MM_POPUP_KEYBOARD:I = -0x7c

.field public static final USERDEF_KEYCODE_MM_POPUP_OCR:I = -0x7a

.field public static final USERDEF_KEYCODE_MM_POPUP_QUESTION:I = -0x7f

.field public static final USERDEF_KEYCODE_MM_POPUP_QUOTATION:I = -0x81

.field public static final USERDEF_KEYCODE_MM_POPUP_SETTINGS:I = -0x79

.field public static final USERDEF_KEYCODE_MM_POPUP_VOICE:I = -0x78

.field public static final USERDEF_KEYCODE_NUM:I = -0xf

.field public static final USERDEF_KEYCODE_PHONE_SYM_4:I = -0x4

.field public static final USERDEF_KEYCODE_PINYIN_STROKE_KEY_21:I = -0x15

.field public static final USERDEF_KEYCODE_RETURN:I = -0x12

.field public static final USERDEF_KEYCODE_SHIFT_1:I = -0x1

.field public static final USERDEF_KEYCODE_SYMBOL:I = -0xe

.field public static final USERDEF_KEYCODE_SYMBOL_LOCK_UNLOCK_16:I = -0x10

.field public static final USERDEF_KEYCODE_SYM_11:I = -0xb

.field public static final USERDEF_KEYCODE_SYS_LANGUAGE:I = -0xc

.field public static final USERDEF_KEYCODE_SYS_STROKE:I = -0xd

.field public static final USERDEF_KEYCODE_SYS_SYMBOL:I = -0x3

.field public static final USERDEF_KEYCODE_T9_10:I = -0xa

.field public static final USERDEF_KEYCODE_TOOLBAR_123SYM:I = -0x5e

.field public static final USERDEF_KEYCODE_TOOLBAR_CHN:I = -0x5b

.field public static final USERDEF_KEYCODE_TOOLBAR_ENG:I = -0x5c

.field public static final USERDEF_KEYCODE_TOOLBAR_KOR:I = -0x5d

.field public static final USERDEF_KEYCODE_TOOLBAR_POUND:I = -0x61

.field public static final USERDEF_KEYCODE_TOOLBAR_STAR:I = -0x60

.field public static final USERDEF_KEYCODE_TOOLBAR_SYM:I = -0x5f

.field public static final USERDEF_KEYCODE_UP_SYM_9:I = -0x9

.field public static final USERDEF_KEYCODE_URL_PREFIX_5:I = -0x5

.field public static final USERDEF_KEYCODE_URL_PREFIX_6:I = -0x6

.field public static final USERDEF_KEYCODE_VOICE_INPUT_20:I = -0x14


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static IsSettingKey(I)Z
    .locals 1
    .parameter "userKey"

    .prologue
    .line 131
    const/4 v0, -0x2

    if-ne v0, p0, :cond_0

    .line 132
    const/4 v0, 0x1

    .line 135
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsShilftKey(I)Z
    .locals 1
    .parameter "userKey"

    .prologue
    .line 139
    const/4 v0, -0x1

    if-ne v0, p0, :cond_0

    .line 140
    const/4 v0, 0x1

    .line 143
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsURLPrefixKey(I)Z
    .locals 1
    .parameter "userKey"

    .prologue
    .line 147
    const/4 v0, -0x5

    if-ne v0, p0, :cond_0

    .line 148
    const/4 v0, 0x1

    .line 151
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsURLSuffixKey(I)Z
    .locals 1
    .parameter "userKey"

    .prologue
    .line 155
    const/4 v0, -0x6

    if-ne v0, p0, :cond_0

    .line 156
    const/4 v0, 0x1

    .line 159
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static IsVoiceKey(I)Z
    .locals 1
    .parameter "userKey"

    .prologue
    .line 123
    const/16 v0, -0x14

    if-ne v0, p0, :cond_0

    .line 124
    const/4 v0, 0x1

    .line 127
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static is34NumKey(I)Z
    .locals 1
    .parameter "userKey"

    .prologue
    .line 191
    const/16 v0, -0xf

    if-ne v0, p0, :cond_0

    .line 192
    const/4 v0, 0x1

    .line 194
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isClearAllSpellKey(I)Z
    .locals 1
    .parameter "userKey"

    .prologue
    .line 199
    const/16 v0, -0x13

    if-ne v0, p0, :cond_0

    .line 201
    const/4 v0, 0x1

    .line 205
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLanguageKey(I)Z
    .locals 1
    .parameter "userKey"

    .prologue
    .line 212
    const/16 v0, -0xc

    if-ne v0, p0, :cond_0

    .line 213
    const/4 v0, 0x1

    .line 215
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMultiModalKey(I)Z
    .locals 1
    .parameter "userKey"

    .prologue
    .line 171
    const/16 v0, -0x75

    if-eq v0, p0, :cond_0

    const/16 v0, -0x77

    if-eq v0, p0, :cond_0

    const/16 v0, -0x78

    if-eq v0, p0, :cond_0

    const/16 v0, -0x79

    if-eq v0, p0, :cond_0

    const/16 v0, -0x7d

    if-eq v0, p0, :cond_0

    const/16 v0, -0x7e

    if-eq v0, p0, :cond_0

    const/16 v0, -0x7f

    if-eq v0, p0, :cond_0

    const/16 v0, -0x80

    if-eq v0, p0, :cond_0

    const/16 v0, -0x81

    if-eq v0, p0, :cond_0

    const/16 v0, -0x7b

    if-eq v0, p0, :cond_0

    const/16 v0, -0x7c

    if-eq v0, p0, :cond_0

    const/16 v0, -0x7a

    if-ne v0, p0, :cond_1

    .line 185
    :cond_0
    const/4 v0, 0x1

    .line 187
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSymbolLockAndUnlockKey(I)Z
    .locals 1
    .parameter "userKey"

    .prologue
    .line 164
    const/16 v0, -0x10

    if-ne v0, p0, :cond_0

    .line 165
    const/4 v0, 0x1

    .line 167
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
