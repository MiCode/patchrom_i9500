.class public Lcom/samsung/inputmethod/comm/SimePrivateImeOption;
.super Ljava/lang/Object;
.source "SimePrivateImeOption.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final INPUTMETHOD_HANDWRITING:I = 0x3

.field public static final INPUTMETHOD_HANDWRITING_BOX1:I = 0x4

.field public static final INPUTMETHOD_HANDWRITING_BOX2:I = 0x5

.field public static final INPUTMETHOD_HANDWRITING_FULL:I = 0x6

.field public static final INPUTMETHOD_PHONEPAD:I = 0x1

.field public static final INPUTMETHOD_QWERTY:I = 0x2

.field public static final INPUTMETHOD_UNKNOWN:I = 0x0

.field public static final INPUTRANGE_ENGLISH:I = 0x2

.field public static final INPUTRANGE_KOREAN:I = 0x1

.field public static final INPUTRANGE_NUMERIC:I = 0x4

.field public static final INPUTRANGE_SYMBOL:I = 0x3

.field public static final INPUTRANGE_UNKNOWN:I = 0x0

.field public static final INPUTTYPE_BROWSER_NEXT:I = 0x10

.field public static final INPUTTYPE_BROWSER_PREV:I = 0xf

.field public static final INPUTTYPE_BROWSER_PREV_NEXT:I = 0xe

.field public static final INPUTTYPE_CLIPBOARD_DISABLE_EDITTEXT:I = 0x17

.field public static final INPUTTYPE_CONTACT_SEARCH:I = 0xc

.field public static final INPUTTYPE_CONTACT_SPECIFIC_CONTEXT:I = 0x1a

.field public static final INPUTTYPE_DICTIONARY:I = 0x8

.field public static final INPUTTYPE_ENG_TOGGLE:I = 0xd

.field public static final INPUTTYPE_FILENAME:I = 0x3

.field public static final INPUTTYPE_FLOATING_EDITTEXT:I = 0x12

.field public static final INPUTTYPE_IPADDRESS:I = 0x1

.field public static final INPUTTYPE_MMS_CONTENT:I = 0x5

.field public static final INPUTTYPE_MMS_FILENAME:I = 0x7

.field public static final INPUTTYPE_MMS_RECIPIENT:I = 0x6

.field public static final INPUTTYPE_MONTH_EDITTEXT:I = 0xa

.field public static final INPUTTYPE_NONE:I = 0x4

.field public static final INPUTTYPE_NO_KOREAN_SUGGESTION:I = 0xb

.field public static final INPUTTYPE_NO_TRACE_POPUP:I = 0x14

.field public static final INPUTTYPE_NUMBERPICKER_EDITTEXT:I = 0xe

.field public static final INPUTTYPE_OCR_DISABLE_EDITTEXT:I = 0x16

.field public static final INPUTTYPE_OPTION:I = 0x2

.field public static final INPUTTYPE_PREDICTION_OFF:I = 0x15

.field public static final INPUTTYPE_PREDICTION_OFF_LANDSCAPE:I = 0x18

.field public static final INPUTTYPE_QUICK_COMMNAD_EDITTEXT:I = 0x19

.field public static final INPUTTYPE_QWERTY_EDITTEXT:I = 0x13

.field public static final INPUTTYPE_SPLIT_EDITTEXT:I = 0x11

.field public static final INPUTTYPE_UNKNOWN:I = 0x0

.field public static final INPUTTYPE_YEARDATETIME_EDITTEXT:I = 0x9

.field public static final KEY_INPUTMETHOD:Ljava/lang/String; = "defaultInputmethod"

.field public static final KEY_INPUTMODE:Ljava/lang/String; = "defaultInputmode"

.field public static final KEY_INPUTTYPE:Ljava/lang/String; = "inputType"

.field public static final KEY_KEYBOARDTYPE:Ljava/lang/String; = "keyboardType"

.field private static final TAG:Ljava/lang/String; = "SamsungPrivateImeOption"

.field public static final VAL_CLIPBOARD_DISABLE:Ljava/lang/String; = "DisableClipboard"

.field public static final VAL_CONTACT_SEARCH:Ljava/lang/String; = "contactSearch"

.field public static final VAL_CONTACT_SPECIFIC_CONTEXT:Ljava/lang/String; = "csc"

.field public static final VAL_DICTIONARY:Ljava/lang/String; = "dictionary"

.field public static final VAL_ENGLISH:Ljava/lang/String; = "english"

.field public static final VAL_ENG_TOGGLE:Ljava/lang/String; = "EngToggle"

.field public static final VAL_FILENAME:Ljava/lang/String; = "filename"

.field public static final VAL_FLOATING_EDITTEXT:Ljava/lang/String; = "floating_edittext"

.field public static final VAL_HANDWRITING_BOX1:Ljava/lang/String; = "handwritingbox1"

