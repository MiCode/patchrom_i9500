.class public Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
.super Ljava/lang/Object;
.source "SimeSkbSoftKey.java"


# static fields
.field private static final DEBUG:Z = false

.field protected static final KEYMASK_BALLOON:I = 0x20000000

.field protected static final KEYMASK_DISABLE:I = 0x40000000

.field protected static final KEYMASK_REPEAT:I = 0x10000000

.field public static final MAX_MOVE_TOLERANCE_X:I = 0x0

.field public static final MAX_MOVE_TOLERANCE_Y:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SamsungSoftKey"


# instance fields
.field public mBalloonKeyHeight:F

.field public mBalloonKeyWidth:F

.field public mBottom:I

.field public mBottomF:F

.field public mBottomMargin:F

.field public mBottomMarginF:F

.field protected mIsIconResizable:Z

.field protected mIsLongPressed:Z

.field protected mKeyCode:I

.field protected mKeyExtraHlIcon:Landroid/graphics/drawable/Drawable;

.field protected mKeyExtraIcon:Landroid/graphics/drawable/Drawable;

.field protected mKeyHlIcon:Landroid/graphics/drawable/Drawable;

.field protected mKeyIcon:Landroid/graphics/drawable/Drawable;

.field protected mKeyIconPopup:Landroid/graphics/drawable/Drawable;

.field protected mKeyLabel:Ljava/lang/String;

.field protected mKeyLongIconPopup:Landroid/graphics/drawable/Drawable;

.field protected mKeyLongLabel:Ljava/lang/String;

.field protected mKeyMask:I

.field protected mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

.field public mLeft:I

.field public mLeftF:F

.field public mLeftMargin:F

.field public mLeftMarginF:F

.field mParentKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

.field public mPopupSkbId:I

.field public mRight:I

.field public mRightF:F

.field public mRightMargin:F

.field public mRightMarginF:F

.field public mTop:I

.field public mTopF:F

.field public mTopMargin:F

.field public mTopMarginF:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mIsLongPressed:Z

    .line 82
    iput-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mIsIconResizable:Z

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mParentKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    return-void
.end method

