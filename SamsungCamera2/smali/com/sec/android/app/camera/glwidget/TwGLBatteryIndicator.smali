.class public Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLBatteryIndicator.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final BATTERY_INDICATOR_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final BATTERY_INDICATOR_ICON_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final BATTERY_INDICATOR_TEXT_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final BATTERY_INDICATOR_TEXT_SIZE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final BATTERY_INDICATOR_TEXT_WIDTH:I = 0x0

.field public static final CHARGING:I = 0x3

.field public static final LEVEL_0_TO_4:I = 0x0

.field public static final LEVEL_16_TO_28:I = 0x2

.field public static final LEVEL_5_TO_15:I = 0x1

.field public static final LEVEL_INVISIBLE:I = 0x4

.field public static final MAX_LEVEL:I = 0x3


# instance fields
.field private mBatteryStr:Lcom/sec/android/glview/TwGLText;

.field private mLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const v0, 0x7f0802f1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->BATTERY_INDICATOR_HEIGHT:I

    .line 24
    const v0, 0x7f080080

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->BATTERY_INDICATOR_ICON_POS_X:I

    .line 25
    const v0, 0x7f0802f2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->BATTERY_INDICATOR_TEXT_HEIGHT:I

    .line 26
    const v0, 0x7f0802f3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->BATTERY_INDICATOR_TEXT_WIDTH:I

    .line 27
    const v0, 0x7f090022

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->BATTERY_INDICATOR_TEXT_SIZE:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FF)V
    .locals 12
    .parameter "glContext"
    .parameter "left"
    .parameter "top"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->mLevel:I

    .line 32
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->BATTERY_INDICATOR_HEIGHT:I

    int-to-float v3, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->BATTERY_INDICATOR_TEXT_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->BATTERY_INDICATOR_TEXT_HEIGHT:I

    int-to-float v5, v1

    const-string v6, ""

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->BATTERY_INDICATOR_TEXT_SIZE:I

    int-to-float v7, v1

    const/16 v1, 0xff

    const/16 v8, 0xdc

    const/16 v9, 0xdc

    const/16 v11, 0xdc

    invoke-static {v1, v8, v9, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    const/4 v9, 0x1

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->mBatteryStr:Lcom/sec/android/glview/TwGLText;

    .line 33
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->mBatteryStr:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 35
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->BATTERY_INDICATOR_ICON_POS_X:I

    int-to-float v1, v1

    const/4 v2, 0x0

    const v3, 0x7f0204b2

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 36
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->BATTERY_INDICATOR_ICON_POS_X:I

    int-to-float v1, v1

    const/4 v2, 0x0

    const v3, 0x7f0204bf

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 37
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->BATTERY_INDICATOR_ICON_POS_X:I

    int-to-float v1, v1

    const/4 v2, 0x0

    const v3, 0x7f0204b6

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 38
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->BATTERY_INDICATOR_ICON_POS_X:I

    int-to-float v1, v1

    const/4 v2, 0x0

    const v3, 0x7f0204c0

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->mBatteryStr:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 41
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    const/4 v0, 0x3

    if-gt v10, v0, :cond_0

    .line 42
    invoke-virtual {p0, v10}, Lcom/sec/android/glview/TwGLViewGroup;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(IZ)V

    .line 41
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method public setBatteryStr(IZ)V
    .locals 3
    .parameter "level"
    .parameter "isDisplay"

    .prologue
    const/4 v1, 0x4

    .line 65
    if-nez p2, :cond_0

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->mBatteryStr:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 76
    :goto_0
    return-void

    .line 70
    :cond_0
    const/16 v0, 0x1d

    if-ge p1, v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->mBatteryStr:Lcom/sec/android/glview/TwGLText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->mBatteryStr:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_0

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->mBatteryStr:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setLevel(I)V
    .locals 5
    .parameter "level"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 47
    if-ltz p1, :cond_0

    if-le p1, v4, :cond_1

    .line 48
    :cond_0
    if-ne p1, v3, :cond_2

    .line 49
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-gt v0, v4, :cond_2

    .line 50
    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    invoke-virtual {v1, v3, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(IZ)V

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    .end local v0           #i:I
    :cond_1
    :try_start_0
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->mLevel:I

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(IZ)V

    .line 57
    invoke-virtual {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->getView(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 58
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBatteryIndicator;->mLevel:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :cond_2
    :goto_1
    return-void

    .line 59
    :catch_0
    move-exception v1

    goto :goto_1
.end method
