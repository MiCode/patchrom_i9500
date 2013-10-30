.class public abstract Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;
.super Lcom/samsung/inputmethod/decoder/SimeDecAbstract;
.source "SimeDecKoreanAbstract.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_SURFACE_LEN:I = 0x20

.field private static final TAG:Ljava/lang/String; = "SimeDecKoreanAbstract"


# instance fields
.field protected mActiveCmpsDisplayLen:I

.field protected mComposingStrDisplay:Ljava/lang/String;

.field protected mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

.field protected mMaxSurfaceLen:I


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V
    .locals 1
    .parameter "imeService"
    .parameter "decMgr"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;-><init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V

    .line 27
    const/16 v0, 0x20

    iput v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->mMaxSurfaceLen:I

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    .line 35
    new-instance v0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    invoke-direct {v0}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    .line 36
    return-void
.end method


# virtual methods
.method public addInputData(CLandroid/graphics/PointF;Z)V
    .locals 2
    .parameter "ch"
    .parameter "pos"
    .parameter "bReset"

    .prologue
    .line 43
    if-eqz p3, :cond_0

    .line 44
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->reset()V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->getCursorPos()I

    move-result v0

    iget v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->mMaxSurfaceLen:I

    if-ge v0, v1, :cond_1

    .line 48
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->add(CLandroid/graphics/PointF;Z)V

    .line 50
    :cond_1
    return-void
.end method

.method public addInputData(Ljava/lang/String;Z)V
    .locals 2
    .parameter "inputSpell"
    .parameter "bReset"

    .prologue
    .line 57
    if-eqz p2, :cond_0

    .line 58
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->reset()V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->getCursorPos()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->mMaxSurfaceLen:I

    if-ge v0, v1, :cond_1

    .line 62
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->addSpell(Ljava/lang/String;Z)Z

    .line 64
    :cond_1
    return-void
.end method

.method public convetToHangulChar(IZ)C
    .locals 1
    .parameter "keyChar"
    .parameter "shift"

    .prologue
    .line 184
    int-to-char v0, p1

    .line 186
    .local v0, hangleChar:C
    packed-switch p1, :pswitch_data_0

    .line 296
    :goto_0
    return v0

    .line 188
    :pswitch_0
    const/16 v0, 0x3141

    .line 189
    goto :goto_0

    .line 191
    :pswitch_1
    const/16 v0, 0x3160

    .line 192
    goto :goto_0

    .line 194
    :pswitch_2
    const/16 v0, 0x314a

    .line 195
    goto :goto_0

    .line 197
    :pswitch_3
    const/16 v0, 0x3147

    .line 198
    goto :goto_0

    .line 200
    :pswitch_4
    if-eqz p2, :cond_0

    .line 201
    const/16 v0, 0x3138

    goto :goto_0

    .line 203
    :cond_0
    const/16 v0, 0x3137

    .line 205
    goto :goto_0

    .line 208
    :pswitch_5
    const/16 v0, 0x3139

    .line 209
    goto :goto_0

    .line 211
    :pswitch_6
    const/16 v0, 0x314e

    .line 212
    goto :goto_0

    .line 214
    :pswitch_7
    const/16 v0, 0x3157

    .line 215
    goto :goto_0

    .line 217
    :pswitch_8
    const/16 v0, 0x3151

    .line 218
    goto :goto_0

    .line 220
    :pswitch_9
    const/16 v0, 0x3153

    .line 221
    goto :goto_0

    .line 223
    :pswitch_a
    const/16 v0, 0x314f

    .line 224
    goto :goto_0

    .line 226
    :pswitch_b
    const/16 v0, 0x3163

    .line 227
    goto :goto_0

    .line 229
    :pswitch_c
    const/16 v0, 0x3161

    .line 230
    goto :goto_0

    .line 232
    :pswitch_d
    const/16 v0, 0x315c

    .line 233
    goto :goto_0

    .line 235
    :pswitch_e
    if-eqz p2, :cond_1

    .line 236
    const/16 v0, 0x3152

    goto :goto_0

    .line 238
    :cond_1
    const/16 v0, 0x3150

    .line 240
    goto :goto_0

    .line 242
    :pswitch_f
    if-eqz p2, :cond_2

    .line 243
    const/16 v0, 0x3156

    goto :goto_0

    .line 245
    :cond_2
    const/16 v0, 0x3154

    .line 247
    goto :goto_0

    .line 249
    :pswitch_10
    if-eqz p2, :cond_3

    .line 250
    const/16 v0, 0x3143

    goto :goto_0

    .line 252
    :cond_3
    const/16 v0, 0x3142

    .line 254
    goto :goto_0

    .line 256
    :pswitch_11
    if-eqz p2, :cond_4

    .line 257
    const/16 v0, 0x3132

    goto :goto_0

    .line 259
    :cond_4
    const/16 v0, 0x3131

    .line 261
    goto :goto_0

    .line 263
    :pswitch_12
    const/16 v0, 0x3134

    .line 264
    goto :goto_0

    .line 266
    :pswitch_13
    if-eqz p2, :cond_5

    .line 267
    const/16 v0, 0x3146

    goto :goto_0

    .line 269
    :cond_5
    const/16 v0, 0x3145

    .line 271
    goto :goto_0

    .line 273
    :pswitch_14
    const/16 v0, 0x3155

    .line 274
    goto :goto_0

    .line 276
    :pswitch_15
    const/16 v0, 0x314d

    .line 277
    goto :goto_0

    .line 279
    :pswitch_16
    if-eqz p2, :cond_6

    .line 280
    const/16 v0, 0x3149

    goto :goto_0

    .line 282
    :cond_6
    const/16 v0, 0x3148

    .line 284
    goto :goto_0

    .line 286
    :pswitch_17
    const/16 v0, 0x314c

    .line 287
    goto :goto_0

    .line 289
    :pswitch_18
    const/16 v0, 0x315b

    .line 290
    goto :goto_0

    .line 292
    :pswitch_19
    const/16 v0, 0x314b

    goto :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method