.method private setKeyType(Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "keyType"
    .parameter "keyIcon"
    .parameter "keyIconPopup"

    .prologue
    const/4 v0, 0x0

    .line 162
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    .line 163
    iput-object p2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyIcon:Landroid/graphics/drawable/Drawable;

    .line 164
    iput-object p3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyIconPopup:Landroid/graphics/drawable/Drawable;

    .line 165
    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLongIconPopup:Landroid/graphics/drawable/Drawable;

    .line 166
    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyHlIcon:Landroid/graphics/drawable/Drawable;

    .line 168
    return-void
.end method


# virtual methods
.method public changeCase(Z)V
    .locals 1
    .parameter "upperCase"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLabel:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 322
    if-eqz p1, :cond_2

    .line 323
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLabel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLabel:Ljava/lang/String;

    .line 327
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLongLabel:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 328
    if-eqz p1, :cond_3

    .line 329
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLongLabel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLongLabel:Ljava/lang/String;

    .line 335
    :cond_1
    :goto_1
    return-void

    .line 325
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLabel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLabel:Ljava/lang/String;

    goto :goto_0

    .line 331
    :cond_3
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLongLabel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLongLabel:Ljava/lang/String;

    goto :goto_1
.end method

.method public cloneSamsungSoftKey(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 115
    new-instance v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-direct {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;-><init>()V

    .line 116
    .local v0, softkey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    iget v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyMask:I

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyMask:I

    .line 117
    iget-object v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    iput-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    .line 118
    iget-object v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyIcon:Landroid/graphics/drawable/Drawable;

    .line 119
    iget-object v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyHlIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyHlIcon:Landroid/graphics/drawable/Drawable;

    .line 120
    iget-object v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyExtraIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyExtraIcon:Landroid/graphics/drawable/Drawable;

    .line 121
    iget-object v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyExtraHlIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyExtraHlIcon:Landroid/graphics/drawable/Drawable;

    .line 122
    iget-object v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyIconPopup:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyIconPopup:Landroid/graphics/drawable/Drawable;

    .line 123
    iget-object v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLongIconPopup:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLongIconPopup:Landroid/graphics/drawable/Drawable;

    .line 124
    iget-object v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLabel:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLabel:Ljava/lang/String;

    .line 125
    iget-object v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLongLabel:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLongLabel:Ljava/lang/String;

    .line 126
    iget v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyCode:I

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyCode:I

    .line 127
    iget-boolean v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mIsLongPressed:Z

    iput-boolean v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mIsLongPressed:Z

    .line 128
    iget-boolean v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mIsIconResizable:Z

    iput-boolean v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mIsIconResizable:Z

    .line 129
    iget v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mPopupSkbId:I

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mPopupSkbId:I

    .line 131
    iget v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeftMarginF:F

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeftMarginF:F

    .line 132
    iget v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRightMarginF:F

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRightMarginF:F

    .line 133
    iget v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeftMargin:F

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeftMargin:F

    .line 134
    iget v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRightMargin:F

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRightMargin:F

    .line 136
    iget v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTopMarginF:F

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTopMarginF:F

    .line 137
    iget v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottomMarginF:F

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottomMarginF:F

    .line 138
    iget v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTopMargin:F

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTopMargin:F

    .line 139
    iget v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottomMargin:F

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottomMargin:F

    .line 141
    iget v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeftF:F

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeftF:F

    .line 142
    iget v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRightF:F

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRightF:F

    .line 143
    iget v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTopF:F

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTopF:F

    .line 144
    iget v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottomF:F

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottomF:F

    .line 145
    iget v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    .line 146
    iget v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRight:I

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRight:I

    .line 147
    iget v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    .line 148
    iget v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottom:I

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottom:I

    .line 151
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    iget v1, v1, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mballoonWidth:F

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBalloonKeyWidth:F

    .line 152
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    iget v1, v1, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mballoonHeight:F

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBalloonKeyHeight:F

    .line 153
    return-void
.end method

.method public getBalloonHeight()F
    .locals 1

    .prologue
    .line 427
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBalloonKeyHeight:F

    return v0
.end method

.method public getBalloonWidth()F
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBalloonKeyWidth:F

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mColor:I

    return v0
.end method

.method public getColorBalloon()I
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mColorBalloon:I

    return v0
.end method

.method public getColorHl()I
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mColorHl:I

    return v0
.end method

.method public getIconNoResize()Z
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mIsIconResizable:Z

    return v0
.end method

.method public getKeyBg()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mKeyBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getKeyCode()I
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyCode:I

    return v0
.end method

.method public getKeyExtraHlIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyExtraHlIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getKeyExtraIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyExtraIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getKeyHlBg()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mKeyHlBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getKeyHlIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyHlIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getKeyIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getKeyIconPopup()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyIconPopup:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyIconPopup:Landroid/graphics/drawable/Drawable;

    .line 298
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getKeyLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyLeft()I
    .locals 1

    .prologue
    .line 409
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    return v0
.end method

.method public getKeyLongIconPopup()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLongIconPopup:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getKeyLongLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLongLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyTop()I
    .locals 1

    .prologue
    .line 405
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    return v0
.end method

.method public getKeyType()I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mKeyTypeId:I

    return v0
.end method

.method public getParentKey()Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mParentKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    return-object v0
.end method

.method public getPopupResId()I
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mPopupSkbId:I

    return v0
.end method

.method public height()I
    .locals 2

    .prologue
    .line 417
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottom:I

    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public isBracketKey()Z
    .locals 2

    .prologue
    .line 373
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyCode:I

    const/16 v1, 0x47

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyCode:I

    const/16 v1, 0x48

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 374
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDisable()Z
    .locals 2

    .prologue
    .line 392
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyMask:I

    const/high16 v1, 0x4000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeyCodeKey()Z
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyCode:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 363
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLongPressed()Z
    .locals 1

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mIsLongPressed:Z

    return v0
.end method

.method public isUniStrKey()Z
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLabel:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyCode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 379
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUserDefKey()Z
    .locals 1

    .prologue
    .line 367
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyCode:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 368
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveWithinKey(II)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 431
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    add-int/lit8 v0, v0, 0x0

    if-gt v0, p1, :cond_0

    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    add-int/lit8 v0, v0, 0x0

    if-gt v0, p2, :cond_0

    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRight:I

    add-int/lit8 v0, v0, 0x0

    if-le v0, p1, :cond_0

    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottom:I

    add-int/lit8 v0, v0, 0x0

    if-le v0, p2, :cond_0

    .line 438
    const/4 v0, 0x1

    .line 440
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needBalloon()Z
    .locals 2

    .prologue
    .line 383
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyMask:I

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public repeatable()Z
    .locals 2

    .prologue
    .line 387
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyMask:I

    const/high16 v1, 0x1000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBalloonKeyAttribute(FF)V
    .locals 0
    .parameter "balloonWidth"
    .parameter "balloonHeight"

    .prologue
    .line 198
    iput p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBalloonKeyWidth:F

    .line 199
    iput p2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBalloonKeyHeight:F

    .line 200
    return-void
.end method

.method public setIconNoResize(Z)V
    .locals 0
    .parameter "isResizable"

    .prologue
    .line 251
    iput-boolean p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mIsIconResizable:Z

    .line 252
    return-void
.end method

.method public setKeyAttribute(ILjava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 6
    .parameter "keyCode"
    .parameter "label"
    .parameter "longLabel"
    .parameter "repeat"
    .parameter "balloon"
    .parameter "disable"

    .prologue
    .line 238
    iput-object p3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLongLabel:Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p5

    move v5, p6

    .line 239
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->setKeyAttribute(ILjava/lang/String;ZZZ)V

    .line 240
    return-void
.end method

.method public setKeyAttribute(ILjava/lang/String;ZZZ)V
    .locals 2
    .parameter "keyCode"
    .parameter "label"
    .parameter "repeat"
    .parameter "balloon"
    .parameter "disable"

    .prologue
    .line 211
    iput p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyCode:I

    .line 212
    iput-object p2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLabel:Ljava/lang/String;

    .line 214
    if-eqz p3, :cond_0

    .line 215
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyMask:I

    const/high16 v1, 0x1000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyMask:I

    .line 220
    :goto_0
    if-eqz p4, :cond_1

    .line 221
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyMask:I

    const/high16 v1, 0x2000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyMask:I

    .line 227
    :goto_1
    if-eqz p5, :cond_2

    .line 228
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyMask:I

    const/high16 v1, 0x4000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyMask:I

    .line 232
    :goto_2
    return-void

    .line 217
    :cond_0
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyMask:I

    const v1, -0x10000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyMask:I

    goto :goto_0

    .line 223
    :cond_1
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyMask:I

    const v1, -0x20000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyMask:I

    goto :goto_1

    .line 230
    :cond_2
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyMask:I

    const v1, -0x40000001

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyMask:I

    goto :goto_2
.end method

.method public setKeyDimensions(FFFF)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 190
    iput p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeftF:F

    .line 191
    iput p2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTopF:F

    .line 192
    iput p3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRightF:F

    .line 193
    iput p4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottomF:F

    .line 194
    return-void
.end method

.method public setKeyLeftRightMargins(FFFF)V
    .locals 0
    .parameter "leftMargin"
    .parameter "rightMargin"
    .parameter "topMargin"
    .parameter "bottomMargin"

    .prologue
    .line 203
    iput p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeftMarginF:F

    .line 204
    iput p2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRightMarginF:F

    .line 205
    iput p3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTopMarginF:F

    .line 206
    iput p4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottomMarginF:F

    .line 207
    return-void
.end method

.method public setKeyType(Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "keyType"
    .parameter "keyIcon"
    .parameter "keyHlIcon"
    .parameter "keyExtraIcon"
    .parameter "keyExtraHlIcon"
    .parameter "keyIconPopup"
    .parameter "keyLPIconPopup"

    .prologue
    .line 180
    invoke-direct {p0, p1, p2, p6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->setKeyType(Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 181
    iput-object p4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyExtraIcon:Landroid/graphics/drawable/Drawable;

    .line 182
    iput-object p5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyExtraHlIcon:Landroid/graphics/drawable/Drawable;

    .line 183
    iput-object p3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyHlIcon:Landroid/graphics/drawable/Drawable;

    .line 184
    iput-object p7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLongIconPopup:Landroid/graphics/drawable/Drawable;

    .line 185
    return-void
.end method

.method public setLongPressed(Z)V
    .locals 0
    .parameter "ispressed"

    .prologue
    .line 247
    iput-boolean p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mIsLongPressed:Z

    .line 248
    return-void
.end method

.method public setMultiModalKeyType(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "keyCode"
    .parameter "keyIcon"
    .parameter "keyHlIcon"

    .prologue
    .line 172
    iput p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyCode:I

    .line 173
    iput-object p2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyIcon:Landroid/graphics/drawable/Drawable;

    .line 174
    iput-object p3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyHlIcon:Landroid/graphics/drawable/Drawable;

    .line 175
    return-void
.end method

.method public setParentKey(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V
    .locals 0
    .parameter "parentKey"

    .prologue
    .line 275
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mParentKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .line 276
    return-void
.end method

.method public setPopupSkbId(I)V
    .locals 0
    .parameter "popupSkbId"

    .prologue
    .line 243
    iput p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mPopupSkbId:I

    .line 244
    return-void
.end method

.method public setSkbCoreSize(II)V
    .locals 2
    .parameter "skbWidth"
    .parameter "skbHeight"

    .prologue
    .line 262
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeftF:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    .line 263
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRightF:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRight:I

    .line 264
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTopF:F

    int-to-float v1, p2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    .line 265
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottomF:F

    int-to-float v1, p2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottom:I

    .line 267
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeftMarginF:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeftMargin:F

    .line 268
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRightMarginF:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRightMargin:F

    .line 270
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTopMarginF:F

    int-to-float v1, p2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTopMargin:F

    .line 271
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottomMarginF:F

    int-to-float v1, p2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottomMargin:F

    .line 272
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 445
    const-string v0, "\n"

    .line 446
    .local v0, str:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  keyCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  keyMask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyMask:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  keyLabel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLabel:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "null"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  KeyIcon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyIcon:Landroid/graphics/drawable/Drawable;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  popupResId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mPopupSkbId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  Position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeftF:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTopF:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRightF:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottomF:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 454
    return-object v0

    .line 448
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyLabel:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public width()I
    .locals 2

    .prologue
    .line 413
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRight:I

    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    sub-int/2addr v0, v1

    return v0
.end method
