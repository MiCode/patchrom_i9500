.class public Lcom/android/settings_ex/myprofile/EllipsisEditText;
.super Landroid/widget/EditText;
.source "EllipsisEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field FilterArray:[Landroid/text/InputFilter;

.field private mEditTextWidth:F

.field private mEllipsizeCallback:Landroid/text/TextUtils$EllipsizeCallback;

.field private mEllipsized:Z

.field private mMaxTextSize:F

.field private mMinTextSize:F

.field private mScaleTextSize:F

.field private mScaledDensity:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText;->mEllipsized:Z

    .line 28
    const/high16 v0, 0x4254

    iput v0, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText;->mMaxTextSize:F

    .line 33
    const/high16 v0, 0x4120

    iput v0, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText;->mMinTextSize:F

    .line 38
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText;->mScaleTextSize:F

    .line 43
    const/high16 v0, 0x3fc0

    iput v0, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText;->mScaledDensity:F

    .line 53
    new-instance v0, Lcom/android/settings_ex/myprofile/EllipsisEditText$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/myprofile/EllipsisEditText$1;-><init>(Lcom/android/settings_ex/myprofile/EllipsisEditText;)V

    iput-object v0, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText;->mEllipsizeCallback:Landroid/text/TextUtils$EllipsizeCallback;

    .line 65
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 66
    invoke-direct {p0}, Lcom/android/settings_ex/myprofile/EllipsisEditText;->initWidget()V

    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings_ex/myprofile/EllipsisEditText;->initWidth(Landroid/content/Context;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText;->mEllipsized:Z

    .line 28
    const/high16 v0, 0x4254

    iput v0, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText;->mMaxTextSize:F

    .line 33
    const/high16 v0, 0x4120

    iput v0, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText;->mMinTextSize:F

    .line 38
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText;->mScaleTextSize:F

    .line 43
    const/high16 v0, 0x3fc0

    iput v0, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText;->mScaledDensity:F

    .line 53
    new-instance v0, Lcom/android/settings_ex/myprofile/EllipsisEditText$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/myprofile/EllipsisEditText$1;-><init>(Lcom/android/settings_ex/myprofile/EllipsisEditText;)V

    iput-object v0, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText;->mEllipsizeCallback:Landroid/text/TextUtils$EllipsizeCallback;

    .line 65
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 66
    invoke-direct {p0}, Lcom/android/settings_ex/myprofile/EllipsisEditText;->initWidget()V

    .line 85
    invoke-direct {p0, p1}, Lcom/android/settings_ex/myprofile/EllipsisEditText;->initWidth(Landroid/content/Context;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText;->mEllipsized:Z

    .line 28
    const/high16 v0, 0x4254

    iput v0, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText;->mMaxTextSize:F

    .line 33
    const/high16 v0, 0x4120

    iput v0, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText;->mMinTextSize:F

    .line 38
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText;->mScaleTextSize:F

    .line 43
    const/high16 v0, 0x3fc0

    iput v0, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText;->mScaledDensity:F

    .line 53
    new-instance v0, Lcom/android/settings_ex/myprofile/EllipsisEditText$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/myprofile/EllipsisEditText$1;-><init>(Lcom/android/settings_ex/myprofile/EllipsisEditText;)V

    iput-object v0, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText;->mEllipsizeCallback:Landroid/text/TextUtils$EllipsizeCallback;

    .line 65
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setInputType(I)V

    .line 66
    invoke-direct {p0}, Lcom/android/settings_ex/myprofile/EllipsisEditText;->initWidget()V

    .line 96
    invoke-direct {p0, p1}, Lcom/android/settings_ex/myprofile/EllipsisEditText;->initWidth(Landroid/content/Context;)V

    .line 97
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings_ex/myprofile/EllipsisEditText;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText;->mEllipsized:Z

    return p1
.end method

.method private initWidget()V
    .locals 0

    .prologue
    .line 104
    invoke-virtual {p0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 105
    return-void
.end method

.method private initWidth(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f00cd

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 108
    .local v1, marginLeft:F
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0f00cc

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 110
    .local v2, marginRight:F
    const-string v6, "window"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 111
    .local v5, wm:Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 112
    .local v0, display:Landroid/view/Display;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 113
    .local v4, size:Landroid/graphics/Point;
    invoke-virtual {v0, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 115
    iget v6, v4, Landroid/graphics/Point;->x:I

    iget v7, v4, Landroid/graphics/Point;->y:I

    if-ge v6, v7, :cond_0

    iget v6, v4, Landroid/graphics/Point;->x:I

    int-to-float v3, v6

    .line 116
    .local v3, screenWidth:F
    :goto_0
    sub-float v6, v3, v1

    sub-float/2addr v6, v2

    iput v6, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText;->mEditTextWidth:F

    .line 117
    return-void

    .line 115
    .end local v3           #screenWidth:F
    :cond_0
    iget v6, v4, Landroid/graphics/Point;->y:I

    int-to-float v3, v6

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 198
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 208
    return-void
.end method

.method public convertPixelsToDp(F)F
    .locals 2
    .parameter "px"

    .prologue
    .line 183
    iget v1, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText;->mScaledDensity:F

    div-float v0, p1, v1

    .line 184
    .local v0, dp:F
    return v0
.end method

.method public fontChange()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 257
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    .line 258
    .local v2, textPaint:Landroid/text/TextPaint;
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 259
    .local v1, s:Ljava/lang/CharSequence;
    iget v5, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText;->mEditTextWidth:F

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    int-to-float v6, v6

    sub-float v4, v5, v6

    .line 260
    .local v4, textWidth:F
    const/4 v0, 0x0

    .line 261
    .local v0, measureWidth:F
    invoke-virtual {p0}, Lcom/android/settings_ex/myprofile/EllipsisEditText;->getTextSize()F

    move-result v3

    .line 262
    .local v3, textSize:F
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v2, v1, v7, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    .line 263
    :goto_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v0, v5

    add-float/2addr v5, v0

    cmpg-float v5, v5, v4

    if-gez v5, :cond_0

    iget v5, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText;->mScaleTextSize:F

    add-float/2addr v5, v3

    iget v6, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText;->mMaxTextSize:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_0

    .line 264
    iget v5, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText;->mScaleTextSize:F

    add-float/2addr v3, v5

    .line 265
    invoke-virtual {p0, v3}, Lcom/android/settings_ex/myprofile/EllipsisEditText;->setTextSize(F)V

    .line 266
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v2, v1, v7, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    goto :goto_0

    .line 269
    :cond_0
    return-void
.end method

.method public getMaxTextSize()F
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText;->mMaxTextSize:F

    return v0
.end method

.method public getMinTextSize()F
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText;->mMinTextSize:F

    return v0
.end method

.method public getScaleTextSize()F
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText;->mScaleTextSize:F

    return v0
.end method

.method public getScaledDensity()F
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText;->mScaledDensity:F

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 189
    invoke-super {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/myprofile/EllipsisEditText;->convertPixelsToDp(F)F

    move-result v0

    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 10
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v9, 0x0

    .line 218
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 219
    iget v0, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText;->mEditTextWidth:F

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    int-to-float v3, v3

    sub-float v2, v0, v3

    .line 220
    .local v2, textWidth:F
    const/4 v0, 0x0

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_1

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    const/4 v6, 0x0

    .line 223
    .local v6, measureWidth:F
    invoke-virtual {p0}, Lcom/android/settings_ex/myprofile/EllipsisEditText;->getTextSize()F

    move-result v7

    .line 224
    .local v7, textSize:F
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 225
    .local v1, textPaint:Landroid/text/TextPaint;
    invoke-virtual {p0}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText;->mEllipsizeCallback:Landroid/text/TextUtils$EllipsizeCallback;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 226
    .local v8, txtElipsized:Ljava/lang/CharSequence;
    if-ge p3, p4, :cond_3

    .line 228
    iget-boolean v0, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText;->mEllipsized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText;->mScaleTextSize:F

    sub-float v0, v7, v0

    iget v3, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText;->mMinTextSize:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_0

    .line 231
    :cond_2
    iget v0, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText;->mScaleTextSize:F

    sub-float/2addr v7, v0

    .line 232
    invoke-virtual {p0, v7}, Lcom/android/settings_ex/myprofile/EllipsisEditText;->setTextSize(F)V

    .line 233
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {v1, p1, v9, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v6

    .line 234
    cmpl-float v0, v6, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText;->mScaleTextSize:F

    sub-float v0, v7, v0

    iget v3, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText;->mMinTextSize:F

    cmpl-float v0, v0, v3

    if-gez v0, :cond_2

    goto :goto_0

    .line 236
    :cond_3
    if-le p3, p4, :cond_0

    .line 238
    iget v0, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText;->mScaleTextSize:F

    add-float/2addr v0, v7

    iget v3, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText;->mMaxTextSize:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_0

    .line 241
    :cond_4
    iget v0, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText;->mScaleTextSize:F

    add-float/2addr v7, v0

    .line 242
    invoke-virtual {p0, v7}, Lcom/android/settings_ex/myprofile/EllipsisEditText;->setTextSize(F)V

    .line 243
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {v1, p1, v9, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v6

    .line 244
    cmpl-float v0, v6, v2

    if-lez v0, :cond_5

    .line 245
    iget v0, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText;->mScaleTextSize:F

    sub-float/2addr v7, v0

    .line 246
    invoke-virtual {p0, v7}, Lcom/android/settings_ex/myprofile/EllipsisEditText;->setTextSize(F)V

    .line 247
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {v1, p1, v9, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v6

    .line 248
    goto :goto_0

    .line 250
    :cond_5
    cmpg-float v0, v6, v2

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText;->mScaleTextSize:F

    add-float/2addr v0, v7

    iget v3, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText;->mMaxTextSize:F

    cmpg-float v0, v0, v3

    if-lez v0, :cond_4

    goto :goto_0
.end method

.method public setMaxTextSize(F)V
    .locals 1
    .parameter "maxTextSize"

    .prologue
    .line 150
    iget v0, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText;->mScaledDensity:F

    div-float/2addr p1, v0

    .line 151
    iput p1, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText;->mMaxTextSize:F

    .line 152
    return-void
.end method

.method public setMinTextSize(F)V
    .locals 0
    .parameter "minTextSize"

    .prologue
    .line 165
    iput p1, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText;->mMinTextSize:F

    .line 166
    return-void
.end method

.method public setScaleTextSize(F)V
    .locals 0
    .parameter "scaleTextSize"

    .prologue
    .line 179
    iput p1, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText;->mScaleTextSize:F

    .line 181
    return-void
.end method

.method public setScaledDensity(F)V
    .locals 0
    .parameter "scaledDensity"

    .prologue
    .line 130
    iput p1, p0, Lcom/android/settings_ex/myprofile/EllipsisEditText;->mScaledDensity:F

    .line 131
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .parameter "size"

    .prologue
    .line 142
    const/4 v0, 0x1

    invoke-super {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 143
    return-void
.end method