.field public static final VAL_HANDWRITING_BOX2:Ljava/lang/String; = "handwritingbox2"

.field public static final VAL_HANDWRITING_FULL:Ljava/lang/String; = "handwritingfull"

.field public static final VAL_IPADDRESS:Ljava/lang/String; = "ipAddress"

.field public static final VAL_MMS_CONTENT:Ljava/lang/String; = "mmsContent"

.field public static final VAL_MMS_FILENAME:Ljava/lang/String; = "mmsFilename"

.field public static final VAL_MMS_RECIPIENT:Ljava/lang/String; = "mmsRecipient"

.field public static final VAL_MONTH_EDITTEXT:Ljava/lang/String; = "month_edittext"

.field public static final VAL_NONE:Ljava/lang/String; = "none"

.field public static final VAL_NO_KOREAN_SUGGESTION:Ljava/lang/String; = "noKoreanSuggestion"

.field public static final VAL_NO_MICROPHONE:Ljava/lang/String; = "noMicrophoneKey"

.field public static final VAL_NO_MICROPHONE_COMPAT:Ljava/lang/String; = "nm"

.field public static final VAL_NO_TRACE_POPUP:Ljava/lang/String; = "noTracePopup"

.field public static final VAL_NUMBERPICKER_EDITTEXT:Ljava/lang/String; = "NumberPicker_edittext"

.field public static final VAL_NUMERIC:Ljava/lang/String; = "numeric"

.field public static final VAL_OCR_DISABLE:Ljava/lang/String; = "DisableOCR"

.field public static final VAL_OPTION:Ljava/lang/String; = "option"

.field public static final VAL_PHONEPAD:Ljava/lang/String; = "phonepad"

.field public static final VAL_PREDICTION_OFF:Ljava/lang/String; = "PredictionOff"

.field public static final VAL_PREDICTION_OFF_LANDSCAPE:Ljava/lang/String; = "PredictionOffLandScape"

.field public static final VAL_QUICK_COMMNAD_EDITTEXT:Ljava/lang/String; = "QuickCommand_edittext"

.field public static final VAL_QWERTY:Ljava/lang/String; = "qwerty"

.field public static final VAL_QWERTY_EDITTEXT:Ljava/lang/String; = "qwerty_edittext"

.field public static final VAL_SPLIT_EDITTEXT:Ljava/lang/String; = "split_edittext"

.field public static final VAL_YEARDATETIME_EDITTEXT:Ljava/lang/String; = "YearDateTime_edittext"


# instance fields
.field private mCurrentInputType:I

.field private mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

.field private mPrivateImeOptionTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->mPrivateImeOptionTable:Ljava/util/Hashtable;

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->mCurrentInputType:I

    return-void
.end method

.method private getPrivateKeyBoardValue()I
    .locals 4

    .prologue
    .line 199
    const/4 v0, 0x0

    .line 201
    .local v0, nLayout:I
    iget-object v2, p0, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->mPrivateImeOptionTable:Ljava/util/Hashtable;

    const-string v3, "keyboardType"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 202
    .local v1, strLayout:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 203
    iget-object v2, p0, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->mPrivateImeOptionTable:Ljava/util/Hashtable;

    const-string v3, "defaultInputmethod"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #strLayout:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 205
    .restart local v1       #strLayout:Ljava/lang/String;
    :cond_0
    if-eqz v1, :cond_1

    .line 207
    const-string v2, "phonepad"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 208
    const/high16 v0, 0x200

    .line 215
    :cond_1
    :goto_0
    return v0

    .line 209
    :cond_2
    const-string v2, "qwerty"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 210
    const/high16 v0, 0x100

    goto :goto_0

    .line 211
    :cond_3
    const-string v2, "handwritingfull"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 212
    const/high16 v0, 0x300

    goto :goto_0
.end method


# virtual methods
.method public getInputType()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->mCurrentInputType:I

    return v0
.end method

