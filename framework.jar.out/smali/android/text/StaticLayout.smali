.class public Landroid/text/StaticLayout;
.super Landroid/text/Layout;
.source "StaticLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/StaticLayout$Injector;
    }
.end annotation


# static fields
.field private static final CHAR_COLON:C = ':'

.field private static final CHAR_COMMA:C = ','

.field private static final CHAR_DOT:C = '.'

.field private static final CHAR_FIRST_CJK:C = '\u2e80'

.field private static final CHAR_FIRST_HIGH_SURROGATE:I = 0xd800

.field private static final CHAR_HYPHEN:C = '-'

.field private static final CHAR_LAST_LOW_SURROGATE:I = 0xdfff

.field private static final CHAR_NEW_LINE:C = '\n'

.field private static final CHAR_SEMICOLON:C = ';'

.field private static final CHAR_SLASH:C = '/'

.field private static final CHAR_SPACE:C = ' '

.field private static final CHAR_TAB:C = '\t'

.field private static final CHAR_ZERO_WIDTH_SPACE:C = '\u200b'

.field private static final COLUMNS_ELLIPSIZE:I = 0x5

.field private static final COLUMNS_NORMAL:I = 0x3

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x4

.field private static final ELLIPSIS_START:I = 0x3

.field private static final EXTRA_ROUNDING:D = 0.5

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_INCREMENT:I = 0x14

.field private static final TAB_MASK:I = 0x20000000

.field static final TAG:Ljava/lang/String; = "StaticLayout"

.field private static final TOP:I = 0x1

.field static isJapaneseLinebreak:Z


# instance fields
.field private mBottomPadding:I

.field private mColumns:I

.field private mEllipsizedWidth:I

.field private mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private mLineCount:I

.field private mLineDirections:[Landroid/text/Layout$Directions;

.field private mLines:[I

.field private mMaximumVisibleLineCount:I

.field private mMeasured:Landroid/text/MeasuredText;

.field private mTopPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Landroid/text/StaticLayout;->isJapaneseLinebreak:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 7
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 156
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 1134
    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 1164
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 158
    const/4 v0, 0x5

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 159
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 160
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    new-array v0, v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 162
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 163
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 12
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 75
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 14
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"

    .prologue
    .line 97
    sget-object v7, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 14
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "textDir"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 87
    const/4 v11, 0x0

    const/4 v12, 0x0

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V
    .locals 15
    .parameter "source"
    .parameter "bufstart"
    .parameter "bufend"
    .parameter "paint"
    .parameter "outerwidth"
    .parameter "align"
    .parameter "textDir"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "ellipsize"
    .parameter "ellipsizedWidth"
    .parameter "maxLines"

    .prologue
    .line 111
    if-nez p11, :cond_0

    move-object/from16 v2, p1

    :goto_0
    move-object v1, p0

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v1 .. v8}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 1134
    const v1, 0x7fffffff

    iput v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 1164
    new-instance v1, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v1}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v1, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 126
    if-eqz p11, :cond_2

    .line 127
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    check-cast v14, Landroid/text/Layout$Ellipsizer;

    .line 129
    .local v14, e:Landroid/text/Layout$Ellipsizer;
    iput-object p0, v14, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 130
    move/from16 v0, p12

    iput v0, v14, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 131
    move-object/from16 v0, p11

    iput-object v0, v14, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 132
    move/from16 v0, p12

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 134
    const/4 v1, 0x5

    iput v1, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 140
    .end local v14           #e:Landroid/text/Layout$Ellipsizer;
    :goto_1
    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 141
    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    new-array v1, v1, [Landroid/text/Layout$Directions;

    iput-object v1, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 143
    move/from16 v0, p13

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 145
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v1

    iput-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 147
    move/from16 v0, p12

    int-to-float v12, v0

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v1 .. v13}, Landroid/text/StaticLayout;->generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V

    .line 151
    iget-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    invoke-static {v1}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-result-object v1

    iput-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 152
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 153
    return-void

    .line 111
    :cond_0
    move-object/from16 v0, p1

    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_1

    new-instance v2, Landroid/text/Layout$SpannedEllipsizer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    new-instance v2, Landroid/text/Layout$Ellipsizer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 136
    :cond_2
    const/4 v1, 0x3

    iput v1, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 137
    move/from16 v0, p5

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 10
    .parameter "source"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 55
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 11
    .parameter "source"
    .parameter "paint"
    .parameter "width"
    .parameter "align"
    .parameter "textDir"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"

    .prologue
    .line 66
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    .line 68
    return-void
.end method

