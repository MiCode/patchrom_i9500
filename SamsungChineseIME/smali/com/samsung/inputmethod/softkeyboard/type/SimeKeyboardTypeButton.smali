.class public Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;
.super Landroid/widget/Button;
.source "SimeKeyboardTypeButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final FLOAT_WINDOW_RATE:F = 0.6f

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;)V
    .locals 1
    .parameter "context"
    .parameter "skbTypeId"
    .parameter "lang"

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-direct {p0, p2, p3}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;->init(ILcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;)V

    .line 36
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method private init(ILcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;)V
    .locals 11
    .parameter "sdkTypeId"
    .parameter "lang"

    .prologue
    const/4 v10, 0x0

    const v9, 0x3f19999a

    .line 57
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;->setId(I)V

    .line 58
    const v7, 0x7f020067

    invoke-virtual {p0, v7}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;->setBackgroundResource(I)V

    .line 60
    const/4 v5, -0x1

    .line 61
    .local v5, strID:I
    packed-switch p1, :pswitch_data_0

    .line 132
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 133
    .local v4, resources:Landroid/content/res/Resources;
    const/4 v7, -0x1

    if-eq v5, v7, :cond_1

    if-eqz v4, :cond_1

    .line 134
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;->setText(Ljava/lang/CharSequence;)V

    .line 135
    const v7, 0x7f080026

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;->setTextColor(I)V

    .line 137
    const v7, 0x7f0a008b

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 139
    .local v6, textSize:I
    int-to-float v7, v6

    invoke-virtual {p0, v10, v7}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;->setTextSize(IF)V

    .line 142
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getHelveFont()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 144
    const v7, 0x7f0a0089

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 146
    .local v0, height:I
    const v7, 0x7f0a0093

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v1, v7

    .line 148
    .local v1, marginLeft:I
    const v7, 0x7f0a0094

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v2, v7

    .line 151
    .local v2, marginRight:I
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;->isFloating()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 152
    const v7, 0x7f0a008a

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 154
    int-to-float v7, v1

    mul-float/2addr v7, v9

    float-to-int v1, v7

    .line 155
    int-to-float v7, v2

    mul-float/2addr v7, v9

    float-to-int v2, v7

    .line 158
    :cond_0
    new-instance v3, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v3}, Landroid/widget/TableRow$LayoutParams;-><init>()V

    .line 159
    .local v3, params:Landroid/widget/TableRow$LayoutParams;
    iput v10, v3, Landroid/widget/TableRow$LayoutParams;->width:I

    .line 160
    iput v0, v3, Landroid/widget/TableRow$LayoutParams;->height:I

    .line 161
    const/high16 v7, 0x3f80

    iput v7, v3, Landroid/widget/TableRow$LayoutParams;->weight:F

    .line 162
    iput v1, v3, Landroid/widget/TableRow$LayoutParams;->leftMargin:I

    .line 163
    iput v2, v3, Landroid/widget/TableRow$LayoutParams;->rightMargin:I

    .line 165
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    .end local v0           #height:I
    .end local v1           #marginLeft:I
    .end local v2           #marginRight:I
    .end local v3           #params:Landroid/widget/TableRow$LayoutParams;
    .end local v6           #textSize:I
    :cond_1
    return-void

    .line 63
    .end local v4           #resources:Landroid/content/res/Resources;
    :pswitch_0
    if-eqz p2, :cond_5

    .line 64
    sget-object v7, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton$1;->$SwitchMap$com$samsung$inputmethod$softkeyboard$type$SimeKeyboardType$Language:[I

    invoke-virtual {p2}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_1

    goto :goto_0

    .line 66
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;->isEn()Z

    move-result v7

    if-eqz v7, :cond_2

    const v5, 0x7f0b02be

    .line 68
    :goto_1
    goto/16 :goto_0

    .line 66
    :cond_2
    const v5, 0x7f0b02ae

    goto :goto_1

    .line 70
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;->isEn()Z

    move-result v7

    if-eqz v7, :cond_3

    const v5, 0x7f0b02bf

    .line 72
    :goto_2
    goto/16 :goto_0

    .line 70
    :cond_3
    const v5, 0x7f0b02af

    goto :goto_2

    .line 74
    :pswitch_3
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;->isEn()Z

    move-result v7

    if-eqz v7, :cond_4

    const v5, 0x7f0b02c0

    .line 76
    :goto_3
    goto/16 :goto_0

    .line 74
    :cond_4
    const v5, 0x7f0b02b0

    goto :goto_3

    .line 78
    :pswitch_4
    const v5, 0x7f0b02b1

    .line 79
    goto/16 :goto_0

    .line 81
    :pswitch_5
    const v5, 0x7f0b02b2

    .line 82
    goto/16 :goto_0

    .line 87
    :cond_5
    const v5, 0x7f0b02ad

    .line 89
    goto/16 :goto_0

    .line 91
    :pswitch_6
    if-eqz p2, :cond_8

    .line 92
    sget-object v7, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton$1;->$SwitchMap$com$samsung$inputmethod$softkeyboard$type$SimeKeyboardType$Language:[I

    invoke-virtual {p2}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_2

    .line 108
    :pswitch_7
    const v5, 0x7f0b02b3

    .line 109
    goto/16 :goto_0

    .line 94
    :pswitch_8
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;->isEn()Z

    move-result v7

    if-eqz v7, :cond_6

    const v5, 0x7f0b02c1

    .line 96
    :goto_4
    goto/16 :goto_0

    .line 94
    :cond_6
    const v5, 0x7f0b02b4

    goto :goto_4

    .line 98
    :pswitch_9
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;->isEn()Z

    move-result v7

    if-eqz v7, :cond_7

    const v5, 0x7f0b02c2

    .line 100
    :goto_5
    goto/16 :goto_0

    .line 98
    :cond_7
    const v5, 0x7f0b02b5

    goto :goto_5

    .line 102
    :pswitch_a
    const v5, 0x7f0b02b6

    .line 103
    goto/16 :goto_0

    .line 105
    :pswitch_b
    const v5, 0x7f0b02b7

    .line 106
    goto/16 :goto_0

    .line 112
    :cond_8
    const v5, 0x7f0b02b3

    .line 114
    goto/16 :goto_0

    .line 116
    :pswitch_c
    const v5, 0x7f0b02b8

    .line 117
    goto/16 :goto_0

    .line 119
    :pswitch_d
    const v5, 0x7f0b02b9

    .line 120
    goto/16 :goto_0

    .line 122
    :pswitch_e
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;->isFloating()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 123
    const v5, 0x7f0b02bb

    goto/16 :goto_0

    .line 125
    :cond_9
    const v5, 0x7f0b02ba

    .line 127
    goto/16 :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch

    .line 64
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 92
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private isEn()Z
    .locals 2

    .prologue
    .line 212
    const-string v0, "en"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isFloating()Z
    .locals 2

    .prologue
    .line 203
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v0

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public highLight()V
    .locals 3

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 186
    .local v1, resources:Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    .line 187
    const v2, 0x7f080027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 189
    .local v0, color:I
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;->setTextColor(I)V

    .line 195
    .end local v0           #color:I
    :cond_0
    return-void
.end method

.method public shrink()V
    .locals 4

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 174
    .local v0, resources:Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    .line 175
    const v2, 0x7f0a008c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 177
    .local v1, textSize:I
    const/4 v2, 0x0

    int-to-float v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardTypeButton;->setTextSize(IF)V

    .line 179
    .end local v1           #textSize:I
    :cond_0
    return-void
.end method
