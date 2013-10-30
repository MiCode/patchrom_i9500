.class public Lcom/samsung/inputmethod/comm/SimeFeature;
.super Ljava/lang/Object;
.source "SimeFeature.java"


# static fields
.field public static SIME_ACCESSIBILITY_FEATURE:Z = false

.field public static SIME_CANDIDATE_INDICATOR_SHOW:Z = false

.field public static SIME_CAND_HIGHTLIGHT_ALWAYS:Z = false

.field public static final SIME_CLIPBOARD_SHOWIN_TAB:Z = true

.field public static SIME_CONTACT_ACCESS_FEATURE:Z = false

.field public static SIME_DB_UPDATE_ONLINE:Z = false

.field public static SIME_DEL_UDB_FEATURE:Z = false

.field public static SIME_DYNAMIC_CHARACTER_RECOGNITION:Z = false

.field public static SIME_FAST_DELETE_FEATURE:Z = false

.field public static SIME_FLOATING_BY_CMKEY:Z = false

.field public static SIME_FULL_SENTENCE:Z = false

.field public static final SIME_HANDWRITE_BEAUTIFY_DEFAULT_OPTIMIZE:Z = true

.field public static SIME_HANDWRITING_BEAUTIFY_FEATURE:Z = false

.field public static SIME_HARDKEYPAD_SUPPORTED:Z = false

.field public static SIME_HKTW_DISTINGUISH_BY_CSC:Z = false

.field public static SIME_HW_BOX_FEATURE:Z = false

.field public static SIME_HW_FULLSCREEN_FEATURE:Z = false

.field public static SIME_INCLUDE_HKTW_LANGUAGE:Z = false

.field public static SIME_KEYBOARD_SOUND_LOCAL:Z = false

.field public static SIME_KLSDK_SUPPORT:Z = false

.field public static SIME_MINIPOPUP_CLOSE_BUTTON_HIDE:Z = false

.field public static SIME_MMKEY_CMKEY:Z = false

.field public static SIME_MMKEY_DEFAULT_HANDWRITING:Z = false

.field public static SIME_MMKEY_HOLDANDRELEASE:Z = false

.field public static SIME_MM_NO_CLIPBOARD_KEY:Z = false

.field public static SIME_NO_AUTOCORRECTION_FEATURE:Z = false

.field public static SIME_NO_HW_LED_CONTROL:Z = false

.field public static SIME_NO_VIBRATION_FEATURE:Z = false

.field public static SIME_NUM_QWERTY_FEATURE:Z = false

.field public static SIME_OCR_FEATURE:Z = false

.field public static SIME_ONE_HAND_FEATURE:Z = false

.field public static SIME_PHONEBLET_NOT_APPLY_LARGRE_SCREEN:Z = false

.field public static SIME_PINYIN_EXPAND_LIST_ADJUST:Z = false

.field public static SIME_POINTING_KEYBOARD_FEATURE:Z = false

.field public static SIME_SCROLLABLE_34_SYMBOL:Z = false

.field public static SIME_SHOW_TUTORIAL_FEATURE:Z = false

.field public static SIME_SUPPORT_CTC_WEBSITE:Z = false

.field public static SIME_SUPPORT_MULTI_FLOAT:Z = false

.field public static SIME_SUPPORT_SW359DP:Z = false

.field public static SIME_SUPPORT_TOOLBAR:Z = false

.field public static SIME_SWIFTKEY_ENGINE_FEATURE:Z = false

.field public static SIME_TOOLBARMODE_SUPPORTED:Z = false

.field public static SIME_TOOLBAR_SUPPORT_ONEHAND:Z = false

.field public static final SIME_TOOLBAR_THEME_BLACK:Z = true

.field public static SIME_TWO_PAGE_QWERTY_SYMBOL:Z

.field public static SIME_USE_LANG_MGR:Z

.field public static SIME_USE_LOCAL_ONEHANDMODE:Z

.field public static SIME_USE_TAB_SYMBOL:Z