.method public getSimeInputType()I
    .locals 8

    .prologue
    const/high16 v7, 0x200

    const/4 v4, 0x0

    .line 232
    iget-object v5, p0, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->mPrivateImeOptionTable:Ljava/util/Hashtable;

    const-string v6, "inputType"

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 234
    .local v3, value:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 235
    iget-object v5, p0, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->mPrivateImeOptionTable:Ljava/util/Hashtable;

    const-string v6, "defaultInputmode"

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #value:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 237
    .restart local v3       #value:Ljava/lang/String;
    :cond_0
    if-nez v3, :cond_2

    move v2, v4

    .line 305
    :cond_1
    :goto_0
    return v2

    .line 244
    :cond_2
    const/4 v2, 0x0

    .line 246
    .local v2, newInputMode:I
    const-string v5, "month_edittext"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 247
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 249
    const v2, -0x7dffefff

    goto :goto_0

    .line 251
    :cond_3
    const v2, -0x7efff000

    goto :goto_0

    .line 253
    :cond_4
    const-string v5, "YearDateTime_edittext"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 254
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 256
    const v2, -0x7dffdfff

    goto :goto_0

    .line 258
    :cond_5
    const v2, -0x7effe000

    goto :goto_0

    .line 260
    :cond_6
    const-string v5, "numeric"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 261
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 263
    const v2, 0x72000001

    goto :goto_0

    .line 265
    :cond_7
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getLastMainInputMode()I

    move-result v4

    const/high16 v5, 0xf

    and-int v0, v4, v5

    .line 267
    .local v0, language:I
    invoke-direct {p0}, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->getPrivateKeyBoardValue()I

    move-result v1

    .line 268
    .local v1, layout:I
    if-nez v1, :cond_8

    .line 269
    iget-object v4, p0, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getLastMainInputMode()I

    move-result v4

    const/high16 v5, 0xf00

    and-int v1, v4, v5

    .line 271
    :cond_8
    const/high16 v4, 0x3

    if-eq v0, v4, :cond_9

    const/high16 v4, 0x1

    if-ne v0, v4, :cond_b

    .line 273
    :cond_9
    if-ne v1, v7, :cond_a

    .line 274
    const/high16 v2, 0x7200

    goto/16 :goto_0

    .line 276
    :cond_a
    const v2, 0x61011000

    goto/16 :goto_0

    .line 279
    :cond_b
    if-ne v1, v7, :cond_c

    .line 280
    const/high16 v2, 0x7200

    goto/16 :goto_0

    .line 282
    :cond_c
    const v2, 0x61021000

    goto/16 :goto_0

    .line 286
    .end local v0           #language:I
    .end local v1           #layout:I
    :cond_d
    const-string v5, "english"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 288
    invoke-direct {p0}, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->getPrivateKeyBoardValue()I

    move-result v1

    .line 290
    .restart local v1       #layout:I
    sparse-switch v1, :sswitch_data_0

    .line 298
    :goto_1
    invoke-static {v4}, Lcom/samsung/inputmethod/setting/SimeSetting;->getPortraitInputMode(I)I

    move-result v2

    .line 301
    goto/16 :goto_0

    .line 292
    :sswitch_0
    const/high16 v2, 0x1111

    .line 294
    :sswitch_1
    const/high16 v2, 0x1211

    .line 296
    :sswitch_2
    const v2, 0x33010100

    goto :goto_1

    .line 301
    .end local v1           #layout:I
    :cond_e
    const-string v4, "ipAddress"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 302
    const v2, -0x4dfffff0

    goto/16 :goto_0

    .line 290
    :sswitch_data_0
    .sparse-switch
        0x1000000 -> :sswitch_0
        0x2000000 -> :sswitch_1
        0x3000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public initPrivateImeOptionTable()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->mPrivateImeOptionTable:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->mPrivateImeOptionTable:Ljava/util/Hashtable;

    .line 149
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->mCurrentInputType:I

    .line 150
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->mPrivateImeOptionTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    goto :goto_0
.end method

.method public isMMSRecipient()Z
    .locals 4

    .prologue
    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->mPrivateImeOptionTable:Ljava/util/Hashtable;

    const-string v3, "inputType"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 221
    .local v1, inputType:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 222
    iget-object v2, p0, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->mPrivateImeOptionTable:Ljava/util/Hashtable;

    const-string v3, "defaultInputmode"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #inputType:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 224
    .restart local v1       #inputType:Ljava/lang/String;
    :cond_0
    if-eqz v1, :cond_1

    .line 225
    const-string v2, "mmsRecipient"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 227
    :cond_1
    return v0
.end method

