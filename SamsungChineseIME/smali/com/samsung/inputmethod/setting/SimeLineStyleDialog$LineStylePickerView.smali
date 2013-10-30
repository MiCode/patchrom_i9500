.class Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;
.super Landroid/view/View;
.source "SimeLineStyleDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LineStylePickerView"
.end annotation


# static fields
.field public static CENTER_X:I

.field public static CENTER_Y:I


# instance fields
.field private LPAD:I

.field private RPAD:I

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mListener:Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$OnLineChangedListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mSelectionHighlight:Landroid/graphics/drawable/Drawable;

.field private mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;

.field private mTouchY:I

.field private final minHPAD:I

.field private realHPAD:I

.field private final textColor:I

.field private textSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x64

    .line 171
    sput v0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->CENTER_X:I

    .line 172
    sput v0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->CENTER_Y:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$OnLineChangedListener;I)V
    .locals 3
    .parameter "c"
    .parameter "l"
    .parameter "color"

    .prologue
    const/16 v1, 0x1e

    const/4 v0, -0x1

    const/4 v2, 0x4

    .line 86
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 75
    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->mTouchY:I

    .line 77
    iput v2, p0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->LPAD:I

    .line 78
    iput v2, p0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->RPAD:I

    .line 79
    iput v1, p0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->minHPAD:I

    .line 80
    iput v1, p0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->realHPAD:I

    .line 81
    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->textColor:I

    .line 82
    const/16 v0, 0x18

    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->textSize:I

    .line 87
    iput-object p2, p0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->mListener:Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$OnLineChangedListener;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    .line 90
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->mEntryValues:[Ljava/lang/CharSequence;

    .line 96
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->mPaint:Landroid/graphics/Paint;

    .line 97
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 98
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;->mInitialLine:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 99
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;->mLineColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->LPAD:I

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->RPAD:I

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->textSize:I

    .line 104
    return-void

    .line 90
    :array_0
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0x9ct 0x0t 0x1t 0x1t
        0x9dt 0x0t 0x1t 0x1t
        0xa7t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method private tryPlayKeyDown()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;

    if-nez v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->getInstance(Landroid/content/Context;)Lcom/samsung/inputmethod/comm/SimeSoundManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->tryPlayKeyDown(I)V

    .line 199
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .parameter "canvas"

    .prologue
    .line 109
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->mEntryValues:[Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    .line 155
    :cond_0
    return-void

    .line 111
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v12, v1

    .line 112
    .local v12, n:I
    const/4 v1, 0x1

    if-lt v12, v1, :cond_0

    .line 114
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->realHPAD:I

    .line 115
    .local v9, h:I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->getWidth()I

    move-result v17

    .line 118
    .local v17, w:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->textSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 119
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 120
    .local v13, rt:Landroid/graphics/Rect;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v12, :cond_0

    .line 121
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v1, v1, v10

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 122
    .local v11, lw:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->LPAD:I

    mul-int v2, v9, v10

    add-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->RPAD:I

    sub-int v3, v17, v3

    mul-int v4, v9, v10

    add-int/2addr v4, v9

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v13, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 123
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 124
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 126
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 130
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v13, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 131
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->mTouchY:I

    if-lez v1, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->mTouchY:I

    mul-int v2, v9, v10

    if-le v1, v2, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->mTouchY:I

    add-int/lit8 v2, v10, 0x1

    mul-int/2addr v2, v9

    if-ge v1, v2, :cond_3

    .line 132
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v13}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 134
    sput v11, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;->mInitialLine:I

    .line 139
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v2, v2, v10

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " px"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 140
    .local v14, text:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v0, v1

    move/from16 v16, v0

    .line 141
    .local v16, txt_len:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->mPaint:Landroid/graphics/Paint;

    int-to-float v2, v11

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 142
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->mPaint:Landroid/graphics/Paint;

    sget v2, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;->mLineColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->LPAD:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v2, v1

    mul-int v1, v9, v10

    div-int/lit8 v3, v9, 0x2

    add-int/2addr v1, v3

    int-to-float v3, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->RPAD:I

    mul-int/lit8 v1, v1, 0xa

    sub-int v1, v17, v1

    sub-int v1, v1, v16

    int-to-float v4, v1

    mul-int v1, v9, v10

    div-int/lit8 v5, v9, 0x2

    add-int/2addr v1, v5

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 146
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 147
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 150
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v7

    .line 151
    .local v7, fmi:Landroid/graphics/Paint$FontMetricsInt;
    iget v1, v7, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v2, v7, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v8, v1, v2

    .line 152
    .local v8, fontH:I
    sub-int v1, v9, v8

    div-int/lit8 v1, v1, 0x2

    mul-int v2, v9, v10

    add-int/2addr v1, v2

    iget v2, v7, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v1, v2

    int-to-float v15, v1

    .line 153
    .local v15, textY:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->RPAD:I

    mul-int/lit8 v1, v1, 0x3

    sub-int v1, v17, v1

    sub-int v1, v1, v16

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v1, v15, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 120
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 135
    .end local v7           #fmi:Landroid/graphics/Paint$FontMetricsInt;
    .end local v8           #fontH:I
    .end local v14           #text:Ljava/lang/String;
    .end local v15           #textY:F
    .end local v16           #txt_len:I
    :cond_3
    sget v1, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;->mInitialLine:I

    if-ne v11, v1, :cond_2

    .line 136
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v13}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 137
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/16 v2, 0x1e

    .line 159
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 160
    sget v0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->CENTER_Y:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v1, v1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->realHPAD:I

    .line 161
    iget v0, p0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->realHPAD:I

    if-ge v0, v2, :cond_0

    .line 162
    iput v2, p0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->realHPAD:I

    .line 163
    sget v0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->CENTER_X:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->realHPAD:I

    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->mEntryValues:[Ljava/lang/CharSequence;

    array-length v2, v2

    mul-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->setMeasuredDimension(II)V

    .line 169
    :goto_0
    return-void

    .line 168
    :cond_0
    sget v0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->CENTER_X:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->CENTER_Y:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 176
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 177
    .local v0, y:F
    float-to-int v1, v0

    iput v1, p0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->mTouchY:I

    .line 178
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 190
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 180
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->invalidate()V

    goto :goto_0

    .line 183
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->invalidate()V

    goto :goto_0

    .line 186
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->tryPlayKeyDown()V

    .line 187
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$LineStylePickerView;->mListener:Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$OnLineChangedListener;

    sget v2, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog;->mInitialLine:I

    invoke-interface {v1, v2}, Lcom/samsung/inputmethod/setting/SimeLineStyleDialog$OnLineChangedListener;->lineChanged(I)V

    goto :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
