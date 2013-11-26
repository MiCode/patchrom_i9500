.class public Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLHelpItem.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final BOTTOM_PADDING:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DESCRIPTION_COLOR:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DESCRIPTION_ICON_RIGHT_PADDING:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DESCRIPTION_ICON_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final FONT_SIZE:F = 0.0f

.field public static final ITEM_BOTTOM_PADDING:I = 0x2

.field public static final ITEM_NO_PADDING:I = 0x0

.field public static final ITEM_TOP_AND_BOTTOM_PADDING:I = 0x3

#the value of this static final field might be set in the static constructor
.field private static final ITEM_TOP_BOTTOM_PADDING:I = 0x0

.field public static final ITEM_TOP_PADDING:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final LEFT_PADDING:I = 0x0

.field public static final ONLY_DESCRIPTION_TYPE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final POINT_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final POINT_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final RIGHT_PADDING:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final TEXT_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final TITLE_COLOR:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final TOP_PADDING:I = 0x0

.field public static final WITH_SUB_TITLE_AND_DESCRIPTION_ICON_TYPE:I = 0x2

.field public static final WITH_SUB_TITLE_TYPE:I = 0x1


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mDescription:Lcom/sec/android/glview/TwGLText;

.field private mDescriptionIcon:Lcom/sec/android/glview/TwGLImage;

.field private mDescriptionString:Ljava/lang/String;

.field private mDescriptionType:I

.field private mItemPaddingPosition:I

.field private mItemSubTitle:Lcom/sec/android/glview/TwGLText;

.field private mPoint:Lcom/sec/android/glview/TwGLImage;

.field private mResId:I

.field private mSubTitleRowsRequired:I

.field private mSubTitleString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xff

    .line 17
    const v0, 0x7f0802c1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->LEFT_PADDING:I

    .line 18
    const v0, 0x7f0802c2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->RIGHT_PADDING:I

    .line 19
    const v0, 0x7f0802c3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TOP_PADDING:I

    .line 20
    const v0, 0x7f0802c4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->BOTTOM_PADDING:I

    .line 21
    const v0, 0x7f0802c5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->ITEM_TOP_BOTTOM_PADDING:I

    .line 22
    const v0, 0x7f0802c6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->POINT_POS_X:I

    .line 23
    const v0, 0x7f0802c7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->POINT_POS_Y:I

    .line 24
    const v0, 0x7f0802c8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->DESCRIPTION_ICON_WIDTH:I

    .line 25
    const v0, 0x7f0802c9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->DESCRIPTION_ICON_RIGHT_PADDING:I

    .line 26
    const v0, 0x7f0802ca

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TEXT_HEIGHT:I

    .line 27
    const v0, 0x7f09003e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->FONT_SIZE:F

    .line 28
    const/16 v0, 0x21

    const/16 v1, 0xcd

    invoke-static {v2, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TITLE_COLOR:I

    .line 29
    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->DESCRIPTION_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFFILjava/lang/String;I)V
    .locals 7
    .parameter "activityContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "itemPaddingPosition"
    .parameter "description"
    .parameter "descriptionType"

    .prologue
    const/4 v6, 0x0

    .line 53
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 38
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mResId:I

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionType:I

    .line 40
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemPaddingPosition:I

    .line 41
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleRowsRequired:I

    .line 55
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleString:Ljava/lang/String;

    .line 57
    iput-object p7, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionString:Ljava/lang/String;

    .line 58
    iput p8, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionType:I

    .line 59
    iput p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemPaddingPosition:I

    .line 60
    invoke-direct {p0, p8, p6}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->initContent(II)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFFILjava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter "activityContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "itemPaddingPosition"
    .parameter "subTitle"
    .parameter "description"
    .parameter "descriptionType"

    .prologue
    .line 64
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mResId:I

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionType:I

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemPaddingPosition:I

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleRowsRequired:I

    .line 66
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 67
    iput-object p7, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleString:Ljava/lang/String;

    .line 68
    iput-object p8, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionString:Ljava/lang/String;

    .line 69
    iput p9, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionType:I

    .line 70
    iput p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemPaddingPosition:I

    .line 71
    invoke-direct {p0, p9, p6}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->initContent(II)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFFILjava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .parameter "activityContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "itemPaddingPosition"
    .parameter "subTitle"
    .parameter "description"
    .parameter "resId"
    .parameter "descriptionType"

    .prologue
    .line 75
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 38
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mResId:I

    .line 39
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionType:I

    .line 40
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemPaddingPosition:I

    .line 41
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleRowsRequired:I

    .line 77
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 78
    iput-object p7, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleString:Ljava/lang/String;

    .line 79
    iput-object p8, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionString:Ljava/lang/String;

    .line 80
    move/from16 v0, p10

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionType:I

    .line 81
    move/from16 v0, p9

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mResId:I

    .line 82
    iput p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemPaddingPosition:I

    .line 83
    move/from16 v0, p10

    invoke-direct {p0, v0, p6}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->initContent(II)V

    .line 84
    return-void