.method public setInputModeSwitcher(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V
    .locals 0
    .parameter "inputModeSwitcher"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    .line 140
    return-void
.end method

.method public setPrivateImeOptionTable(Ljava/lang/String;)Z
    .locals 9
    .parameter "strPrivateImeOptions"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 155
    iget-object v8, p0, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->mPrivateImeOptionTable:Ljava/util/Hashtable;

    invoke-virtual {v8}, Ljava/util/Hashtable;->clear()V

    .line 156
    const/4 v0, 0x0

    .line 158
    .local v0, bRet:Z
    if-nez p1, :cond_0

    .line 161
    iput v7, p0, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->mCurrentInputType:I

    move v6, v0

    .line 193
    :goto_0
    return v6

    .line 168
    :cond_0
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v8, ";"

    invoke-direct {v2, p1, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .local v2, st1:Ljava/util/StringTokenizer;
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 171
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 172
    .local v4, token:Ljava/lang/String;
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v8, "="

    invoke-direct {v3, v4, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .local v3, st2:Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, key:Ljava/lang/String;
    :goto_2
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 176
    .local v5, value:Ljava/lang/String;
    :goto_3
    if-eqz v1, :cond_1

    if-eqz v5, :cond_1

    .line 177
    iget-object v8, p0, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->mPrivateImeOptionTable:Ljava/util/Hashtable;

    invoke-virtual {v8, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const/4 v0, 0x1

    goto :goto_1

    .end local v1           #key:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/String;
    :cond_2
    move-object v1, v6

    .line 173
    goto :goto_2

    .restart local v1       #key:Ljava/lang/String;
    :cond_3
    move-object v5, v6

    .line 174
    goto :goto_3

    .line 182
    .end local v1           #key:Ljava/lang/String;
    .end local v3           #st2:Ljava/util/StringTokenizer;
    .end local v4           #token:Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->mPrivateImeOptionTable:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 186
    iput v7, p0, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->mCurrentInputType:I

    move v6, v7

    .line 187
    goto :goto_0

    .line 191
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->updateInputType()V

    move v6, v0

    .line 193
    goto :goto_0
.end method

.method public updateInputType()V
    .locals 4

    .prologue
    .line 313
    const/4 v0, 0x0

    .line 314
    .local v0, inputType:I
    iget-object v2, p0, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->mPrivateImeOptionTable:Ljava/util/Hashtable;

    const-string v3, "inputType"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 315
    .local v1, value:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 316
    iput v0, p0, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->mCurrentInputType:I

    .line 376
    :goto_0
    return-void

    .line 325
    :cond_0
    const-string v2, "ipAddress"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 326
    const/4 v0, 0x1

    .line 375
    :cond_1
    :goto_1
    iput v0, p0, Lcom/samsung/inputmethod/comm/SimePrivateImeOption;->mCurrentInputType:I

    goto :goto_0

    .line 327
    :cond_2
    const-string v2, "filename"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 328
    const/4 v0, 0x3

    goto :goto_1

    .line 329
    :cond_3
    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 330
    const/4 v0, 0x4

    goto :goto_1

    .line 331
    :cond_4
    const-string v2, "dictionary"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 332
    const/16 v0, 0x8

    goto :goto_1

    .line 333
    :cond_5
    const-string v2, "option"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 334
    const/4 v0, 0x2

    goto :goto_1

    .line 335
    :cond_6
    const-string v2, "mmsContent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 336
    const/4 v0, 0x5

    goto :goto_1

    .line 337
    :cond_7
    const-string v2, "mmsRecipient"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 338
    const/4 v0, 0x6

    goto :goto_1

    .line 339
    :cond_8
    const-string v2, "mmsFilename"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 340
    const/4 v0, 0x7

    goto :goto_1

    .line 341
    :cond_9
    const-string v2, "month_edittext"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 342
    const/16 v0, 0xa

    goto :goto_1

    .line 343
    :cond_a
    const-string v2, "split_edittext"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 344
    const/16 v0, 0x11

    goto :goto_1

    .line 345
    :cond_b
    const-string v2, "floating_edittext"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 346
    const/16 v0, 0x12

    goto :goto_1

    .line 347
    :cond_c
    const-string v2, "qwerty_edittext"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 348
    const/16 v0, 0x13

    goto :goto_1

    .line 349
    :cond_d
    const-string v2, "YearDateTime_edittext"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 350
    const/16 v0, 0x9

    goto :goto_1

    .line 353
    :cond_e
    const-string v2, "noKoreanSuggestion"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 354
    const/16 v0, 0xb

    goto/16 :goto_1

    .line 355
    :cond_f
    const-string v2, "contactSearch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 356
    const/16 v0, 0xc

    goto/16 :goto_1

    .line 357
    :cond_10
    const-string v2, "EngToggle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 358
    const/16 v0, 0xd

    goto/16 :goto_1

    .line 359
    :cond_11
    const-string v2, "noTracePopup"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 360
    const/16 v0, 0x14

    goto/16 :goto_1

    .line 361
    :cond_12
    const-string v2, "PredictionOff"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 362
    const/16 v0, 0x15

    goto/16 :goto_1

    .line 363
    :cond_13
    const-string v2, "DisableOCR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 364
    const/16 v0, 0x16

    goto/16 :goto_1

    .line 365
    :cond_14
    const-string v2, "DisableClipboard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 366
    const/16 v0, 0x17

    goto/16 :goto_1

    .line 367
    :cond_15
    const-string v2, "PredictionOffLandScape"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 368
    const/16 v0, 0x18

    goto/16 :goto_1

    .line 369
    :cond_16
    const-string v2, "QuickCommand_edittext"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 370
    const/16 v0, 0x19

    goto/16 :goto_1

    .line 371
    :cond_17
    const-string v2, "csc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 372
    const/16 v0, 0x1a

    goto/16 :goto_1
.end method
