.class public Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;
.super Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;
.source "SimeHWBoxView.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimeHWBoxView"


# instance fields
.field private Pnt:Landroid/graphics/Paint;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private mInputMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->mInputMode:I

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->Pnt:Landroid/graphics/Paint;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->mInputMode:I

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->Pnt:Landroid/graphics/Paint;

    .line 80
    return-void
.end method


# virtual methods
.method public GetHWBoxHeight(Z)I
    .locals 8
    .parameter "isLandScape"

    .prologue
    const/16 v5, 0x190

    const/16 v6, 0x16a

    const/16 v3, 0x12c

    const/16 v4, 0xcd

    const/16 v2, 0xfa

    .line 162
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    .line 163
    .local v0, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    invoke-static {}, Lcom/samsung/inputmethod/SamsungIME;->getInstance()Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v1

    .line 165
    .local v1, skbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;
    if-eqz p1, :cond_a

    .line 166
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXhSw400dpiScreen()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 167
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v3, :cond_1

    .line 168
    const/16 v2, 0x124

    .line 228
    :cond_0
    :goto_0
    return v2

    .line 170
    :cond_1
    const/16 v2, 0x11d

    goto :goto_0

    .line 171
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXhSw360dpiScreen()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 172
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v3, v4, :cond_3

    .line 173
    const/16 v2, 0x156

    goto :goto_0

    .line 174
    :cond_3
    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NUM_QWERTY_FEATURE:Z

    if-nez v3, :cond_0

    .line 177
    const/16 v2, 0xdc

    goto :goto_0

    .line 178
    :cond_4
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isHSw240dpiScreen()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 179
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v4, :cond_5

    .line 180
    const/16 v2, 0x104

    goto :goto_0

    .line 181
    :cond_5
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NUM_QWERTY_FEATURE:Z

    if-eqz v2, :cond_6

    move v2, v3

    .line 182
    goto :goto_0

    :cond_6
    move v2, v3

    .line 184
    goto :goto_0

    .line 185
    :cond_7
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXXhSw360dpiScreen()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 186
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v3, :cond_8

    .line 187
    const/16 v2, 0x1f4

    goto :goto_0

    .line 189
    :cond_8
    const/16 v2, 0x246

    goto :goto_0

    .line 190
    :cond_9
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->ishSw360dpiScreen()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 191
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v3

    sget-object v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v3, v5, :cond_0

    move v2, v4

    .line 192
    goto :goto_0

    .line 197
    :cond_a
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXhSw400dpiScreen()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 198
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v3, :cond_b

    move v2, v5

    .line 199
    goto :goto_0

    :cond_b
    move v2, v5

    .line 201
    goto :goto_0

    .line 202
    :cond_c
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXhSw360dpiScreen()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 203
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v3, :cond_d

    .line 204
    const/16 v2, 0x160

    goto :goto_0

    .line 205
    :cond_d
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NUM_QWERTY_FEATURE:Z

    if-eqz v2, :cond_e

    move v2, v6

    .line 206
    goto/16 :goto_0

    .line 208
    :cond_e
    const/16 v2, 0x140

    goto/16 :goto_0

    .line 209
    :cond_f
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isHSw240dpiScreen()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 210
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-eq v3, v4, :cond_0

    .line 212
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NUM_QWERTY_FEATURE:Z

    if-eqz v2, :cond_10

    .line 213
    const/16 v2, 0x154

    goto/16 :goto_0

    .line 215
    :cond_10
    const/16 v2, 0x136

    goto/16 :goto_0

    .line 216
    :cond_11
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXXhSw360dpiScreen()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 217
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v3, :cond_12

    .line 218
    const/16 v2, 0x1f4

    goto/16 :goto_0

    .line 220
    :cond_12
    const/16 v2, 0x246

    goto/16 :goto_0

    .line 221
    :cond_13
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->ishSw360dpiScreen()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 222
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v3, :cond_14

    move v2, v4

    .line 223
    goto/16 :goto_0

    :cond_14
    move v2, v6

    .line 225
    goto/16 :goto_0

    .line 228
    :cond_15
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenHeight()I

    move-result v2

    goto/16 :goto_0
.end method

