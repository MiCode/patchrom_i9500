.class public Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;
.super Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
.source "SimeSkbToogleKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;
    }
.end annotation


# static fields
.field private static final KEYMASK_TOGGLE_STATE:I = 0xff


# instance fields
.field private mToggleState:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;-><init>()V

    .line 346
    return-void
.end method

.method private getToggleState()Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;
    .locals 3

    .prologue
    .line 335
    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->mKeyMask:I

    and-int/lit16 v1, v2, 0xff

    .line 336
    .local v1, stateId:I
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 343
    :cond_0
    return-object v0

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->mToggleState:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    .line 340
    .local v0, state:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;
    :goto_0
    if-eqz v0, :cond_0

    iget v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mIdAndFlags:I

    and-int/lit16 v2, v2, 0xff

    if-eq v2, v1, :cond_0

    .line 341
    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mNextState:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    goto :goto_0
.end method


# virtual methods
.method public changeCase(Z)V
    .locals 2
    .parameter "upperCase"

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->getToggleState()Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    move-result-object v0

    .line 289
    .local v0, state:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyLabel:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 290
    if-eqz p1, :cond_2

    .line 291
    iget-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyLabel:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyLabel:Ljava/lang/String;

    .line 296
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyLongLabel:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 297
    if-eqz p1, :cond_3

    .line 298
    iget-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyLongLabel:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyLongLabel:Ljava/lang/String;

    .line 303
    :cond_1
    :goto_1
    return-void

    .line 293
    :cond_2
    iget-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyLabel:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyLabel:Ljava/lang/String;

    goto :goto_0

    .line 300
    :cond_3
    iget-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyLongLabel:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyLongLabel:Ljava/lang/String;

    goto :goto_1
.end method

.method public cloneToggleState()Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;
    .locals 2

    .prologue
    .line 310
    new-instance v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;-><init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;)V

    .line 312
    .local v0, state:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->mToggleState:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    iget v1, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mIdAndFlags:I

    iput v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mIdAndFlags:I

    .line 313
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->mToggleState:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    iget-object v1, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    iput-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    .line 314
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->mToggleState:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    iget v1, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyCode:I

    iput v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyCode:I

    .line 315
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->mToggleState:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    iget-object v1, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyIcon:Landroid/graphics/drawable/Drawable;

    .line 316
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->mToggleState:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    iget-object v1, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyHlIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyHlIcon:Landroid/graphics/drawable/Drawable;

    .line 317
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->mToggleState:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    iget-object v1, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyExtraIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyExtraIcon:Landroid/graphics/drawable/Drawable;

    .line 318
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->mToggleState:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    iget-object v1, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyExtraHlIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyExtraHlIcon:Landroid/graphics/drawable/Drawable;

    .line 319
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->mToggleState:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    iget-object v1, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyIconPopup:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyIconPopup:Landroid/graphics/drawable/Drawable;

    .line 320
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->mToggleState:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    iget-object v1, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyLPIconPopup:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyLPIconPopup:Landroid/graphics/drawable/Drawable;

    .line 321
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->mToggleState:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    iget-object v1, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyLabel:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyLabel:Ljava/lang/String;

    .line 322
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->mToggleState:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    iget-object v1, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyLongLabel:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyLongLabel:Ljava/lang/String;

    .line 323
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->mToggleState:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    iget-object v1, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mNextState:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    iput-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mNextState:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    .line 325
    return-object v0
.end method

.method public createToggleState()Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;
    .locals 1

    .prologue
    .line 306
    new-instance v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;-><init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;)V

    return-object v0
.end method

.method public disableAllToggleStates()Z
    .locals 2

    .prologue
    .line 90
    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->mKeyMask:I

    and-int/lit16 v0, v1, 0xff

    .line 91
    .local v0, oldStateId:I
    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->mKeyMask:I

    and-int/lit16 v1, v1, -0x100

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->mKeyMask:I

    .line 92
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disableToggleState(IZ)Z
    .locals 4
    .parameter "stateId"
    .parameter "resetIfNotFound"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->mKeyMask:I

    and-int/lit16 v0, v3, 0xff

    .line 76
    .local v0, oldStateId:I
    if-ne v0, p1, :cond_2

    .line 77
    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->mKeyMask:I

    and-int/lit16 v3, v3, -0x100

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->mKeyMask:I

    .line 78
    if-eqz p1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 78
    goto :goto_0

    .line 81
    :cond_2
    if-eqz p2, :cond_3

    .line 82
    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->mKeyMask:I

    and-int/lit16 v3, v3, -0x100

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->mKeyMask:I

    .line 83
    if-nez v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    .line 85
    goto :goto_0
