.class public Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLAudioRecordIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator$1;,
        Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator$ConnectTimerTask;
    }
.end annotation


# static fields
.field private static final INDICATOR_EQBAR_BAND_POS_X:[I = null

.field private static final INDICATOR_EQBAR_GROUP_POS_X:[I = null

.field private static final INDICATOR_EQBAR_GROUP_POS_Y:[I = null

#the value of this static final field might be set in the static constructor
.field private static final INDICATOR_EQBAR_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final INDICATOR_EQBAR_MIC_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final INDICATOR_EQBAR_MIC_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final INDICATOR_EQBAR_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final INDICATOR_EQBAR_Y:I = 0x0

.field private static final NUM_OF_EQBAR:I = 0x8

.field protected static final TAG:Ljava/lang/String; = "TwGLAudioRecordIndicator"


# instance fields
.field private eqBandList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/glview/TwGLImage;",
            ">;"
        }
    .end annotation
.end field

.field private mEqValueArray:[I

.field private mMicImageArray:[I

.field private mRecordAmpIndicator:Lcom/sec/android/glview/TwGLViewGroup;

.field private mRecordAmpIndicatorBG:Lcom/sec/android/glview/TwGLImage;

.field private mRecordAmpIndicatorMicImage:Lcom/sec/android/glview/TwGLImage;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    const v0, 0x7f0800ac

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->INDICATOR_EQBAR_MIC_X:I

    .line 22
    const v0, 0x7f0800ad

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->INDICATOR_EQBAR_MIC_Y:I

    .line 23
    const v0, 0x7f08009e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->INDICATOR_EQBAR_Y:I

    .line 25
    new-array v0, v6, [I

    const v1, 0x7f080096

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f080098

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f08009a

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f08009c

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->INDICATOR_EQBAR_GROUP_POS_X:[I

    .line 32
    new-array v0, v6, [I

    const v1, 0x7f080097

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f080099

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f08009b

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f08009d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->INDICATOR_EQBAR_GROUP_POS_Y:[I

    .line 39
    const v0, 0x7f08009f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->INDICATOR_EQBAR_WIDTH:I

    .line 40
    const v0, 0x7f0800a0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->INDICATOR_EQBAR_HEIGHT:I

    .line 42
    const/16 v0, 0x8

    new-array v0, v0, [I

    const v1, 0x7f0800a4

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f0800a5

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f0800a6

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f0800a7

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    const v1, 0x7f0800a8

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v6

    const/4 v1, 0x5

    const v2, 0x7f0800a9

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x7f0800aa

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f0800ab

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->INDICATOR_EQBAR_BAND_POS_X:[I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FF)V
    .locals 12
    .parameter "glContext"
    .parameter "left"
    .parameter "top"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->eqBandList:Ljava/util/ArrayList;

    .line 54
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mEqValueArray:[I

    .line 63
    new-array v0, v9, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mMicImageArray:[I

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mTimer:Ljava/util/Timer;

    .line 83
    const-string v0, "TwGLAudioRecordIndicator"

    const-string v1, "TwGLAudioRecordIndicator"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->INDICATOR_EQBAR_GROUP_POS_X:[I

    aget v1, v1, v7

    int-to-float v2, v1

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->INDICATOR_EQBAR_GROUP_POS_Y:[I

    aget v1, v1, v7

    int-to-float v3, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->INDICATOR_EQBAR_WIDTH:I

    int-to-float v4, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->INDICATOR_EQBAR_HEIGHT:I

    int-to-float v5, v1

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mRecordAmpIndicator:Lcom/sec/android/glview/TwGLViewGroup;

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mRecordAmpIndicator:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->INDICATOR_EQBAR_GROUP_POS_X:[I

    aget v1, v1, v8

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->INDICATOR_EQBAR_GROUP_POS_Y:[I

    aget v2, v2, v8

    int-to-float v2, v2

    invoke-virtual {v0, v8, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mRecordAmpIndicator:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->INDICATOR_EQBAR_GROUP_POS_X:[I

    aget v1, v1, v9

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->INDICATOR_EQBAR_GROUP_POS_Y:[I

    aget v2, v2, v9

    int-to-float v2, v2

    invoke-virtual {v0, v9, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mRecordAmpIndicator:Lcom/sec/android/glview/TwGLViewGroup;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->INDICATOR_EQBAR_GROUP_POS_X:[I

    aget v1, v1, v10

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->INDICATOR_EQBAR_GROUP_POS_Y:[I

    aget v2, v2, v10

    int-to-float v2, v2

    invoke-virtual {v0, v10, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mRecordAmpIndicator:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mRecordAmpIndicator:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 92
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    const v1, 0x7f0204a4

    invoke-direct {v0, p1, v11, v11, v1}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mRecordAmpIndicatorBG:Lcom/sec/android/glview/TwGLImage;

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mRecordAmpIndicatorBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 95
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->INDICATOR_EQBAR_MIC_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->INDICATOR_EQBAR_MIC_Y:I

    int-to-float v2, v2

    const v3, 0x7f020477

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mRecordAmpIndicatorMicImage:Lcom/sec/android/glview/TwGLImage;

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mRecordAmpIndicatorMicImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mRecordAmpIndicator:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mRecordAmpIndicatorBG:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mRecordAmpIndicator:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mRecordAmpIndicatorMicImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 102
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    const/16 v0, 0x8

    if-ge v6, v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->eqBandList:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/glview/TwGLImage;

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->INDICATOR_EQBAR_BAND_POS_X:[I

    aget v2, v2, v6

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->INDICATOR_EQBAR_Y:I

    int-to-float v3, v3

    const v4, 0x7f02049e

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v7}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 105
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mRecordAmpIndicator:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 102
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mRecordAmpIndicator:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 109
    return-void

    .line 54
    nop

    :array_0
    .array-data 0x4
        0x9et 0x4t 0x2t 0x7ft
        0x9ft 0x4t 0x2t 0x7ft
        0xa0t 0x4t 0x2t 0x7ft
        0xa1t 0x4t 0x2t 0x7ft
        0xa2t 0x4t 0x2t 0x7ft
        0xa3t 0x4t 0x2t 0x7ft
    .end array-data

    .line 63
    :array_1
    .array-data 0x4
        0x77t 0x4t 0x2t 0x7ft
        0x78t 0x4t 0x2t 0x7ft
    .end array-data
.end method

.method private StartMicAnimation()V
    .locals 6

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->StopMicAnimation()V

    .line 115
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mTimer:Ljava/util/Timer;

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator$ConnectTimerTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator$ConnectTimerTask;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator$1;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x190

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 117
    return-void
.end method

.method private StopMicAnimation()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mTimer:Ljava/util/Timer;

    .line 125
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mMicImageArray:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;)Lcom/sec/android/glview/TwGLImage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mRecordAmpIndicatorMicImage:Lcom/sec/android/glview/TwGLImage;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 162
    const-string v0, "TwGLAudioRecordIndicator"

    const-string v1, "clear"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 164
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->StopMicAnimation()V

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->eqBandList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->eqBandList:Ljava/util/ArrayList;

    .line 169
    :cond_0
    return-void
.end method

.method public setRecoring()V
    .locals 2

    .prologue
    .line 128
    const-string v0, "TwGLAudioRecordIndicator"

    const-string v1, "setRecoring"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mRecordAmpIndicator:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 130
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->StartMicAnimation()V

    .line 131
    return-void
.end method

.method public setRecoringAmplitude([I)V
    .locals 5
    .parameter "MicAmplitude"

    .prologue
    const/4 v4, 0x5

    .line 135
    const/16 v2, 0x8

    new-array v0, v2, [I

    .line 136
    .local v0, EqBandLevel:[I
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->eqBandList:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 159
    :cond_0
    return-void

    .line 140
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 141
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLImage;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    :cond_2
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 146
    aget v2, p1, v1

    div-int/lit8 v2, v2, 0x2

    aput v2, v0, v1

    .line 148
    aget v2, v0, v1

    if-le v2, v4, :cond_3

    .line 149
    aput v4, v0, v1

    .line 144
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 154
    :cond_4
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 155
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLImage;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->mEqValueArray:[I

    aget v4, v0, v1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 156
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLAudioRecordIndicator;->eqBandList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/glview/TwGLImage;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