.method public GetHWBoxWidth(Z)I
    .locals 8
    .parameter "isLandScape"

    .prologue
    const/16 v6, 0x181

    const/16 v4, 0x163

    const/16 v3, 0x130

    const/16 v2, 0x456

    const/16 v5, 0x250

    .line 232
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    .line 233
    .local v0, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    invoke-static {}, Lcom/samsung/inputmethod/SamsungIME;->getInstance()Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v1

    .line 235
    .local v1, skbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;
    if-eqz p1, :cond_a

    .line 236
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXhSw400dpiScreen()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 237
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v3, :cond_1

    .line 238
    const/16 v2, 0x226

    .line 298
    :cond_0
    :goto_0
    return v2

    .line 240
    :cond_1
    const/16 v2, 0x466

    goto :goto_0

    .line 241
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXhSw360dpiScreen()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 242
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v3, v4, :cond_3

    .line 243
    const/16 v2, 0x1dc

    goto :goto_0

    .line 244
    :cond_3
    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NUM_QWERTY_FEATURE:Z

    if-eqz v3, :cond_0

    goto :goto_0

    .line 248
    :cond_4
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isHSw240dpiScreen()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 249
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v4, :cond_5

    move v2, v3

    .line 250
    goto :goto_0

    .line 251
    :cond_5
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NUM_QWERTY_FEATURE:Z

    if-eqz v2, :cond_6

    .line 252
    const/16 v2, 0x29e

    goto :goto_0

    .line 254
    :cond_6
    const/16 v2, 0x29e

    goto :goto_0

    .line 255
    :cond_7
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXXhSw360dpiScreen()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 256
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v3, :cond_8

    .line 257
    const/16 v2, 0x2c6

    goto :goto_0

    .line 259
    :cond_8
    const/16 v2, 0x677

    goto :goto_0

    .line 260
    :cond_9
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->ishSw360dpiScreen()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 261
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v3

    sget-object v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v3, v5, :cond_0

    move v2, v4

    .line 262
    goto :goto_0

    .line 267
    :cond_a
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXhSw400dpiScreen()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 268
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v3, :cond_b

    .line 269
    const/16 v2, 0x22b

    goto :goto_0

    .line 271
    :cond_b
    const/16 v2, 0x2a4

    goto :goto_0

    .line 272
    :cond_c
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXhSw360dpiScreen()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 273
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v3, :cond_d

    .line 274
    const/16 v2, 0x1e0

    goto :goto_0

    .line 275
    :cond_d
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NUM_QWERTY_FEATURE:Z

    if-eqz v2, :cond_e

    move v2, v5

    .line 276
    goto/16 :goto_0

    :cond_e
    move v2, v5

    .line 278
    goto/16 :goto_0

    .line 279
    :cond_f
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isHSw240dpiScreen()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 280
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v4, :cond_10

    move v2, v3

    .line 281
    goto/16 :goto_0

    .line 282
    :cond_10
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NUM_QWERTY_FEATURE:Z

    if-eqz v2, :cond_11

    move v2, v6

    .line 283
    goto/16 :goto_0

    :cond_11
    move v2, v6

    .line 285
    goto/16 :goto_0

    .line 286
    :cond_12
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXXhSw360dpiScreen()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 287
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v3, :cond_13

    .line 288
    const/16 v2, 0x2c6

    goto/16 :goto_0

    .line 290
    :cond_13
    const/16 v2, 0x370

    goto/16 :goto_0

    .line 291
    :cond_14
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->ishSw360dpiScreen()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 292
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v3, :cond_15

    move v2, v4

    .line 293
    goto/16 :goto_0

    :cond_15
    move v2, v5

    .line 295
    goto/16 :goto_0

    .line 298
    :cond_16
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v2

    goto/16 :goto_0
.end method

.method protected createLineGradient()V
    .locals 12

    .prologue
    const/4 v6, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 144
    iget-boolean v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->mIsLineGradient:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    .line 145
    new-array v8, v11, [I

    .line 146
    .local v8, pt:[I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->getWidth()I

    move-result v0

    aput v0, v8, v9

    .line 147
    aget v0, v8, v9

    if-nez v0, :cond_1

    .line 159
    .end local v8           #pt:[I
    :cond_0
    :goto_0
    return-void

    .line 150
    .restart local v8       #pt:[I
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->getHeight()I

    move-result v0

    aput v0, v8, v10

    .line 151
    new-instance v0, Landroid/graphics/LinearGradient;

    aget v1, v8, v9

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/4 v2, 0x0

    aget v3, v8, v9

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    aget v4, v8, v10

    int-to-float v4, v4

    const/4 v5, 0x3

    new-array v5, v5, [I

    iget-object v7, p0, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->mLineGradientColors:[I

    aget v7, v7, v9

    aput v7, v5, v9

    iget-object v7, p0, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->mLineGradientColors:[I

    aget v7, v7, v10

    aput v7, v5, v10

    iget-object v7, p0, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->mLineGradientColors:[I

    aget v7, v7, v11

    aput v7, v5, v11

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->mlineGradient:Landroid/graphics/LinearGradient;

    .line 157
    .end local v8           #pt:[I
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->mPaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->mIsLineGradient:Z

    if-eqz v1, :cond_3

    iget-object v6, p0, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->mlineGradient:Landroid/graphics/LinearGradient;

    :cond_3
    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->draw(Landroid/graphics/Canvas;)V

    .line 124
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v5, 0x4000

    .line 132
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    .line 133
    .local v0, isLandscape:Z
    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->GetHWBoxWidth(Z)I

    move-result v2

    .line 134
    .local v2, measuredWidth:I
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->GetHWBoxHeight(Z)I

    move-result v1

    .line 135
    .local v1, measuredHeight:I
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 137
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 139
    invoke-super {p0, p1, p2}, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->onMeasure(II)V

    .line 140
    return-void

    .line 132
    .end local v0           #isLandscape:Z
    .end local v1           #measuredHeight:I
    .end local v2           #measuredWidth:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBoxInputMode(I)V
    .locals 0
    .parameter "inputMode"

    .prologue
    .line 127
    iput p1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWBoxView;->mInputMode:I

    .line 128
    return-void
.end method