.field public static SIME_USE_UNIFIED_SYMBOL:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 30
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_FAST_DELETE_FEATURE:Z

    .line 33
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_FULLSCREEN_FEATURE:Z

    .line 36
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_LANG_MGR:Z

    .line 39
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_DEL_UDB_FEATURE:Z

    .line 43
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_CONTACT_ACCESS_FEATURE:Z

    .line 46
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_MINIPOPUP_CLOSE_BUTTON_HIDE:Z

    .line 49
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HANDWRITING_BEAUTIFY_FEATURE:Z

    .line 52
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_FULL_SENTENCE:Z

    .line 55
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SHOW_TUTORIAL_FEATURE:Z

    .line 58
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_KEYBOARD_SOUND_LOCAL:Z

    .line 61
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_MMKEY_CMKEY:Z

    .line 66
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    .line 69
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_PHONEBLET_NOT_APPLY_LARGRE_SCREEN:Z

    .line 71
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBAR_SUPPORT_ONEHAND:Z

    .line 73
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_CANDIDATE_INDICATOR_SHOW:Z

    .line 76
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_POINTING_KEYBOARD_FEATURE:Z

    .line 79
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_OCR_FEATURE:Z

    .line 83
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NUM_QWERTY_FEATURE:Z

    .line 86
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NO_VIBRATION_FEATURE:Z

    .line 88
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_DB_UPDATE_ONLINE:Z

    .line 90
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_KLSDK_SUPPORT:Z

    .line 92
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_ONE_HAND_FEATURE:Z

    .line 95
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_INCLUDE_HKTW_LANGUAGE:Z

    .line 99
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_CAND_HIGHTLIGHT_ALWAYS:Z

    .line 101
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    .line 103
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    .line 105
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TWO_PAGE_QWERTY_SYMBOL:Z

    .line 108
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_MM_NO_CLIPBOARD_KEY:Z

    .line 111
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HKTW_DISTINGUISH_BY_CSC:Z

    .line 114
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NO_AUTOCORRECTION_FEATURE:Z

    .line 117
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_MMKEY_HOLDANDRELEASE:Z

    .line 120
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_MMKEY_DEFAULT_HANDWRITING:Z

    .line 123
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_MULTI_FLOAT:Z

    .line 126
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_SW359DP:Z

    .line 129
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_FLOATING_BY_CMKEY:Z

    .line 132
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_UNIFIED_SYMBOL:Z

    .line 135
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_LOCAL_ONEHANDMODE:Z

    .line 138
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SCROLLABLE_34_SYMBOL:Z

    .line 148
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_CTC_WEBSITE:Z

    .line 151
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_DYNAMIC_CHARACTER_RECOGNITION:Z

    .line 154
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_PINYIN_EXPAND_LIST_ADJUST:Z

    .line 157
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NO_HW_LED_CONTROL:Z

    .line 159
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SWIFTKEY_ENGINE_FEATURE:Z

    .line 162
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_ACCESSIBILITY_FEATURE:Z

    .line 164
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_TAB_SYMBOL:Z

    .line 166
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_TOOLBAR:Z

    .line 171
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, model:Ljava/lang/String;
    const-string v2, "ro.build.description"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, description:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 175
    const-string v2, "GT-I9228"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "GT-I9220"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "GT-N7000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "GT-N7005"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SCH-I889"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 178
    :cond_0
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_MULTI_FLOAT:Z

    .line 181
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    .line 182
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_ONE_HAND_FEATURE:Z

    .line 183
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TWO_PAGE_QWERTY_SYMBOL:Z

    .line 184
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_MMKEY_DEFAULT_HANDWRITING:Z

    .line 186
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_DYNAMIC_CHARACTER_RECOGNITION:Z

    .line 374
    :goto_0
    const-string v2, "SCH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 376
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_CTC_WEBSITE:Z

    .line 379
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_INCLUDE_HKTW_LANGUAGE:Z

    .line 383
    :cond_1
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_TAB_SYMBOL:Z

    sput-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_TOOLBAR:Z

    .line 385
    :cond_2
    return-void

    .line 188
    :cond_3
    const-string v2, "SCH-I939"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 191
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_MULTI_FLOAT:Z

    .line 192
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    .line 193
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_DYNAMIC_CHARACTER_RECOGNITION:Z

    goto :goto_0

    .line 195
    :cond_4
    const-string v2, "GT-I9308C"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "GT-I9308D"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 198
    :cond_5
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_MULTI_FLOAT:Z

    goto :goto_0

    .line 200
    :cond_6
    const-string v2, "GT-I9300"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "GT-I9308"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "GT-I9305"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 203
    :cond_7
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_MULTI_FLOAT:Z

    .line 204
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    .line 206
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_DYNAMIC_CHARACTER_RECOGNITION:Z

    goto :goto_0

    .line 208
    :cond_8
    const-string v2, "I959"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "GT-I9500"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "GT-I9502"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "GT-I9508"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "GT-I9505"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 211
    :cond_9
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NUM_QWERTY_FEATURE:Z

    .line 212
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_MULTI_FLOAT:Z

    .line 214
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    .line 216
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_POINTING_KEYBOARD_FEATURE:Z

    .line 217
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_OCR_FEATURE:Z

    .line 219
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SCROLLABLE_34_SYMBOL:Z

    .line 221
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_DYNAMIC_CHARACTER_RECOGNITION:Z

    .line 222
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_TAB_SYMBOL:Z

    .line 223
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_TOOLBAR:Z

    .line 225
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_ACCESSIBILITY_FEATURE:Z

    goto/16 :goto_0

    .line 227
    :cond_a
    const-string v2, "GT-I9100"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "GT-I9108"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "GT-I9103"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "GT-I9050"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 229
    :cond_b
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_MULTI_FLOAT:Z

    goto/16 :goto_0

    .line 231
    :cond_c
    const-string v2, "GT-N7103"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "GT-N7108"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "GT-N7100"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "GT-N7102"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "SCH-N719"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "GT-N7105"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 234
    :cond_d
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_POINTING_KEYBOARD_FEATURE:Z

    .line 235
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_OCR_FEATURE:Z

    .line 236
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NUM_QWERTY_FEATURE:Z

    .line 237
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_MULTI_FLOAT:Z

    .line 240
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    .line 241
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_ONE_HAND_FEATURE:Z

    .line 242
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TWO_PAGE_QWERTY_SYMBOL:Z

    .line 243
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_MMKEY_DEFAULT_HANDWRITING:Z

    .line 245
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_DYNAMIC_CHARACTER_RECOGNITION:Z

    goto/16 :goto_0

    .line 247
    :cond_e
    const-string v2, "GT-I9200"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "GT-I9208"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "GT-I9205"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "SCH-P729"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 250
    :cond_f
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_POINTING_KEYBOARD_FEATURE:Z

    .line 251
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NUM_QWERTY_FEATURE:Z

    .line 252
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_MULTI_FLOAT:Z

    .line 254
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    .line 256
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SCROLLABLE_34_SYMBOL:Z

    .line 258
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_DYNAMIC_CHARACTER_RECOGNITION:Z

    .line 259
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_TAB_SYMBOL:Z

    .line 260
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_TOOLBAR:Z

    .line 263
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_PHONEBLET_NOT_APPLY_LARGRE_SCREEN:Z

    goto/16 :goto_0

    .line 265
    :cond_10
    const-string v2, "GT-S7562"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "GT-S7568"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "I8190"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "GT-I8268"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "GT-S6818"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 273
    :cond_11
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NO_VIBRATION_FEATURE:Z

    goto/16 :goto_0

    .line 275
    :cond_12
    const-string v2, "GT-I8262"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "GT-S7572"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "GT-I8268"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "S7898"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "SCH-I759"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "I8160"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "SCH-I739"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 281
    :cond_13
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NO_VIBRATION_FEATURE:Z

    .line 283
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_DYNAMIC_CHARACTER_RECOGNITION:Z

    goto/16 :goto_0

    .line 285
    :cond_14
    const-string v2, "S6812"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 288
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NO_VIBRATION_FEATURE:Z

    .line 290
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_DYNAMIC_CHARACTER_RECOGNITION:Z

    .line 292
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_UNIFIED_SYMBOL:Z

    goto/16 :goto_0

    .line 294
    :cond_15
    const-string v2, "GT-I8552"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string v2, "I869"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string v2, "I8558"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 297
    :cond_16
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NO_VIBRATION_FEATURE:Z

    .line 298
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_DYNAMIC_CHARACTER_RECOGNITION:Z

    .line 301
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    .line 302
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_MULTI_FLOAT:Z

    goto/16 :goto_0

    .line 304
    :cond_17
    const-string v2, "GT-I9128"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    const-string v2, "GT-I9082"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    const-string v2, "I879"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 307
    :cond_18
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NO_VIBRATION_FEATURE:Z

    .line 309
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_DYNAMIC_CHARACTER_RECOGNITION:Z

    .line 312
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    .line 313
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_MULTI_FLOAT:Z

    .line 316
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NUM_QWERTY_FEATURE:Z

    .line 317
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TWO_PAGE_QWERTY_SYMBOL:Z

    .line 320
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_ONE_HAND_FEATURE:Z

    .line 321
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_LOCAL_ONEHANDMODE:Z

    goto/16 :goto_0

    .line 323
    :cond_19
    const-string v2, "I9268"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 326
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_DYNAMIC_CHARACTER_RECOGNITION:Z

    goto/16 :goto_0

    .line 328
    :cond_1a
    const-string v2, "I9250"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 331
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_DEL_UDB_FEATURE:Z

    .line 332
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_CONTACT_ACCESS_FEATURE:Z

    .line 333
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HANDWRITING_BEAUTIFY_FEATURE:Z

    .line 334
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_FULLSCREEN_FEATURE:Z

    .line 336
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NO_AUTOCORRECTION_FEATURE:Z

    .line 337
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HW_BOX_FEATURE:Z

    .line 338
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_MM_NO_CLIPBOARD_KEY:Z

    goto/16 :goto_0

    .line 340
    :cond_1b
    const-string v2, "EK-GC100"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 342
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NO_VIBRATION_FEATURE:Z

    .line 343
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_SW359DP:Z

    goto/16 :goto_0

    .line 346
    :cond_1c
    const-string v2, "SCH-I829"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    const-string v2, "SCH-I869"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 348
    :cond_1d
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NO_VIBRATION_FEATURE:Z

    goto/16 :goto_0

    .line 350
    :cond_1e
    const-string v2, "GT-I9105P"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 352
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_DB_UPDATE_ONLINE:Z

    goto/16 :goto_0

    .line 354
    :cond_1f
    const-string v2, "B9388"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 357
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_CAND_HIGHTLIGHT_ALWAYS:Z

    .line 358
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    .line 359
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    goto/16 :goto_0

    .line 361
    :cond_20
    const-string v2, "B9150"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 364
    sput-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NO_VIBRATION_FEATURE:Z

    .line 365
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_PINYIN_EXPAND_LIST_ADJUST:Z

    .line 366
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_CONTACT_ACCESS_FEATURE:Z

    .line 367
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SHOW_TUTORIAL_FEATURE:Z

    goto/16 :goto_0

    .line 371
    :cond_21
    sput-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_MULTI_FLOAT:Z

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