.method public deleteInputData()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->delChar()V

    .line 68
    return-void
.end method

.method public abstract getActiveCmpsDisplayLen()I
.end method

.method public getComposingStrCompleteLength()I
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->mComposingStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public abstract getComposingStrForDisplay()Ljava/lang/String;
.end method

.method public abstract getOrigianlSplStr()Ljava/lang/StringBuffer;
.end method

.method public isShiftableKey(I)Z
    .locals 1
    .parameter "keyChar"

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 97
    .local v0, retVal:Z
    packed-switch p1, :pswitch_data_0

    .line 179
    :goto_0
    return v0

    .line 99
    :pswitch_0
    const/4 v0, 0x0

    .line 100
    goto :goto_0

    .line 102
    :pswitch_1
    const/4 v0, 0x0

    .line 103
    goto :goto_0

    .line 105
    :pswitch_2
    const/4 v0, 0x0

    .line 106
    goto :goto_0

    .line 108
    :pswitch_3
    const/4 v0, 0x0

    .line 109
    goto :goto_0

    .line 111
    :pswitch_4
    const/4 v0, 0x1

    .line 112
    goto :goto_0

    .line 114
    :pswitch_5
    const/4 v0, 0x0

    .line 115
    goto :goto_0

    .line 117
    :pswitch_6
    const/4 v0, 0x0

    .line 118
    goto :goto_0

    .line 120
    :pswitch_7
    const/4 v0, 0x0

    .line 121
    goto :goto_0

    .line 123
    :pswitch_8
    const/4 v0, 0x0

    .line 124
    goto :goto_0

    .line 126
    :pswitch_9
    const/4 v0, 0x0

    .line 127
    goto :goto_0

    .line 129
    :pswitch_a
    const/4 v0, 0x0

    .line 130
    goto :goto_0

    .line 132
    :pswitch_b
    const/4 v0, 0x0

    .line 133
    goto :goto_0

    .line 135
    :pswitch_c
    const/4 v0, 0x0

    .line 136
    goto :goto_0

    .line 138
    :pswitch_d
    const/4 v0, 0x0

    .line 139
    goto :goto_0

    .line 141
    :pswitch_e
    const/4 v0, 0x1

    .line 142
    goto :goto_0

    .line 144
    :pswitch_f
    const/4 v0, 0x1

    .line 145
    goto :goto_0

    .line 147
    :pswitch_10
    const/4 v0, 0x1

    .line 148
    goto :goto_0

    .line 150
    :pswitch_11
    const/4 v0, 0x1

    .line 151
    goto :goto_0

    .line 153
    :pswitch_12
    const/4 v0, 0x0

    .line 154
    goto :goto_0

    .line 156
    :pswitch_13
    const/4 v0, 0x1

    .line 157
    goto :goto_0

    .line 159
    :pswitch_14
    const/4 v0, 0x0

    .line 160
    goto :goto_0

    .line 162
    :pswitch_15
    const/4 v0, 0x0

    .line 163
    goto :goto_0

    .line 165
    :pswitch_16
    const/4 v0, 0x1

    .line 166
    goto :goto_0

    .line 168
    :pswitch_17
    const/4 v0, 0x0

    .line 169
    goto :goto_0

    .line 171
    :pswitch_18
    const/4 v0, 0x0

    .line 172
    goto :goto_0

    .line 174
    :pswitch_19
    const/4 v0, 0x0

    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method

.method public isSplStrEmpty()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->getSpell()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 78
    const/4 v0, 0x1

    .line 79
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSplStrFull()Z
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->getSpell()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iget v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->mMaxSurfaceLen:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    .line 72
    const/4 v0, 0x1

    .line 73
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->reset()V

    .line 88
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->EMPTY:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->mComposingStrDisplay:Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->mActiveCmpsDisplayLen:I

    .line 90
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->reset()V

    .line 91
    return-void
.end method

.method protected setMaxSurfaceLen(I)V
    .locals 0
    .parameter "len"

    .prologue
    .line 83
    iput p1, p0, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->mMaxSurfaceLen:I

    .line 84
    return-void
.end method