.method private calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V
    .locals 25
    .parameter "lineStart"
    .parameter "lineEnd"
    .parameter "widths"
    .parameter "widthStart"
    .parameter "avail"
    .parameter "where"
    .parameter "line"
    .parameter "textWidth"
    .parameter "paint"
    .parameter "forceEllipsis"

    .prologue
    .line 874
    cmpg-float v22, p8, p5

    if-gtz v22, :cond_0

    if-nez p10, :cond_0

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v23, v0

    mul-int v23, v23, p7

    add-int/lit8 v23, v23, 0x3

    const/16 v24, 0x0

    aput v24, v22, v23

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v23, v0

    mul-int v23, v23, p7

    add-int/lit8 v23, v23, 0x4

    const/16 v24, 0x0

    aput v24, v22, v23

    .line 1004
    :goto_0
    return-void

    .line 881
    :cond_0
    sget-object v22, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_3

    sget-object v22, Landroid/text/StaticLayout;->ELLIPSIS_TWO_DOTS:[C

    :goto_1
    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, p9

    move-object/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText([CII)F

    move-result v6

    .line 884
    .local v6, ellipsisWidth:F
    const/4 v5, 0x0

    .line 885
    .local v5, ellipsisStart:I
    const/4 v4, 0x0

    .line 886
    .local v4, ellipsisCount:I
    sub-int v10, p2, p1

    .line 889
    .local v10, len:I
    sget-object v22, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_7

    .line 890
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 891
    const/16 v18, 0x0

    .line 894
    .local v18, sum:F
    move v7, v10

    .local v7, i:I
    :goto_2
    if-ltz v7, :cond_1

    .line 896
    if-nez v7, :cond_4

    move/from16 v0, p1

    move/from16 v1, p4

    if-ne v0, v1, :cond_4

    .line 909
    :cond_1
    const/4 v5, 0x0

    .line 910
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v22

    const-string v23, "CscFeature_Framework_EnableEmoji"

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_5

    add-int v22, v7, p1

    sub-int v22, v22, p4

    aget v22, p3, v22

    const/16 v23, 0x0

    cmpl-float v22, v22, v23

    if-nez v22, :cond_5

    .line 912
    add-int/lit8 v4, v7, 0x1

    .line 1002
    .end local v7           #i:I
    .end local v18           #sum:F
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v23, v0

    mul-int v23, v23, p7

    add-int/lit8 v23, v23, 0x3

    aput v5, v22, v23

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v23, v0

    mul-int v23, v23, p7

    add-int/lit8 v23, v23, 0x4

    aput v4, v22, v23

    goto/16 :goto_0

    .line 881
    .end local v4           #ellipsisCount:I
    .end local v5           #ellipsisStart:I
    .end local v6           #ellipsisWidth:F
    .end local v10           #len:I
    :cond_3
    sget-object v22, Landroid/text/StaticLayout;->ELLIPSIS_NORMAL:[C

    goto :goto_1

    .line 900
    .restart local v4       #ellipsisCount:I
    .restart local v5       #ellipsisStart:I
    .restart local v6       #ellipsisWidth:F
    .restart local v7       #i:I
    .restart local v10       #len:I
    .restart local v18       #sum:F
    :cond_4
    add-int/lit8 v22, v7, -0x1

    add-int v22, v22, p1

    sub-int v22, v22, p4

    aget v21, p3, v22

    .line 902
    .local v21, w:F
    add-float v22, v21, v18

    add-float v22, v22, v6

    cmpl-float v22, v22, p5

    if-gtz v22, :cond_1

    .line 906
    add-float v18, v18, v21

    .line 894
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 914
    .end local v21           #w:F
    :cond_5
    move v4, v7

    goto :goto_3

    .line 917
    .end local v7           #i:I
    .end local v18           #sum:F
    :cond_6
    const-string v22, "StaticLayout"

    const/16 v23, 0x5

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 918
    const-string v22, "StaticLayout"

    const-string v23, "Start Ellipsis only supported with one line"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 921
    :cond_7
    sget-object v22, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_8

    sget-object v22, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_8

    sget-object v22, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_d

    .line 923
    :cond_8
    const/16 v18, 0x0

    .line 926
    .restart local v18       #sum:F
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_4
    if-ge v7, v10, :cond_9

    .line 927
    add-int v22, v7, p1

    sub-int v22, v22, p4

    aget v21, p3, v22

    .line 929
    .restart local v21       #w:F
    add-float v22, v21, v18

    add-float v22, v22, v6

    cmpl-float v22, v22, p5

    if-lez v22, :cond_b

    .line 936
    .end local v21           #w:F
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 937
    .local v12, mt:Landroid/text/MeasuredText;
    iget-object v0, v12, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v19, v0

    .line 938
    .local v19, tmpBuf:[C
    :goto_5
    if-lez v7, :cond_a

    if-ge v7, v10, :cond_a

    aget-char v22, v19, v7

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isArabicChar(C)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 939
    new-instance v17, Ljava/lang/String;

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v7}, Ljava/lang/String;-><init>([CII)V

    .line 940
    .local v17, s:Ljava/lang/String;
    move-object/from16 v0, p9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v20

    .line 941
    .local v20, tmpwid:F
    add-float v22, v20, v6

    cmpg-float v22, v22, p5

    if-gtz v22, :cond_c

    .line 947
    .end local v17           #s:Ljava/lang/String;
    .end local v20           #tmpwid:F
    :cond_a
    move v5, v7

    .line 948
    sub-int v4, v10, v7

    .line 949
    if-eqz p10, :cond_2

    if-nez v4, :cond_2

    if-lez v10, :cond_2

    .line 950
    add-int/lit8 v5, v10, -0x1

    .line 951
    const/4 v4, 0x1

    goto/16 :goto_3

    .line 933
    .end local v12           #mt:Landroid/text/MeasuredText;
    .end local v19           #tmpBuf:[C
    .restart local v21       #w:F
    :cond_b
    add-float v18, v18, v21

    .line 926
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 944
    .end local v21           #w:F
    .restart local v12       #mt:Landroid/text/MeasuredText;
    .restart local v17       #s:Ljava/lang/String;
    .restart local v19       #tmpBuf:[C
    .restart local v20       #tmpwid:F
    :cond_c
    add-int/lit8 v7, v7, -0x1

    .line 945
    goto :goto_5

    .line 955
    .end local v7           #i:I
    .end local v12           #mt:Landroid/text/MeasuredText;
    .end local v17           #s:Ljava/lang/String;
    .end local v18           #sum:F
    .end local v19           #tmpBuf:[C
    .end local v20           #tmpwid:F
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_14

    .line 956
    const/4 v11, 0x0

    .local v11, lsum:F
    const/16 v16, 0x0

    .line 957
    .local v16, rsum:F
    const/4 v9, 0x0

    .local v9, left:I
    move v14, v10

    .line 958
    .local v14, right:I
    move v15, v14

    .line 960
    .local v15, rightForZeroWidth:I
    sub-float v22, p5, v6

    const/high16 v23, 0x4000

    div-float v13, v22, v23

    .line 961
    .local v13, ravail:F
    move v14, v10

    :goto_6
    if-ltz v14, :cond_e

    .line 963
    if-nez v14, :cond_11

    move/from16 v0, p1

    move/from16 v1, p4

    if-ne v0, v1, :cond_11

    .line 978
    :cond_e
    if-eqz v14, :cond_f

    .line 979
    move v14, v15

    .line 982
    :cond_f
    sub-float v22, p5, v6

    sub-float v8, v22, v16

    .line 983
    .local v8, lavail:F
    const/4 v9, 0x0

    :goto_7
    if-ge v9, v14, :cond_10

    .line 984
    add-int v22, v9, p1

    sub-int v22, v22, p4

    aget v21, p3, v22

    .line 986
    .restart local v21       #w:F
    add-float v22, v21, v11

    cmpl-float v22, v22, v8

    if-lez v22, :cond_13

    .line 993
    .end local v21           #w:F
    :cond_10
    move v5, v9

    .line 994
    sub-int v4, v14, v9

    .line 995
    goto/16 :goto_3

    .line 967
    .end local v8           #lavail:F
    :cond_11
    add-int/lit8 v22, v14, -0x1

    add-int v22, v22, p1

    sub-int v22, v22, p4

    aget v21, p3, v22

    .line 969
    .restart local v21       #w:F
    add-float v22, v21, v16

    cmpl-float v22, v22, v13

    if-gtz v22, :cond_e

    .line 972
    const/16 v22, 0x0

    cmpl-float v22, v21, v22

    if-eqz v22, :cond_12

    .line 973
    add-int/lit8 v15, v14, -0x1

    .line 976
    :cond_12
    add-float v16, v16, v21

    .line 961
    add-int/lit8 v14, v14, -0x1

    goto :goto_6

    .line 990
    .restart local v8       #lavail:F
    :cond_13
    add-float v11, v11, v21

    .line 983
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 996
    .end local v8           #lavail:F
    .end local v9           #left:I
    .end local v11           #lsum:F
    .end local v13           #ravail:F
    .end local v14           #right:I
    .end local v15           #rightForZeroWidth:I
    .end local v16           #rsum:F
    .end local v21           #w:F
    :cond_14
    const-string v22, "StaticLayout"

    const/16 v23, 0x5

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 997
    const-string v22, "StaticLayout"

    const-string v23, "Middle Ellipsis only supported with one line"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method static callIsIdeographic(CZ)Z
    .locals 1
    .parameter "c"
    .parameter "includeNonStarters"

    .prologue
    invoke-static {p0, p1}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v0

    return v0
.end method

.method private static final isIdeographic(CZ)Z
    .locals 4
    .parameter "c"
    .parameter "includeNonStarters"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 572
    const/16 v2, 0x2e80

    if-lt p0, v2, :cond_1

    const/16 v2, 0x2fff

    if-gt p0, v2, :cond_1

    move p1, v0

    .line 737
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 575
    .restart local p1
    :cond_1
    const/16 v2, 0x3000

    if-ne p0, v2, :cond_2

    move p1, v0

    .line 576
    goto :goto_0

    .line 578
    :cond_2
    const/16 v2, 0x3040

    if-lt p0, v2, :cond_4

    const/16 v2, 0x309f

    if-gt p0, v2, :cond_4

    .line 579
    if-nez p1, :cond_3

    .line 580
    sparse-switch p0, :sswitch_data_0

    :cond_3
    move p1, v0

    .line 600
    goto :goto_0

    :sswitch_0
    move p1, v1

    .line 597
    goto :goto_0

    .line 602
    :cond_4
    const/16 v2, 0x30a0

    if-lt p0, v2, :cond_6

    const/16 v2, 0x30ff

    if-gt p0, v2, :cond_6

    .line 603
    if-nez p1, :cond_5

    .line 604
    sparse-switch p0, :sswitch_data_1

    :cond_5
    move p1, v0

    .line 625
    goto :goto_0

    :sswitch_1
    move p1, v1

    .line 622
    goto :goto_0

    .line 627
    :cond_6
    const/16 v2, 0x3400

    if-lt p0, v2, :cond_7

    const/16 v2, 0x4db5

    if-gt p0, v2, :cond_7

    move p1, v0

    .line 628
    goto :goto_0

    .line 630
    :cond_7
    const/16 v2, 0x4e00

    if-lt p0, v2, :cond_8

    const v2, 0x9fbb

    if-gt p0, v2, :cond_8

    move p1, v0

    .line 631
    goto :goto_0

    .line 633
    :cond_8
    const v2, 0xf900

    if-lt p0, v2, :cond_9

    const v2, 0xfad9

    if-gt p0, v2, :cond_9

    move p1, v0

    .line 634
    goto :goto_0

    .line 636
    :cond_9
    const v2, 0xa000

    if-lt p0, v2, :cond_a

    const v2, 0xa48f

    if-gt p0, v2, :cond_a

    move p1, v0

    .line 637
    goto :goto_0

    .line 639
    :cond_a
    const v2, 0xa490

    if-lt p0, v2, :cond_b

    const v2, 0xa4cf

    if-gt p0, v2, :cond_b

    move p1, v0

    .line 640
    goto :goto_0

    .line 642
    :cond_b
    const v2, 0xfe62

    if-lt p0, v2, :cond_c

    const v2, 0xfe66

    if-gt p0, v2, :cond_c

    move p1, v0

    .line 643
    goto :goto_0

    .line 645
    :cond_c
    const v2, 0xff10

    if-lt p0, v2, :cond_d

    const v2, 0xff19

    if-gt p0, v2, :cond_d

    move p1, v0

    .line 646
    goto :goto_0

    .line 650
    :cond_d
    sget-boolean v2, Landroid/text/StaticLayout;->isJapaneseLinebreak:Z

    if-eqz v2, :cond_15

    .line 651
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Framework_EnableEmoji"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 653
    const v2, 0xe63e

    if-lt p0, v2, :cond_e

    const v2, 0xe757

    if-gt p0, v2, :cond_e

    move p1, v0

    .line 654
    goto/16 :goto_0

    .line 657
    :cond_e
    const/16 v2, 0x3001

    if-lt p0, v2, :cond_10

    const/16 v2, 0x301f

    if-gt p0, v2, :cond_10

    .line 658
    if-nez p1, :cond_f

    .line 659
    packed-switch p0, :pswitch_data_0

    .line 672
    :cond_f
    :pswitch_0
    packed-switch p0, :pswitch_data_1

    :pswitch_1
    move p1, v0

    .line 681
    goto/16 :goto_0

    :pswitch_2
    move p1, v1

    .line 669
    goto/16 :goto_0

    :pswitch_3
    move p1, v1

    .line 679
    goto/16 :goto_0

    .line 683
    :cond_10
    const v2, 0xff01

    if-lt p0, v2, :cond_12

    const v2, 0xff9f

    if-gt p0, v2, :cond_12

    .line 684
    if-nez p1, :cond_11

    .line 685
    sparse-switch p0, :sswitch_data_2

    .line 705
    :cond_11
    sparse-switch p0, :sswitch_data_3

    move p1, v0

    .line 712
    goto/16 :goto_0

    :sswitch_2
    move p1, v1

    .line 702
    goto/16 :goto_0

    :sswitch_3
    move p1, v1

    .line 710
    goto/16 :goto_0

    .line 714
    :cond_12
    const/16 v2, 0x21

    if-lt p0, v2, :cond_14

    const/16 v2, 0x3f

    if-gt p0, v2, :cond_14

    .line 715
    if-nez p1, :cond_13

    .line 716
    sparse-switch p0, :sswitch_data_4

    :cond_13
    move p1, v0

    .line 727
    goto/16 :goto_0

    :sswitch_4
    move p1, v1

    .line 724
    goto/16 :goto_0

    .line 729
    :cond_14
    const/16 v0, 0x5d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x7d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x90

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb0

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2019

    if-eq p0, v0, :cond_0

    const/16 v0, 0x201d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2032

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2033

    if-eq p0, v0, :cond_0

    .line 733
    const/16 v0, 0x309b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x309c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x30fb

    if-eq p0, v0, :cond_0

    :cond_15
    move p1, v1

    .line 737
    goto/16 :goto_0

    .line 580
    :sswitch_data_0
    .sparse-switch
        0x3041 -> :sswitch_0
        0x3043 -> :sswitch_0
        0x3045 -> :sswitch_0
        0x3047 -> :sswitch_0
        0x3049 -> :sswitch_0
        0x3063 -> :sswitch_0
        0x3083 -> :sswitch_0
        0x3085 -> :sswitch_0
        0x3087 -> :sswitch_0
        0x308e -> :sswitch_0
        0x3095 -> :sswitch_0
        0x3096 -> :sswitch_0
        0x309b -> :sswitch_0
        0x309c -> :sswitch_0
        0x309d -> :sswitch_0
        0x309e -> :sswitch_0
    .end sparse-switch

    .line 604
    :sswitch_data_1
    .sparse-switch
        0x30a0 -> :sswitch_1
        0x30a1 -> :sswitch_1
        0x30a3 -> :sswitch_1
        0x30a5 -> :sswitch_1
        0x30a7 -> :sswitch_1
        0x30a9 -> :sswitch_1
        0x30c3 -> :sswitch_1
        0x30e3 -> :sswitch_1
        0x30e5 -> :sswitch_1
        0x30e7 -> :sswitch_1
        0x30ee -> :sswitch_1
        0x30f5 -> :sswitch_1
        0x30f6 -> :sswitch_1
        0x30fb -> :sswitch_1
        0x30fc -> :sswitch_1
        0x30fd -> :sswitch_1
        0x30fe -> :sswitch_1
    .end sparse-switch

    .line 659
    :pswitch_data_0
    .packed-switch 0x3001
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 672
    :pswitch_data_1
    .packed-switch 0x3008
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 685
    :sswitch_data_2
    .sparse-switch
        0xff01 -> :sswitch_2
        0xff09 -> :sswitch_2
        0xff0c -> :sswitch_2
        0xff0e -> :sswitch_2
        0xff1a -> :sswitch_2
        0xff1b -> :sswitch_2
        0xff1f -> :sswitch_2
        0xff3d -> :sswitch_2
        0xff5d -> :sswitch_2
        0xff61 -> :sswitch_2
        0xff63 -> :sswitch_2
        0xff64 -> :sswitch_2
        0xff65 -> :sswitch_2
        0xff70 -> :sswitch_2
        0xff9e -> :sswitch_2
        0xff9f -> :sswitch_2
    .end sparse-switch

    .line 705
    :sswitch_data_3
    .sparse-switch
        0xff08 -> :sswitch_3
        0xff3b -> :sswitch_3
        0xff5b -> :sswitch_3
        0xff62 -> :sswitch_3
    .end sparse-switch

    .line 716
    :sswitch_data_4
    .sparse-switch
        0x21 -> :sswitch_4
        0x29 -> :sswitch_4
        0x2c -> :sswitch_4
        0x2e -> :sswitch_4
        0x3a -> :sswitch_4
        0x3b -> :sswitch_4
        0x3f -> :sswitch_4
    .end sparse-switch
.end method

.method private out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I
    .locals 28
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "above"
    .parameter "below"
    .parameter "top"
    .parameter "bottom"
    .parameter "v"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "chooseHt"
    .parameter "chooseHtv"
    .parameter "fm"
    .parameter "hasTabOrEmoji"
    .parameter "needMultiply"
    .parameter "chdirs"
    .parameter "dir"
    .parameter "easy"
    .parameter "bufEnd"
    .parameter "includePad"
    .parameter "trackPad"
    .parameter "chs"
    .parameter "widths"
    .parameter "widthStart"
    .parameter "ellipsize"
    .parameter "ellipsisWidth"
    .parameter "textWidth"
    .parameter "paint"
    .parameter "moreChars"

    .prologue
    .line 751
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mLineCount:I

    move/from16 v22, v0

    .line 752
    .local v22, j:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v26, v22, v2

    .line 753
    .local v26, off:I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v27, v2, 0x1

    .line 754
    .local v27, want:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v24, v0

    .line 756
    .local v24, lines:[I
    move-object/from16 v0, v24

    array-length v2, v0

    move/from16 v0, v27

    if-lt v0, v2, :cond_0

    .line 757
    add-int/lit8 v2, v27, 0x1

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v25

    .line 758
    .local v25, nlen:I
    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 759
    .local v19, grow:[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v24

    array-length v4, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 760
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLines:[I

    .line 761
    move-object/from16 v24, v19

    .line 763
    move/from16 v0, v25

    new-array v0, v0, [Landroid/text/Layout$Directions;

    move-object/from16 v20, v0

    .line 764
    .local v20, grow2:[Landroid/text/Layout$Directions;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v5, v5

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 766
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 769
    .end local v19           #grow:[I
    .end local v20           #grow2:[Landroid/text/Layout$Directions;
    .end local v25           #nlen:I
    :cond_0
    if-eqz p11, :cond_3

    .line 770
    move/from16 v0, p4

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 771
    move/from16 v0, p5

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 772
    move/from16 v0, p6

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 773
    move/from16 v0, p7

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 775
    const/16 v21, 0x0

    .local v21, i:I
    :goto_0
    move-object/from16 v0, p11

    array-length v2, v0

    move/from16 v0, v21

    if-ge v0, v2, :cond_2

    .line 776
    aget-object v2, p11, v21

    instance-of v2, v2, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v2, :cond_1

    .line 777
    aget-object v2, p11, v21

    check-cast v2, Landroid/text/style/LineHeightSpan$WithDensity;

    aget v6, p12, v21

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    move-object/from16 v9, p28

    invoke-interface/range {v2 .. v9}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 775
    :goto_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 781
    :cond_1
    aget-object v2, p11, v21

    aget v6, p12, v21

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    invoke-interface/range {v2 .. v8}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_1

    .line 785
    :cond_2
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 p4, v0

    .line 786
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 p5, v0

    .line 787
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 p6, v0

    .line 788
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 p7, v0

    .line 791
    .end local v21           #i:I
    :cond_3
    if-nez v22, :cond_5

    .line 792
    if-eqz p21, :cond_4

    .line 793
    sub-int v2, p6, p4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mTopPadding:I

    .line 796
    :cond_4
    if-eqz p20, :cond_5

    .line 797
    move/from16 p4, p6

    .line 800
    :cond_5
    move/from16 v0, p3

    move/from16 v1, p19

    if-ne v0, v1, :cond_7

    .line 801
    if-eqz p21, :cond_6

    .line 802
    sub-int v2, p7, p5

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mBottomPadding:I

    .line 805
    :cond_6
    if-eqz p20, :cond_7

    .line 806
    move/from16 p5, p7

    .line 812
    :cond_7
    if-eqz p15, :cond_10

    .line 813
    sub-int v2, p5, p4

    int-to-float v2, v2

    const/high16 v3, 0x3f80

    sub-float v3, p9, v3

    mul-float/2addr v2, v3

    add-float v2, v2, p10

    float-to-double v15, v2

    .line 814
    .local v15, ex:D
    const-wide/16 v2, 0x0

    cmpl-double v2, v15, v2

    if-ltz v2, :cond_f

    .line 815
    const-wide/high16 v2, 0x3fe0

    add-double/2addr v2, v15

    double-to-int v0, v2

    move/from16 v17, v0

    .line 823
    .end local v15           #ex:D
    .local v17, extra:I
    :goto_2
    add-int/lit8 v2, v26, 0x0

    aput p2, v24, v2

    .line 824
    add-int/lit8 v2, v26, 0x1

    aput p8, v24, v2

    .line 825
    add-int/lit8 v2, v26, 0x2

    add-int v3, p5, v17

    aput v3, v24, v2

    .line 827
    sub-int v2, p5, p4

    add-int v2, v2, v17

    add-int p8, p8, v2

    .line 828
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v2, v2, 0x0

    aput p3, v24, v2

    .line 829
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v2, v2, 0x1

    aput p8, v24, v2

    .line 831
    if-eqz p14, :cond_8

    .line 832
    add-int/lit8 v2, v26, 0x0

    aget v3, v24, v2

    const/high16 v4, 0x2000

    or-int/2addr v3, v4

    aput v3, v24, v2

    .line 834
    :cond_8
    add-int/lit8 v2, v26, 0x0

    aget v3, v24, v2

    shl-int/lit8 v4, p17, 0x1e

    or-int/2addr v3, v4

    aput v3, v24, v2

    .line 835
    sget-object v23, Landroid/text/StaticLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 839
    .local v23, linedirs:Landroid/text/Layout$Directions;
    if-eqz p18, :cond_11

    .line 840
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aput-object v23, v2, v22

    .line 846
    :goto_3
    if-eqz p25, :cond_e

    .line 849
    if-nez v22, :cond_12

    const/16 v18, 0x1

    .line 850
    .local v18, firstLine:Z
    :goto_4
    add-int/lit8 v2, v22, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_13

    const/4 v13, 0x1

    .line 851
    .local v13, currentLineIsTheLastVisibleOne:Z
    :goto_5
    if-eqz p29, :cond_14

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_14

    const/4 v12, 0x1

    .line 853
    .local v12, forceEllipsis:Z
    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    if-nez p29, :cond_a

    :cond_9
    if-eqz v18, :cond_b

    if-nez p29, :cond_b

    :cond_a
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_d

    :cond_b
    if-nez v18, :cond_15

    if-nez v13, :cond_c

    if-nez p29, :cond_15

    :cond_c
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_15

    :cond_d
    const/4 v14, 0x1

    .line 858
    .local v14, doEllipsis:Z
    :goto_7
    if-eqz v14, :cond_e

    move-object/from16 v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p23

    move/from16 v6, p24

    move/from16 v7, p26

    move-object/from16 v8, p25

    move/from16 v9, v22

    move/from16 v10, p27

    move-object/from16 v11, p28

    .line 859
    invoke-direct/range {v2 .. v12}, Landroid/text/StaticLayout;->calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V

    .line 865
    .end local v12           #forceEllipsis:Z
    .end local v13           #currentLineIsTheLastVisibleOne:Z
    .end local v14           #doEllipsis:Z
    .end local v18           #firstLine:Z
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 866
    return p8

    .line 817
    .end local v17           #extra:I
    .end local v23           #linedirs:Landroid/text/Layout$Directions;
    .restart local v15       #ex:D
    :cond_f
    neg-double v2, v15

    const-wide/high16 v4, 0x3fe0

    add-double/2addr v2, v4

    double-to-int v2, v2

    neg-int v0, v2

    move/from16 v17, v0

    .restart local v17       #extra:I
    goto/16 :goto_2

    .line 820
    .end local v15           #ex:D
    .end local v17           #extra:I
    :cond_10
    const/16 v17, 0x0

    .restart local v17       #extra:I
    goto/16 :goto_2

    .line 842
    .restart local v23       #linedirs:Landroid/text/Layout$Directions;
    :cond_11
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    sub-int v4, p2, p24

    sub-int v6, p2, p24

    sub-int v7, p3, p2

    move/from16 v2, p17

    move-object/from16 v3, p16

    move-object/from16 v5, p22

    invoke-static/range {v2 .. v7}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v2

    aput-object v2, v8, v22

    goto/16 :goto_3

    .line 849
    :cond_12
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 850
    .restart local v18       #firstLine:Z
    :cond_13
    const/4 v13, 0x0

    goto :goto_5

    .line 851
    .restart local v13       #currentLineIsTheLastVisibleOne:Z
    :cond_14
    const/4 v12, 0x0

    goto :goto_6

    .line 853
    .restart local v12       #forceEllipsis:Z
    :cond_15
    const/4 v14, 0x0

    goto :goto_7
.end method


# virtual methods
.method finish()V
    .locals 1

    .prologue
    .line 1114
    iget-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    invoke-static {v0}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 1115
    return-void
.end method

.method generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V
    .locals 135
    .parameter "source"
    .parameter "bufStart"
    .parameter "bufEnd"
    .parameter "paint"
    .parameter "outerWidth"
    .parameter "textDir"
    .parameter "spacingmult"
    .parameter "spacingadd"
    .parameter "includepad"
    .parameter "trackpad"
    .parameter "ellipsizedWidth"
    .parameter "ellipsize"

    .prologue
    .line 171
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 173
    const/4 v15, 0x0

    .line 174
    .local v15, v:I
    const/high16 v5, 0x3f80

    cmpl-float v5, p7, v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    cmpl-float v5, p8, v5

    if-eqz v5, :cond_5

    :cond_0
    const/16 v22, 0x1

    .line 176
    .local v22, needMultiply:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v20, v0

    .line 177
    .local v20, fm:Landroid/graphics/Paint$FontMetricsInt;
    const/16 v19, 0x0

    .line 179
    .local v19, chooseHtv:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    move-object/from16 v116, v0

    .line 181
    .local v116, measured:Landroid/text/MeasuredText;
    const/16 v129, 0x0

    .line 182
    .local v129, spanned:Landroid/text/Spanned;
    move-object/from16 v0, p1

    instance-of v5, v0, Landroid/text/Spanned;

    if-eqz v5, :cond_1

    move-object/from16 v129, p1

    .line 183
    check-cast v129, Landroid/text/Spanned;

    .line 185
    :cond_1
    const/16 v82, 0x1

    .line 188
    .local v82, DEFAULT_DIR:I
    const-string v5, "JPN"

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    sget-object v7, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v5, v7}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    sget-object v7, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v5, v7}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 190
    :cond_3
    const/4 v5, 0x1

    sput-boolean v5, Landroid/text/StaticLayout;->isJapaneseLinebreak:Z

    .line 196
    :goto_1
    move/from16 v31, p2

    .local v31, paraStart:I
    :goto_2
    move/from16 v0, v31

    move/from16 v1, p3

    if-gt v0, v1, :cond_3c

    .line 197
    const/16 v5, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v31

    move/from16 v2, p3

    invoke-static {v0, v5, v1, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v40

    .line 198
    .local v40, paraEnd:I
    if-gez v40, :cond_7

    .line 199
    move/from16 v40, p3

    .line 203
    :goto_3
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v101, v5, 0x1

    .line 204
    .local v101, firstWidthLineLimit:I
    move/from16 v100, p5

    .line 205
    .local v100, firstWidth:I
    move/from16 v124, p5

    .line 207
    .local v124, restWidth:I
    const/16 v18, 0x0

    .line 209
    .local v18, chooseHt:[Landroid/text/style/LineHeightSpan;
    if-eqz v129, :cond_c

    .line 210
    const-class v5, Landroid/text/style/LeadingMarginSpan;

    move-object/from16 v0, v129

    move/from16 v1, v31

    move/from16 v2, v40

    invoke-static {v0, v1, v2, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v125

    check-cast v125, [Landroid/text/style/LeadingMarginSpan;

    .line 212
    .local v125, sp:[Landroid/text/style/LeadingMarginSpan;
    const/16 v109, 0x0

    .local v109, i:I
    :goto_4
    move-object/from16 v0, v125

    array-length v5, v0

    move/from16 v0, v109

    if-ge v0, v5, :cond_8

    .line 213
    aget-object v113, v125, v109

    .line 214
    .local v113, lms:Landroid/text/style/LeadingMarginSpan;
    aget-object v5, v125, v109

    const/4 v7, 0x1

    invoke-interface {v5, v7}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v100, v100, v5

    .line 215
    aget-object v5, v125, v109

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v124, v124, v5

    .line 221
    move-object/from16 v0, v113

    instance-of v5, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v5, :cond_4

    move-object/from16 v114, v113

    .line 222
    check-cast v114, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .line 223
    .local v114, lms2:Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    move-object/from16 v0, v129

    move-object/from16 v1, v114

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v115

    .line 224
    .local v115, lmsFirstLine:I
    invoke-interface/range {v114 .. v114}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v5

    add-int v101, v115, v5

    .line 212
    .end local v114           #lms2:Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    .end local v115           #lmsFirstLine:I
    :cond_4
    add-int/lit8 v109, v109, 0x1

    goto :goto_4

    .line 174
    .end local v18           #chooseHt:[Landroid/text/style/LineHeightSpan;
    .end local v19           #chooseHtv:[I
    .end local v20           #fm:Landroid/graphics/Paint$FontMetricsInt;
    .end local v22           #needMultiply:Z
    .end local v31           #paraStart:I
    .end local v40           #paraEnd:I
    .end local v82           #DEFAULT_DIR:I
    .end local v100           #firstWidth:I
    .end local v101           #firstWidthLineLimit:I
    .end local v109           #i:I
    .end local v113           #lms:Landroid/text/style/LeadingMarginSpan;
    .end local v116           #measured:Landroid/text/MeasuredText;
    .end local v124           #restWidth:I
    .end local v125           #sp:[Landroid/text/style/LeadingMarginSpan;
    .end local v129           #spanned:Landroid/text/Spanned;
    :cond_5
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 192
    .restart local v19       #chooseHtv:[I
    .restart local v20       #fm:Landroid/graphics/Paint$FontMetricsInt;
    .restart local v22       #needMultiply:Z
    .restart local v82       #DEFAULT_DIR:I
    .restart local v116       #measured:Landroid/text/MeasuredText;
    .restart local v129       #spanned:Landroid/text/Spanned;
    :cond_6
    const/4 v5, 0x0

    sput-boolean v5, Landroid/text/StaticLayout;->isJapaneseLinebreak:Z

    goto :goto_1

    .line 201
    .restart local v31       #paraStart:I
    .restart local v40       #paraEnd:I
    :cond_7
    add-int/lit8 v40, v40, 0x1

    goto :goto_3

    .line 228
    .restart local v18       #chooseHt:[Landroid/text/style/LineHeightSpan;
    .restart local v100       #firstWidth:I
    .restart local v101       #firstWidthLineLimit:I
    .restart local v109       #i:I
    .restart local v124       #restWidth:I
    .restart local v125       #sp:[Landroid/text/style/LeadingMarginSpan;
    :cond_8
    const-class v5, Landroid/text/style/LineHeightSpan;

    move-object/from16 v0, v129

    move/from16 v1, v31

    move/from16 v2, v40

    invoke-static {v0, v1, v2, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v18

    .end local v18           #chooseHt:[Landroid/text/style/LineHeightSpan;
    check-cast v18, [Landroid/text/style/LineHeightSpan;

    .line 230
    .restart local v18       #chooseHt:[Landroid/text/style/LineHeightSpan;
    move-object/from16 v0, v18

    array-length v5, v0

    if-eqz v5, :cond_c

    .line 231
    if-eqz v19, :cond_9

    move-object/from16 v0, v19

    array-length v5, v0

    move-object/from16 v0, v18

    array-length v7, v0

    if-ge v5, v7, :cond_a

    .line 233
    :cond_9
    move-object/from16 v0, v18

    array-length v5, v0

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v5

    new-array v0, v5, [I

    move-object/from16 v19, v0

    .line 237
    :cond_a
    const/16 v109, 0x0

    :goto_5
    move-object/from16 v0, v18

    array-length v5, v0

    move/from16 v0, v109

    if-ge v0, v5, :cond_c

    .line 238
    aget-object v5, v18, v109

    move-object/from16 v0, v129

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v117

    .line 240
    .local v117, o:I
    move/from16 v0, v117

    move/from16 v1, v31

    if-ge v0, v1, :cond_b

    .line 244
    move-object/from16 v0, p0

    move/from16 v1, v117

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v5

    aput v5, v19, v109

    .line 237
    :goto_6
    add-int/lit8 v109, v109, 0x1

    goto :goto_5

    .line 248
    :cond_b
    aput v15, v19, v109

    goto :goto_6

    .line 254
    .end local v109           #i:I
    .end local v117           #o:I
    .end local v125           #sp:[Landroid/text/style/LeadingMarginSpan;
    :cond_c
    move-object/from16 v0, v116

    move-object/from16 v1, p1

    move/from16 v2, v31

    move/from16 v3, v40

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 255
    move-object/from16 v0, v116

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v29, v0

    .line 256
    .local v29, chs:[C
    move-object/from16 v0, v116

    iget-object v0, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v30, v0

    .line 257
    .local v30, widths:[F
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v7, "CscFeature_Framework_EnableEmoji"

    invoke-virtual {v5, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 259
    sub-int v5, v40, v31

    mul-int/lit8 v5, v5, 0x2

    move-object/from16 v0, v30

    array-length v7, v0

    if-le v5, v7, :cond_d

    .line 260
    sub-int v5, v40, v31

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v5

    new-array v0, v5, [F

    move-object/from16 v30, v0

    .line 261
    move-object/from16 v0, v30

    move-object/from16 v1, v116

    iput-object v0, v1, Landroid/text/MeasuredText;->mWidths:[F

    .line 264
    :cond_d
    move-object/from16 v0, v116

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v23, v0

    .line 265
    .local v23, chdirs:[B
    move-object/from16 v0, v116

    iget v0, v0, Landroid/text/MeasuredText;->mDir:I

    move/from16 v24, v0

    .line 266
    .local v24, dir:I
    move-object/from16 v0, v116

    iget-boolean v0, v0, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v25, v0

    .line 268
    .local v25, easy:Z
    move/from16 v134, v100

    .line 270
    .local v134, width:I
    const/16 v64, 0x0

    .line 272
    .local v64, w:F
    move/from16 v39, v31

    .line 276
    .local v39, here:I
    move/from16 v118, v31

    .line 277
    .local v118, ok:I
    move/from16 v123, v64

    .line 278
    .local v123, okWidth:F
    const/16 v119, 0x0

    .local v119, okAscent:I
    const/16 v121, 0x0

    .local v121, okDescent:I
    const/16 v122, 0x0

    .local v122, okTop:I
    const/16 v120, 0x0

    .line 282
    .local v120, okBottom:I
    move/from16 v102, v31

    .line 283
    .local v102, fit:I
    move/from16 v103, v64

    .line 284
    .local v103, fitWidth:F
    const/16 v41, 0x0

    .local v41, fitAscent:I
    const/16 v42, 0x0

    .local v42, fitDescent:I
    const/16 v43, 0x0

    .local v43, fitTop:I
    const/16 v44, 0x0

    .line 286
    .local v44, fitBottom:I
    const/16 v21, 0x0

    .line 287
    .local v21, hasTabOrEmoji:Z
    const/16 v108, 0x0

    .line 288
    .local v108, hasTab:Z
    const/16 v131, 0x0

    .line 290
    .local v131, tabStops:Landroid/text/Layout$TabStops;
    move/from16 v128, v31

    .local v128, spanStart:I
    :goto_7
    move/from16 v0, v128

    move/from16 v1, v40

    if-ge v0, v1, :cond_39

    .line 292
    if-nez v129, :cond_1d

    .line 293
    move/from16 v126, v40

    .line 294
    .local v126, spanEnd:I
    sub-int v127, v126, v128

    .line 295
    .local v127, spanLen:I
    move-object/from16 v0, v116

    move-object/from16 v1, p4

    move/from16 v2, v127

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    .line 306
    :goto_8
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v107, v0

    .line 307
    .local v107, fmTop:I
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v105, v0

    .line 308
    .local v105, fmBottom:I
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v104, v0

    .line 309
    .local v104, fmAscent:I
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v106, v0

    .line 310
    .local v106, fmDescent:I
    const/16 v95, 0x0

    .line 312
    .local v95, bZerowithspace:Z
    move/from16 v112, v128

    .local v112, j:I
    :goto_9
    move/from16 v0, v112

    move/from16 v1, v126

    if-ge v0, v1, :cond_34

    .line 313
    sub-int v5, v112, v31

    aget-char v97, v29, v5

    .line 315
    .local v97, c:C
    const/16 v5, 0xa

    move/from16 v0, v97

    if-ne v0, v5, :cond_1e

    .line 392
    :goto_a
    const/16 v5, 0x20

    move/from16 v0, v97

    if-eq v0, v5, :cond_e

    const/16 v5, 0x9

    move/from16 v0, v97

    if-eq v0, v5, :cond_e

    const/16 v5, 0x200b

    move/from16 v0, v97

    if-ne v0, v5, :cond_2b

    :cond_e
    const/16 v111, 0x1

    .line 394
    .local v111, isSpaceOrTab:Z
    :goto_b
    move/from16 v0, v134

    int-to-float v5, v0

    cmpg-float v5, v64, v5

    if-lez v5, :cond_f

    if-eqz v111, :cond_32

    .line 395
    :cond_f
    move/from16 v103, v64

    .line 396
    add-int/lit8 v102, v112, 0x1

    .line 398
    move/from16 v0, v107

    move/from16 v1, v43

    if-ge v0, v1, :cond_10

    .line 399
    move/from16 v43, v107

    .line 400
    :cond_10
    move/from16 v0, v104

    move/from16 v1, v41

    if-ge v0, v1, :cond_11

    .line 401
    move/from16 v41, v104

    .line 402
    :cond_11
    move/from16 v0, v106

    move/from16 v1, v42

    if-le v0, v1, :cond_12

    .line 403
    move/from16 v42, v106

    .line 404
    :cond_12
    move/from16 v0, v105

    move/from16 v1, v44

    if-le v0, v1, :cond_13

    .line 405
    move/from16 v44, v105

    .line 408
    :cond_13
    const/16 v5, 0x200b

    move/from16 v0, v97

    if-ne v0, v5, :cond_14

    .line 409
    const/16 v95, 0x1

    .line 412
    :cond_14
    const/16 v110, 0x0

    .line 415
    .local v110, isLineBreak:Z
    sget-boolean v5, Landroid/text/StaticLayout;->isJapaneseLinebreak:Z

    if-eqz v5, :cond_2d

    .line 416
    if-nez v111, :cond_18

    const/16 v5, 0x2f

    move/from16 v0, v97

    if-eq v0, v5, :cond_15

    const/16 v5, 0x2d

    move/from16 v0, v97

    if-ne v0, v5, :cond_16

    :cond_15
    add-int/lit8 v5, v112, 0x1

    move/from16 v0, v126

    if-ge v5, v0, :cond_18

    add-int/lit8 v5, v112, 0x1

    sub-int v5, v5, v31

    aget-char v5, v29, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_18

    :cond_16
    if-nez v95, :cond_17

    const/16 v5, 0x2e80

    move/from16 v0, v97

    if-lt v0, v5, :cond_17

    const/4 v5, 0x1

    move/from16 v0, v97

    invoke-static {v0, v5}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_17

    add-int/lit8 v5, v112, 0x1

    move/from16 v0, v126

    if-ge v5, v0, :cond_17

    add-int/lit8 v5, v112, 0x1

    sub-int v5, v5, v31

    aget-char v5, v29, v5

    const/4 v7, 0x0

    invoke-static {v5, v7}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-nez v5, :cond_18

    :cond_17
    if-nez v95, :cond_2c

    const/16 v5, 0x2e80

    move/from16 v0, v97

    if-lt v0, v5, :cond_2c

    const/4 v5, 0x1

    move/from16 v0, v97

    invoke-static {v0, v5}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_2c

    add-int/lit8 v5, v112, 0x1

    move/from16 v0, v126

    if-ge v5, v0, :cond_2c

    add-int/lit8 v5, v112, 0x1

    sub-int v5, v5, v31

    aget-char v5, v29, v5

    const/4 v7, 0x1

    invoke-static {v5, v7}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-nez v5, :cond_2c

    :cond_18
    const/16 v110, 0x1

    .line 437
    :goto_c
    if-eqz v110, :cond_1c

    .line 438
    move/from16 v123, v64

    .line 439
    add-int/lit8 v118, v112, 0x1

    .line 441
    move/from16 v0, v43

    move/from16 v1, v122

    if-ge v0, v1, :cond_19

    .line 442
    move/from16 v122, v43

    .line 443
    :cond_19
    move/from16 v0, v41

    move/from16 v1, v119

    if-ge v0, v1, :cond_1a

    .line 444
    move/from16 v119, v41

    .line 445
    :cond_1a
    move/from16 v0, v42

    move/from16 v1, v121

    if-le v0, v1, :cond_1b

    .line 446
    move/from16 v121, v42

    .line 447
    :cond_1b
    move/from16 v0, v44

    move/from16 v1, v120

    if-le v0, v1, :cond_1c

    .line 448
    move/from16 v120, v44

    .line 312
    .end local v110           #isLineBreak:Z
    :cond_1c
    add-int/lit8 v112, v112, 0x1

    goto/16 :goto_9

    .line 297
    .end local v95           #bZerowithspace:Z
    .end local v97           #c:C
    .end local v104           #fmAscent:I
    .end local v105           #fmBottom:I
    .end local v106           #fmDescent:I
    .end local v107           #fmTop:I
    .end local v111           #isSpaceOrTab:Z
    .end local v112           #j:I
    .end local v126           #spanEnd:I
    .end local v127           #spanLen:I
    :cond_1d
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v129

    move/from16 v1, v128

    move/from16 v2, v40

    invoke-interface {v0, v1, v2, v5}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v126

    .line 299
    .restart local v126       #spanEnd:I
    sub-int v127, v126, v128

    .line 300
    .restart local v127       #spanLen:I
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v129

    move/from16 v1, v128

    move/from16 v2, v126

    invoke-interface {v0, v1, v2, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v130

    check-cast v130, [Landroid/text/style/MetricAffectingSpan;

    .line 302
    .local v130, spans:[Landroid/text/style/MetricAffectingSpan;
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v130

    move-object/from16 v1, v129

    invoke-static {v0, v1, v5}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v130

    .end local v130           #spans:[Landroid/text/style/MetricAffectingSpan;
    check-cast v130, [Landroid/text/style/MetricAffectingSpan;

    .line 303
    .restart local v130       #spans:[Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v116

    move-object/from16 v1, p4

    move-object/from16 v2, v130

    move/from16 v3, v127

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F

    goto/16 :goto_8

    .line 317
    .end local v130           #spans:[Landroid/text/style/MetricAffectingSpan;
    .restart local v95       #bZerowithspace:Z
    .restart local v97       #c:C
    .restart local v104       #fmAscent:I
    .restart local v105       #fmBottom:I
    .restart local v106       #fmDescent:I
    .restart local v107       #fmTop:I
    .restart local v112       #j:I
    :cond_1e
    const/16 v5, 0x9

    move/from16 v0, v97

    if-ne v0, v5, :cond_21

    .line 318
    if-nez v108, :cond_1f

    .line 319
    const/16 v108, 0x1

    .line 320
    const/16 v21, 0x1

    .line 321
    if-eqz v129, :cond_1f

    .line 323
    const-class v5, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v129

    move/from16 v1, v31

    move/from16 v2, v40

    invoke-static {v0, v1, v2, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v130

    check-cast v130, [Landroid/text/style/TabStopSpan;

    .line 325
    .local v130, spans:[Landroid/text/style/TabStopSpan;
    move-object/from16 v0, v130

    array-length v5, v0

    if-lez v5, :cond_1f

    .line 326
    new-instance v131, Landroid/text/Layout$TabStops;

    .end local v131           #tabStops:Landroid/text/Layout$TabStops;
    const/16 v5, 0x14

    move-object/from16 v0, v131

    move-object/from16 v1, v130

    invoke-direct {v0, v5, v1}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 330
    .end local v130           #spans:[Landroid/text/style/TabStopSpan;
    .restart local v131       #tabStops:Landroid/text/Layout$TabStops;
    :cond_1f
    if-eqz v131, :cond_20

    .line 331
    move-object/from16 v0, v131

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/text/Layout$TabStops;->nextTab(F)F

    move-result v64

    goto/16 :goto_a

    .line 333
    :cond_20
    const/16 v5, 0x14

    move/from16 v0, v64

    invoke-static {v0, v5}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    move-result v64

    goto/16 :goto_a

    .line 335
    :cond_21
    const v5, 0xd800

    move/from16 v0, v97

    if-lt v0, v5, :cond_27

    const v5, 0xdfff

    move/from16 v0, v97

    if-gt v0, v5, :cond_27

    add-int/lit8 v5, v112, 0x1

    move/from16 v0, v126

    if-ge v5, v0, :cond_27

    .line 337
    sub-int v5, v112, v31

    move-object/from16 v0, v29

    invoke-static {v0, v5}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v98

    .line 339
    .local v98, emoji:I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v7, "CscFeature_Framework_EnableEmoji"

    invoke-virtual {v5, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    const v5, 0xdbb8

    move/from16 v0, v97

    if-lt v0, v5, :cond_22

    const v5, 0xdbbb

    move/from16 v0, v97

    if-gt v0, v5, :cond_22

    .line 342
    const/16 v99, 0x0

    .line 343
    .local v99, emojiWidth:F
    const/4 v5, 0x1

    new-array v6, v5, [C

    .line 344
    .local v6, tmpChar:[C
    const/4 v5, 0x0

    const v7, 0xe757

    aput-char v7, v6, v5

    .line 345
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v5, p4

    invoke-virtual/range {v5 .. v13}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIII[FI)F

    move-result v99

    .line 346
    add-float v64, v64, v99

    .line 347
    sub-int v5, v112, v31

    sub-int v7, v40, v31

    add-int/2addr v5, v7

    aput v99, v30, v5

    .line 348
    sub-int v5, v112, v31

    sub-int v7, v40, v31

    add-int/2addr v5, v7

    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x0

    aput v7, v30, v5

    .line 349
    const/16 v21, 0x1

    .line 350
    add-int/lit8 v112, v112, 0x1

    .line 351
    goto/16 :goto_a

    .line 352
    .end local v6           #tmpChar:[C
    .end local v99           #emojiWidth:F
    :cond_22
    sget v5, Landroid/text/StaticLayout;->MIN_EMOJI:I

    move/from16 v0, v98

    if-lt v0, v5, :cond_26

    sget v5, Landroid/text/StaticLayout;->MAX_EMOJI:I

    move/from16 v0, v98

    if-gt v0, v5, :cond_26

    .line 353
    sget-object v5, Landroid/text/StaticLayout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    move/from16 v0, v98

    invoke-virtual {v5, v0}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v96

    .line 355
    .local v96, bm:Landroid/graphics/Bitmap;
    if-eqz v96, :cond_25

    .line 358
    if-nez v129, :cond_23

    .line 359
    move-object/from16 v132, p4

    .line 364
    .local v132, whichPaint:Landroid/graphics/Paint;
    :goto_d
    invoke-virtual/range {v96 .. v96}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v132 .. v132}, Landroid/graphics/Paint;->ascent()F

    move-result v7

    neg-float v7, v7

    mul-float/2addr v5, v7

    invoke-virtual/range {v96 .. v96}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v133, v5, v7

    .line 366
    .local v133, wid:F
    const/16 v21, 0x1

    .line 367
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v7, "CscFeature_Framework_EnableEmoji"

    invoke-virtual {v5, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 369
    const v5, 0x400ab021

    mul-float v5, v5, v133

    add-float v64, v64, v5

    .line 370
    sub-int v5, v112, v31

    sub-int v7, v40, v31

    add-int/2addr v5, v7

    const v7, 0x400ab021

    mul-float v7, v7, v133

    aput v7, v30, v5

    .line 371
    sub-int v5, v112, v31

    sub-int v7, v40, v31

    add-int/2addr v5, v7

    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x0

    aput v7, v30, v5

    .line 375
    :goto_e
    add-int/lit8 v112, v112, 0x1

    .line 376
    goto/16 :goto_a

    .line 361
    .end local v132           #whichPaint:Landroid/graphics/Paint;
    .end local v133           #wid:F
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v132, v0

    .restart local v132       #whichPaint:Landroid/graphics/Paint;
    goto :goto_d

    .line 373
    .restart local v133       #wid:F
    :cond_24
    add-float v64, v64, v133

    goto :goto_e

    .line 377
    .end local v132           #whichPaint:Landroid/graphics/Paint;
    .end local v133           #wid:F
    :cond_25
    sub-int v5, v112, v31

    aget v5, v30, v5

    add-float v64, v64, v5

    goto/16 :goto_a

    .line 380
    .end local v96           #bm:Landroid/graphics/Bitmap;
    :cond_26
    sub-int v5, v112, v31

    aget v5, v30, v5

    add-float v64, v64, v5

    goto/16 :goto_a

    .line 383
    .end local v98           #emoji:I
    :cond_27
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v7, "CscFeature_Framework_EnableEmoji"

    invoke-virtual {v5, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    const v5, 0xe63e

    move/from16 v0, v97

    if-lt v0, v5, :cond_28

    const v5, 0xe6ba

    move/from16 v0, v97

    if-le v0, v5, :cond_29

    :cond_28
    const v5, 0xe70c

    move/from16 v0, v97

    if-lt v0, v5, :cond_2a

    const v5, 0xe757

    move/from16 v0, v97

    if-gt v0, v5, :cond_2a

    .line 386
    :cond_29
    const/16 v21, 0x1

    .line 387
    sub-int v5, v112, v31

    aget v5, v30, v5

    add-float v64, v64, v5

    goto/16 :goto_a

    .line 389
    :cond_2a
    sub-int v5, v112, v31

    aget v5, v30, v5

    add-float v64, v64, v5

    goto/16 :goto_a

    .line 392
    :cond_2b
    const/16 v111, 0x0

    goto/16 :goto_b

    .line 416
    .restart local v110       #isLineBreak:Z
    .restart local v111       #isSpaceOrTab:Z
    :cond_2c
    const/16 v110, 0x0

    goto/16 :goto_c

    .line 427
    :cond_2d
    if-nez v111, :cond_30

    const/16 v5, 0x2f

    move/from16 v0, v97

    if-eq v0, v5, :cond_2e

    const/16 v5, 0x2d

    move/from16 v0, v97

    if-ne v0, v5, :cond_2f

    :cond_2e
    add-int/lit8 v5, v112, 0x1

    move/from16 v0, v126

    if-ge v5, v0, :cond_30

    add-int/lit8 v5, v112, 0x1

    sub-int v5, v5, v31

    aget-char v5, v29, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_30

    :cond_2f
    const/16 v5, 0x2e80

    move/from16 v0, v97

    if-lt v0, v5, :cond_31

    const/4 v5, 0x1

    move/from16 v0, v97

    invoke-static {v0, v5}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_31

    add-int/lit8 v5, v112, 0x1

    move/from16 v0, v126

    if-ge v5, v0, :cond_31

    add-int/lit8 v5, v112, 0x1

    sub-int v5, v5, v31

    aget-char v5, v29, v5

    const/4 v7, 0x0

    invoke-static {v5, v7}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_31

    :cond_30
    const/16 v110, 0x1

    :goto_f
    goto/16 :goto_c

    :cond_31
    const/16 v110, 0x0

    goto :goto_f

    .line 451
    .end local v110           #isLineBreak:Z
    :cond_32
    add-int/lit8 v5, v112, 0x1

    move/from16 v0, v126

    if-gt v5, v0, :cond_35

    const/16 v36, 0x1

    .line 456
    .local v36, moreChars:Z
    :goto_10
    move/from16 v0, v118

    move/from16 v1, v39

    if-eq v0, v1, :cond_36

    .line 457
    move/from16 v10, v118

    .line 458
    .local v10, endPos:I
    move/from16 v11, v119

    .line 459
    .local v11, above:I
    move/from16 v12, v121

    .line 460
    .local v12, below:I
    move/from16 v13, v122

    .line 461
    .local v13, top:I
    move/from16 v14, v120

    .line 462
    .local v14, bottom:I
    move/from16 v34, v123

    .local v34, currentTextWidth:F
    :goto_11
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, v39

    move/from16 v16, p7

    move/from16 v17, p8

    move/from16 v26, p3

    move/from16 v27, p9

    move/from16 v28, p10

    move-object/from16 v32, p12

    move/from16 v33, p11

    move-object/from16 v35, p4

    .line 479
    invoke-direct/range {v7 .. v36}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v15

    .line 486
    move/from16 v39, v10

    .line 487
    add-int/lit8 v112, v39, -0x1

    .line 488
    move/from16 v102, v39

    move/from16 v118, v39

    .line 489
    const/16 v64, 0x0

    .line 490
    const/16 v44, 0x0

    move/from16 v43, v44

    move/from16 v42, v44

    move/from16 v41, v44

    .line 491
    const/16 v120, 0x0

    move/from16 v122, v120

    move/from16 v121, v120

    move/from16 v119, v120

    .line 493
    add-int/lit8 v101, v101, -0x1

    if-gtz v101, :cond_33

    .line 494
    move/from16 v134, v124

    .line 497
    :cond_33
    move/from16 v0, v39

    move/from16 v1, v128

    if-ge v0, v1, :cond_38

    .line 500
    move-object/from16 v0, v116

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/text/MeasuredText;->setPos(I)V

    .line 501
    move/from16 v126, v39

    .line 290
    .end local v10           #endPos:I
    .end local v11           #above:I
    .end local v12           #below:I
    .end local v13           #top:I
    .end local v14           #bottom:I
    .end local v34           #currentTextWidth:F
    .end local v36           #moreChars:Z
    .end local v97           #c:C
    .end local v111           #isSpaceOrTab:Z
    :cond_34
    :goto_12
    move/from16 v128, v126

    goto/16 :goto_7

    .line 451
    .restart local v97       #c:C
    .restart local v111       #isSpaceOrTab:Z
    :cond_35
    const/16 v36, 0x0

    goto :goto_10

    .line 463
    .restart local v36       #moreChars:Z
    :cond_36
    move/from16 v0, v102

    move/from16 v1, v39

    if-eq v0, v1, :cond_37

    .line 464
    move/from16 v10, v102

    .line 465
    .restart local v10       #endPos:I
    move/from16 v11, v41

    .line 466
    .restart local v11       #above:I
    move/from16 v12, v42

    .line 467
    .restart local v12       #below:I
    move/from16 v13, v43

    .line 468
    .restart local v13       #top:I
    move/from16 v14, v44

    .line 469
    .restart local v14       #bottom:I
    move/from16 v34, v103

    .restart local v34       #currentTextWidth:F
    goto :goto_11

    .line 471
    .end local v10           #endPos:I
    .end local v11           #above:I
    .end local v12           #below:I
    .end local v13           #top:I
    .end local v14           #bottom:I
    .end local v34           #currentTextWidth:F
    :cond_37
    add-int/lit8 v10, v39, 0x1

    .line 472
    .restart local v10       #endPos:I
    move-object/from16 v0, v20

    iget v11, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 473
    .restart local v11       #above:I
    move-object/from16 v0, v20

    iget v12, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 474
    .restart local v12       #below:I
    move-object/from16 v0, v20

    iget v13, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 475
    .restart local v13       #top:I
    move-object/from16 v0, v20

    iget v14, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 476
    .restart local v14       #bottom:I
    sub-int v5, v39, v31

    aget v34, v30, v5

    .restart local v34       #currentTextWidth:F
    goto :goto_11

    .line 505
    :cond_38
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v5, v7, :cond_1c

    goto :goto_12

    .line 512
    .end local v10           #endPos:I
    .end local v11           #above:I
    .end local v12           #below:I
    .end local v13           #top:I
    .end local v14           #bottom:I
    .end local v34           #currentTextWidth:F
    .end local v36           #moreChars:Z
    .end local v95           #bZerowithspace:Z
    .end local v97           #c:C
    .end local v104           #fmAscent:I
    .end local v105           #fmBottom:I
    .end local v106           #fmDescent:I
    .end local v107           #fmTop:I
    .end local v111           #isSpaceOrTab:Z
    .end local v112           #j:I
    .end local v126           #spanEnd:I
    .end local v127           #spanLen:I
    :cond_39
    move/from16 v0, v40

    move/from16 v1, v39

    if-eq v0, v1, :cond_3b

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v5, v7, :cond_3b

    .line 513
    or-int v5, v43, v44

    or-int v5, v5, v42

    or-int v5, v5, v41

    if-nez v5, :cond_3a

    .line 514
    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 516
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v43, v0

    .line 517
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v44, v0

    .line 518
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v41, v0

    .line 519
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v42, v0

    .line 524
    :cond_3a
    move/from16 v0, v40

    move/from16 v1, p3

    if-eq v0, v1, :cond_3f

    const/16 v66, 0x1

    :goto_13
    move-object/from16 v37, p0

    move-object/from16 v38, p1

    move/from16 v45, v15

    move/from16 v46, p7

    move/from16 v47, p8

    move-object/from16 v48, v18

    move-object/from16 v49, v19

    move-object/from16 v50, v20

    move/from16 v51, v21

    move/from16 v52, v22

    move-object/from16 v53, v23

    move/from16 v54, v24

    move/from16 v55, v25

    move/from16 v56, p3

    move/from16 v57, p9

    move/from16 v58, p10

    move-object/from16 v59, v29

    move-object/from16 v60, v30

    move/from16 v61, v31

    move-object/from16 v62, p12

    move/from16 v63, p11

    move-object/from16 v65, p4

    invoke-direct/range {v37 .. v66}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v15

    .line 536
    :cond_3b
    move/from16 v31, v40

    .line 538
    move/from16 v0, v40

    move/from16 v1, p3

    if-ne v0, v1, :cond_40

    .line 542
    .end local v18           #chooseHt:[Landroid/text/style/LineHeightSpan;
    .end local v21           #hasTabOrEmoji:Z
    .end local v23           #chdirs:[B
    .end local v24           #dir:I
    .end local v25           #easy:Z
    .end local v29           #chs:[C
    .end local v30           #widths:[F
    .end local v39           #here:I
    .end local v40           #paraEnd:I
    .end local v41           #fitAscent:I
    .end local v42           #fitDescent:I
    .end local v43           #fitTop:I
    .end local v44           #fitBottom:I
    .end local v64           #w:F
    .end local v100           #firstWidth:I
    .end local v101           #firstWidthLineLimit:I
    .end local v102           #fit:I
    .end local v103           #fitWidth:F
    .end local v108           #hasTab:Z
    .end local v118           #ok:I
    .end local v119           #okAscent:I
    .end local v120           #okBottom:I
    .end local v121           #okDescent:I
    .end local v122           #okTop:I
    .end local v123           #okWidth:F
    .end local v124           #restWidth:I
    .end local v128           #spanStart:I
    .end local v131           #tabStops:Landroid/text/Layout$TabStops;
    .end local v134           #width:I
    :cond_3c
    move/from16 v0, p3

    move/from16 v1, p2

    if-eq v0, v1, :cond_3d

    add-int/lit8 v5, p3, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v7, 0xa

    if-ne v5, v7, :cond_3e

    :cond_3d
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v5, v7, :cond_3e

    .line 546
    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 548
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v69, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v70, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v71, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v72, v0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v79, 0x0

    const/16 v81, 0x0

    const/16 v83, 0x1

    const/16 v87, 0x0

    const/16 v88, 0x0

    const/16 v92, 0x0

    const/16 v94, 0x0

    move-object/from16 v65, p0

    move-object/from16 v66, p1

    move/from16 v67, p3

    move/from16 v68, p3

    move/from16 v73, v15

    move/from16 v74, p7

    move/from16 v75, p8

    move-object/from16 v78, v20

    move/from16 v80, v22

    move/from16 v84, p3

    move/from16 v85, p9

    move/from16 v86, p10

    move/from16 v89, p2

    move-object/from16 v90, p12

    move/from16 v91, p11

    move-object/from16 v93, p4

    invoke-direct/range {v65 .. v94}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v15

    .line 559
    :cond_3e
    return-void

    .line 524
    .restart local v18       #chooseHt:[Landroid/text/style/LineHeightSpan;
    .restart local v21       #hasTabOrEmoji:Z
    .restart local v23       #chdirs:[B
    .restart local v24       #dir:I
    .restart local v25       #easy:Z
    .restart local v29       #chs:[C
    .restart local v30       #widths:[F
    .restart local v39       #here:I
    .restart local v40       #paraEnd:I
    .restart local v41       #fitAscent:I
    .restart local v42       #fitDescent:I
    .restart local v43       #fitTop:I
    .restart local v44       #fitBottom:I
    .restart local v64       #w:F
    .restart local v100       #firstWidth:I
    .restart local v101       #firstWidthLineLimit:I
    .restart local v102       #fit:I
    .restart local v103       #fitWidth:F
    .restart local v108       #hasTab:Z
    .restart local v118       #ok:I
    .restart local v119       #okAscent:I
    .restart local v120       #okBottom:I
    .restart local v121       #okDescent:I
    .restart local v122       #okTop:I
    .restart local v123       #okWidth:F
    .restart local v124       #restWidth:I
    .restart local v128       #spanStart:I
    .restart local v131       #tabStops:Landroid/text/Layout$TabStops;
    .restart local v134       #width:I
    :cond_3f
    const/16 v66, 0x0

    goto/16 :goto_13

    .line 196
    :cond_40
    move/from16 v31, v40

    goto/16 :goto_2
.end method

.method public getBottomPadding()I
    .locals 1

    .prologue
    .line 1083
    iget v0, p0, Landroid/text/StaticLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 1088
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 1089
    const/4 v0, 0x0

    .line 1092
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getEllipsisStart(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 1097
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 1098
    const/4 v0, 0x0

    .line 1101
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 1106
    iget v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .locals 2
    .parameter "line"

    .prologue
    .line 1068
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

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

.method public getLineCount()I
    .locals 1

    .prologue
    .line 1033
    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    return v0
.end method

.method public getLineDescent(I)I
    .locals 3
    .parameter "line"

    .prologue
    .line 1048
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x2

    aget v0, v1, v2

    .line 1049
    .local v0, descent:I
    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_0

    .line 1051
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 1053
    :cond_0
    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1
    .parameter "line"

    .prologue
    .line 1073
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLineForVertical(I)I
    .locals 6
    .parameter "vertical"

    .prologue
    .line 1012
    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    .line 1013
    .local v1, high:I
    const/4 v3, -0x1

    .line 1015
    .local v3, low:I
    iget-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 1016
    .local v2, lines:[I
    :goto_0
    sub-int v4, v1, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 1017
    add-int v4, v1, v3

    shr-int/lit8 v0, v4, 0x1

    .line 1018
    .local v0, guess:I
    iget v4, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    aget v4, v2, v4

    if-le v4, p1, :cond_0

    .line 1019
    move v1, v0

    goto :goto_0

    .line 1021
    :cond_0
    move v3, v0

    goto :goto_0

    .line 1024
    .end local v0           #guess:I
    :cond_1
    if-gez v3, :cond_2

    .line 1025
    const/4 v3, 0x0

    .line 1027
    .end local v3           #low:I
    :cond_2
    return v3
.end method

.method public getLineStart(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 1058
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .locals 3
    .parameter "line"

    .prologue
    .line 1038
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    aget v0, v1, v2

    .line 1039
    .local v0, top:I
    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_0

    .line 1041
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 1043
    :cond_0
    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 2
    .parameter "line"

    .prologue
    .line 1063
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 1078
    iget v0, p0, Landroid/text/StaticLayout;->mTopPadding:I

    return v0
.end method

.method prepare()V
    .locals 1

    .prologue
    .line 1110
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    .line 1111
    return-void
.end method