.end method

.method public enableToggleState(IZ)Z
    .locals 4
    .parameter "stateId"
    .parameter "resetIfNotFound"

    .prologue
    const/4 v1, 0x1

    .line 50
    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->mKeyMask:I

    and-int/lit16 v0, v2, 0xff

    .line 51
    .local v0, oldStateId:I
    if-ne v0, p1, :cond_1

    const/4 p2, 0x0

    .line 66
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 53
    .restart local p2
    :cond_1
    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->mKeyMask:I

    and-int/lit16 v2, v2, -0x100

    iput v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->mKeyMask:I

    .line 54
    if-lez p1, :cond_3

    .line 55
    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->mKeyMask:I

    and-int/lit16 v3, p1, 0xff

    or-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->mKeyMask:I

    .line 56
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->getToggleState()Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    move-result-object v2

    if-nez v2, :cond_2

    .line 57
    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->mKeyMask:I

    and-int/lit16 v1, v1, -0x100

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->mKeyMask:I

    .line 58
    if-nez p2, :cond_0

    if-lez v0, :cond_0

    .line 59
    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->mKeyMask:I

    and-int/lit16 v2, v0, 0xff

    or-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->mKeyMask:I

    goto :goto_0

    :cond_2
    move p2, v1

    .line 63
    goto :goto_0

    :cond_3
    move p2, v1

    .line 66
    goto :goto_0
.end method

.method public getColor()I
    .locals 2

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->getToggleState()Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    move-result-object v0

    .line 195
    .local v0, state:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    iget v1, v1, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mColor:I

    .line 198
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    iget v1, v1, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mColor:I

    goto :goto_0
.end method

.method public getColorBalloon()I
    .locals 2

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->getToggleState()Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    move-result-object v0

    .line 213
    .local v0, state:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    iget v1, v1, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mColorBalloon:I

    .line 216
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    iget v1, v1, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mColorBalloon:I

    goto :goto_0
.end method

.method public getColorHl()I
    .locals 2

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->getToggleState()Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    move-result-object v0

    .line 204
    .local v0, state:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    iget v1, v1, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mColorHl:I

    .line 207
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    iget v1, v1, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mColorHl:I

    goto :goto_0
.end method

.method public getKeyBg()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->getToggleState()Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    move-result-object v0

    .line 177
    .local v0, state:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    iget-object v1, v1, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mKeyBg:Landroid/graphics/drawable/Drawable;

    .line 180
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    iget-object v1, v1, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mKeyBg:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getKeyCode()I
    .locals 2

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->getToggleState()Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    move-result-object v0

    .line 148
    .local v0, state:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyCode:I

    .line 149
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->mKeyCode:I

    goto :goto_0
.end method