.end method

.method private initContent(II)V
    .locals 11
    .parameter "descriptionType"
    .parameter "itemPaddingPosition"

    .prologue
    .line 89
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TOP_PADDING:I

    int-to-float v3, v0

    .line 90
    .local v3, currentY:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->LEFT_PADDING:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->RIGHT_PADDING:I

    int-to-float v1, v1

    sub-float v4, v0, v1

    .line 92
    .local v4, contentWidth:F
    packed-switch p1, :pswitch_data_0

    .line 199
    :goto_0
    return-void

    .line 94
    :pswitch_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 95
    :cond_0
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->ITEM_TOP_BOTTOM_PADDING:I

    int-to-float v0, v0

    add-float/2addr v3, v0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionString:Ljava/lang/String;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->FONT_SIZE:F

    invoke-static {v4, v0, v1}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v10

    .line 99
    .local v10, rowsRequired:I
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TEXT_HEIGHT:I

    mul-int v9, v0, v10

    .line 100
    .local v9, heightRequired:I
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    if-nez v0, :cond_4

    .line 101
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->LEFT_PADDING:I

    int-to-float v2, v2

    int-to-float v5, v9

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionString:Ljava/lang/String;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->FONT_SIZE:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->DESCRIPTION_COLOR:I

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 106
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 107
    int-to-float v0, v9

    add-float/2addr v3, v0

    .line 108
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->BOTTOM_PADDING:I

    int-to-float v0, v0

    add-float/2addr v3, v0

    .line 109
    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 110
    :cond_2
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->ITEM_TOP_BOTTOM_PADDING:I

    int-to-float v0, v0

    add-float/2addr v3, v0

    .line 112
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto :goto_0

    .line 104
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    int-to-float v1, v9

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto :goto_1

    .line 115
    .end local v9           #heightRequired:I
    .end local v10           #rowsRequired:I
    :pswitch_1
    const/4 v0, 0x1

    if-eq p2, v0, :cond_5

    const/4 v0, 0x3

    if-ne p2, v0, :cond_6

    .line 116
    :cond_5
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->ITEM_TOP_BOTTOM_PADDING:I

    int-to-float v0, v0

    add-float/2addr v3, v0

    .line 118
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleString:Ljava/lang/String;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->FONT_SIZE:F

    invoke-static {v4, v0, v1}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleRowsRequired:I

    .line 119
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TEXT_HEIGHT:I

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleRowsRequired:I

    mul-int v9, v0, v1

    .line 121
    .restart local v9       #heightRequired:I
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mPoint:Lcom/sec/android/glview/TwGLImage;

    if-nez v0, :cond_7

    .line 122
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->POINT_POS_X:I

    int-to-float v2, v2

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->POINT_POS_Y:I

    int-to-float v5, v5

    add-float/2addr v5, v3

    const v6, 0x7f0200c4

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mPoint:Lcom/sec/android/glview/TwGLImage;

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mPoint:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setBypassTouch(Z)V

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mPoint:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 127
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    if-nez v0, :cond_a

    .line 128
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->LEFT_PADDING:I

    int-to-float v2, v2

    int-to-float v5, v9

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleString:Ljava/lang/String;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->FONT_SIZE:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TITLE_COLOR:I

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 133
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 134
    int-to-float v0, v9

    add-float/2addr v3, v0

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionString:Ljava/lang/String;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->FONT_SIZE:F

    invoke-static {v4, v0, v1}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v10

    .line 137
    .restart local v10       #rowsRequired:I
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TEXT_HEIGHT:I

    mul-int v9, v0, v10

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    if-nez v0, :cond_b

    .line 139
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->LEFT_PADDING:I

    int-to-float v2, v2

    int-to-float v5, v9

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionString:Ljava/lang/String;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->FONT_SIZE:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->DESCRIPTION_COLOR:I

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 144
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 145
    int-to-float v0, v9

    add-float/2addr v3, v0

    .line 146
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->BOTTOM_PADDING:I

    int-to-float v0, v0

    add-float/2addr v3, v0

    .line 147
    const/4 v0, 0x2

    if-eq p2, v0, :cond_8

    const/4 v0, 0x3

    if-ne p2, v0, :cond_9

    .line 148
    :cond_8
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->ITEM_TOP_BOTTOM_PADDING:I

    int-to-float v0, v0

    add-float/2addr v3, v0

    .line 150
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_0

    .line 131
    .end local v10           #rowsRequired:I
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    int-to-float v1, v9

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto :goto_2

    .line 142
    .restart local v10       #rowsRequired:I
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    int-to-float v1, v9

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto :goto_3

    .line 153
    .end local v9           #heightRequired:I
    .end local v10           #rowsRequired:I
    :pswitch_2
    const/4 v0, 0x1

    if-eq p2, v0, :cond_c

    const/4 v0, 0x3

    if-ne p2, v0, :cond_d

    .line 154
    :cond_c
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->ITEM_TOP_BOTTOM_PADDING:I

    int-to-float v0, v0

    add-float/2addr v3, v0

    .line 156
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleString:Ljava/lang/String;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->FONT_SIZE:F

    invoke-static {v4, v0, v1}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleRowsRequired:I

    .line 157
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TEXT_HEIGHT:I

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleRowsRequired:I

    mul-int v9, v0, v1

    .line 159
    .restart local v9       #heightRequired:I
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mPoint:Lcom/sec/android/glview/TwGLImage;

    if-nez v0, :cond_e

    .line 160
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->POINT_POS_X:I

    int-to-float v2, v2

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->POINT_POS_Y:I

    int-to-float v5, v5

    add-float/2addr v5, v3

    const v6, 0x7f0200c4

    invoke-direct {v0, v1, v2, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mPoint:Lcom/sec/android/glview/TwGLImage;

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mPoint:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setBypassTouch(Z)V

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mPoint:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 165
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    if-nez v0, :cond_12

    .line 166
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->LEFT_PADDING:I

    int-to-float v2, v2

    int-to-float v5, v9

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleString:Ljava/lang/String;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->FONT_SIZE:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TITLE_COLOR:I

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 171
    :goto_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 172
    int-to-float v0, v9

    add-float/2addr v3, v0

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionIcon:Lcom/sec/android/glview/TwGLImage;

    if-nez v0, :cond_f

    .line 175
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->LEFT_PADDING:I

    int-to-float v2, v2

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mResId:I

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionIcon:Lcom/sec/android/glview/TwGLImage;

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionIcon:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setBypassTouch(Z)V

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 180
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionString:Ljava/lang/String;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->FONT_SIZE:F

    invoke-static {v4, v0, v1}, Lcom/sec/android/glview/TwGLText;->measureRows(FLjava/lang/String;F)I

    move-result v10

    .line 181
    .restart local v10       #rowsRequired:I
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TEXT_HEIGHT:I

    mul-int v9, v0, v10

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    if-nez v0, :cond_13

    .line 183
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->DESCRIPTION_ICON_WIDTH:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->DESCRIPTION_ICON_RIGHT_PADDING:I

    add-int/2addr v2, v5

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->LEFT_PADDING:I

    add-int/2addr v2, v5

    int-to-float v2, v2

    int-to-float v5, v9

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionString:Ljava/lang/String;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->FONT_SIZE:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->DESCRIPTION_COLOR:I

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 188
    :goto_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 189
    int-to-float v0, v9

    add-float/2addr v3, v0

    .line 190
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->BOTTOM_PADDING:I

    int-to-float v0, v0

    add-float/2addr v3, v0

    .line 191
    const/4 v0, 0x2

    if-eq p2, v0, :cond_10

    const/4 v0, 0x3

    if-ne p2, v0, :cond_11

    .line 192
    :cond_10
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->ITEM_TOP_BOTTOM_PADDING:I

    int-to-float v0, v0

    add-float/2addr v3, v0

    .line 194
    :cond_11
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/glview/TwGLView;->setSize(FF)V

    goto/16 :goto_0

    .line 169
    .end local v10           #rowsRequired:I
    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    int-to-float v1, v9

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto/16 :goto_4

    .line 186
    .restart local v10       #rowsRequired:I
    :cond_13
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    int-to-float v1, v9

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    goto :goto_5

    .line 92
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/glview/TwGLView$OnTouchListener;->onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V
    .locals 2
    .parameter "l"

    .prologue
    const/4 v1, 0x0

    .line 222
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .line 223
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    if-nez v0, :cond_2

    .line 224
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 234
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 235
    return-void

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_3

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 231
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    goto :goto_0
.end method

.method public declared-synchronized setWidth(F)V
    .locals 5
    .parameter "width"

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLView;->setWidth(F)V

    .line 204
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemSubTitle:Lcom/sec/android/glview/TwGLText;

    if-nez v1, :cond_1

    .line 205
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionType:I

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemPaddingPosition:I

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->initContent(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 207
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleRowsRequired:I

    .line 208
    .local v0, beforeRowsRequired:I
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionType:I

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mItemPaddingPosition:I

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->initContent(II)V

    .line 209
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleRowsRequired:I

    if-eq v1, v0, :cond_0

    .line 210
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionIcon:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_2

    .line 211
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescriptionIcon:Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TEXT_HEIGHT:I

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleRowsRequired:I

    sub-int/2addr v4, v0

    mul-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->translate(FF)V

    .line 213
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mDescription:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->TEXT_HEIGHT:I

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHelpItem;->mSubTitleRowsRequired:I

    sub-int/2addr v4, v0

    mul-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->translate(FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 203
    .end local v0           #beforeRowsRequired:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
