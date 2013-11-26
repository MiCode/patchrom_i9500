.class public Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLStepProgressBar.java"


# instance fields
.field private DEFAULT_TEXT_COLOR:I

.field private mIsProgressStepOn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mMax:I

.field private mPosX:F

.field private mProgress:I

.field private mProgressStep:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/glview/TwGLImage;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressStepGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mProgressText:Lcom/sec/android/glview/TwGLText;


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFFFI)V
    .locals 7
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "stepWidth"
    .parameter "stepGap"
    .parameter "stepMax"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/16 v1, 0xff

    .line 46
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 34
    iput v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mMax:I

    .line 35
    iput v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mProgress:I

    .line 36
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mPosX:F

    .line 38
    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->DEFAULT_TEXT_COLOR:I

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mProgressStep:Ljava/util/ArrayList;

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mIsProgressStepOn:Ljava/util/ArrayList;

    .line 42
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mProgressText:Lcom/sec/android/glview/TwGLText;

    .line 47
    iput p8, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mMax:I

    .line 48
    add-float v1, p6, p7

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mPosX:F

    .line 49
    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-direct {v1, p1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mProgressStepGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 51
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p8, :cond_0

    .line 52
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mProgressStep:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mPosX:F

    int-to-float v4, v0

    mul-float/2addr v3, v4

    const v4, 0x7f020068

    invoke-direct {v2, p1, v3, v6, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mIsProgressStepOn:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mProgressStepGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mProgressStep:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v2, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mProgressStepGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFFFIFFF)V
    .locals 12
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "stepWidth"
    .parameter "stepGap"
    .parameter "stepMax"
    .parameter "textHeight"
    .parameter "textBottomPadding"
    .parameter "fontSize"

    .prologue
    .line 60
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 34
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mMax:I

    .line 35
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mProgress:I

    .line 36
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mPosX:F

    .line 38
    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->DEFAULT_TEXT_COLOR:I

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mProgressStep:Ljava/util/ArrayList;

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mIsProgressStepOn:Ljava/util/ArrayList;

    .line 42
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mProgressText:Lcom/sec/android/glview/TwGLText;

    .line 61
    move/from16 v0, p8

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mMax:I

    .line 62
    add-float v1, p6, p7

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mPosX:F

    .line 63
    new-instance v1, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-direct {v1, p1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mProgressStepGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 65
    new-instance v1, Lcom/sec/android/glview/TwGLText;

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mProgress:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mMax:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->DEFAULT_TEXT_COLOR:I

    const/4 v10, 0x1

    move-object v2, p1

    move/from16 v5, p4

    move/from16 v6, p9

    move/from16 v8, p11

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FIZ)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mProgressText:Lcom/sec/android/glview/TwGLText;

    .line 66
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mProgressText:Lcom/sec/android/glview/TwGLText;

    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 67
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mProgressText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 69
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move/from16 v0, p8

    if-ge v11, v0, :cond_0

    .line 70
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mProgressStep:Ljava/util/ArrayList;

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mPosX:F

    int-to-float v4, v11

    mul-float/2addr v3, v4

    add-float v4, p9, p10

    const v5, 0x7f020068

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mIsProgressStepOn:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mProgressStepGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mProgressStep:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v2, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 69
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mProgressStepGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 75
    return-void
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mMax:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mProgress:I

    return v0
.end method

.method public setProgress(I)V
    .locals 4
    .parameter "progress"

    .prologue
    const/4 v3, 0x1

    .line 78
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mMax:I

    if-le p1, v1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mProgress:I

    if-eq p1, v1, :cond_0

    .line 85
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mProgress:I

    .line 87
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mProgressStep:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 88
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mProgress:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mIsProgressStepOn:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v3, :cond_3

    .line 89
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mProgressStep:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLImage;

    const v2, 0x7f02006a

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 90
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mIsProgressStepOn:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 91
    :cond_3
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mProgress:I

    if-lt v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mIsProgressStepOn:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mProgressStep:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLImage;

    const v2, 0x7f020068

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 93
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mIsProgressStepOn:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 96
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mProgressText:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mProgressText:Lcom/sec/android/glview/TwGLText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mProgress:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLStepProgressBar;->mMax:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