.method public getKeyExtraHlIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->getToggleState()Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    move-result-object v0

    .line 119
    .local v0, state:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyExtraHlIcon:Landroid/graphics/drawable/Drawable;

    .line 120
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyExtraHlIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public getKeyExtraIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->getToggleState()Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    move-result-object v0

    .line 112
    .local v0, state:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyExtraIcon:Landroid/graphics/drawable/Drawable;

    .line 113
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyExtraIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public getKeyHlBg()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->getToggleState()Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    move-result-object v0

    .line 186
    .local v0, state:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    iget-object v1, v1, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mKeyHlBg:Landroid/graphics/drawable/Drawable;

    .line 189
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    iget-object v1, v1, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mKeyHlBg:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getKeyHlIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->getToggleState()Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    move-result-object v0

    .line 105
    .local v0, state:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyHlIcon:Landroid/graphics/drawable/Drawable;

    .line 106
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyHlIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public getKeyIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->getToggleState()Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    move-result-object v0

    .line 98
    .local v0, state:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyIcon:Landroid/graphics/drawable/Drawable;

    .line 99
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public getKeyIconPopup()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->getToggleState()Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    move-result-object v0

    .line 127
    .local v0, state:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;
    if-eqz v0, :cond_1

    .line 128
    iget-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyIconPopup:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyIconPopup:Landroid/graphics/drawable/Drawable;

    .line 134
    :goto_0
    return-object v1

    .line 131
    :cond_0
    iget-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 134
    :cond_1
    invoke-super {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyIconPopup()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public getKeyLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->getToggleState()Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    move-result-object v0

    .line 155
    .local v0, state:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyLabel:Ljava/lang/String;

    .line 156
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->mKeyLabel:Ljava/lang/String;

    goto :goto_0
.end method

.method public getKeyLongIconPopup()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->getToggleState()Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    move-result-object v0

    .line 170
    .local v0, state:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyLPIconPopup:Landroid/graphics/drawable/Drawable;

    .line 171
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->mKeyLongIconPopup:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getKeyLongLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->getToggleState()Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    move-result-object v0

    .line 163
    .local v0, state:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyLongLabel:Ljava/lang/String;

    .line 164
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->mKeyLongLabel:Ljava/lang/String;

    goto :goto_0
.end method

.method public getKeyType()I
    .locals 2

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->getToggleState()Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    move-result-object v0

    .line 140
    .local v0, state:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    iget v1, v1, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mKeyTypeId:I

    .line 143
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    iget v1, v1, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mKeyTypeId:I

    goto :goto_0
.end method

.method public getToggleStateId()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->mKeyMask:I

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public isDisable()Z
    .locals 3

    .prologue
    .line 275
    const/4 v0, 0x0

    .line 277
    .local v0, bRet:Z
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->getToggleState()Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 278
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->getToggleState()Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    move-result-object v1

    iget v1, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mIdAndFlags:I

    const/high16 v2, 0x4000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 282
    :goto_0
    return v0

    .line 278
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 281
    :cond_1
    invoke-super {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->isDisable()Z

    move-result v0

    goto :goto_0
.end method

.method public isKeyCodeKey()Z
    .locals 2

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->getToggleState()Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    move-result-object v0

    .line 222
    .local v0, state:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;
    if-eqz v0, :cond_1

    .line 223
    iget v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyCode:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 226
    :goto_0
    return v1

    .line 224
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 226
    :cond_1
    invoke-super {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->isKeyCodeKey()Z

    move-result v1

    goto :goto_0
.end method

.method public isUniStrKey()Z
    .locals 2

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->getToggleState()Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    move-result-object v0

    .line 242
    .local v0, state:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;
    if-eqz v0, :cond_1

    .line 243
    iget-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyLabel:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyCode:I

    if-nez v1, :cond_0

    .line 244
    const/4 v1, 0x1

    .line 248
    :goto_0
    return v1

    .line 246
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 248
    :cond_1
    invoke-super {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->isUniStrKey()Z

    move-result v1

    goto :goto_0
.end method

.method public isUserDefKey()Z
    .locals 2

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->getToggleState()Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    move-result-object v0

    .line 232
    .local v0, state:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;
    if-eqz v0, :cond_1

    .line 233
    iget v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mKeyCode:I

    if-gez v1, :cond_0

    const/4 v1, 0x1

    .line 236
    :goto_0
    return v1

    .line 234
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 236
    :cond_1
    invoke-super {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->isUserDefKey()Z

    move-result v1

    goto :goto_0
.end method

.method public needBalloon()Z
    .locals 3

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->getToggleState()Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    move-result-object v0

    .line 254
    .local v0, state:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;
    if-eqz v0, :cond_1

    .line 255
    iget v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mIdAndFlags:I

    const/high16 v2, 0x2000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 257
    :goto_0
    return v1

    .line 255
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 257
    :cond_1
    invoke-super {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->needBalloon()Z

    move-result v1

    goto :goto_0
.end method

.method public repeatable()Z
    .locals 3

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->getToggleState()Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    move-result-object v0

    .line 263
    .local v0, state:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;
    if-eqz v0, :cond_1

    .line 264
    iget v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;->mIdAndFlags:I

    const/high16 v2, 0x1000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 266
    :goto_0
    return v1

    .line 264
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 266
    :cond_1
    invoke-super {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->repeatable()Z

    move-result v1

    goto :goto_0
.end method

.method public setToggleStates(Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;)Z
    .locals 1
    .parameter "rootState"

    .prologue
    .line 329
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 331
    :goto_0
    return v0

    .line 330
    :cond_0
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->mToggleState:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey$ToggleState;

    .line 331
    const/4 v0, 0x1

    goto :goto_0
.end method
