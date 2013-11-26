.class public Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLItemThumbnailText.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DATA_FONT_SIZE:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "TwGLItemThumbnailText"

.field public static final WHITE_TEXT_COLOR:I


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mAsyncTextSize:Z

.field private mCommandId:I

.field private mText:Lcom/sec/android/glview/TwGLText;

.field private mTextHeight:F

.field private mTextWidth:F

.field private mTextXOffset:F

.field private mTextYOffset:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xff

    .line 40
    const v0, 0x7f090025

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->DATA_FONT_SIZE:F

    .line 41
    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->WHITE_TEXT_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFFFFFFI)V
    .locals 7
    .parameter "activityContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "textleft"
    .parameter "texttop"
    .parameter "textwidth"
    .parameter "textheight"
    .parameter "commandId"

    .prologue
    .line 85
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 87
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 88
    move/from16 v0, p10

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mCommandId:I

    .line 90
    iput p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mTextXOffset:F

    .line 91
    iput p7, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mTextYOffset:F

    .line 92
    iput p8, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mTextWidth:F

    .line 93
    move/from16 v0, p9

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mTextHeight:F

    .line 94
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mAsyncTextSize:Z

    .line 96
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->refreshView()V

    .line 97
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFFFI)V
    .locals 7
    .parameter "activityContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "commandId"

    .prologue
    const/4 v6, 0x0

    .line 70
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 72
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 73
    iput p6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mCommandId:I

    .line 75
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mTextXOffset:F

    .line 76
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mTextYOffset:F

    .line 77
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mTextWidth:F

    .line 78
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mTextHeight:F

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mAsyncTextSize:Z

    .line 81
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->refreshView()V

    .line 82
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;FFI)V
    .locals 2
    .parameter "activityContext"
    .parameter "left"
    .parameter "top"
    .parameter "commandId"

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 57
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 58
    iput p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mCommandId:I

    .line 60
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mTextXOffset:F

    .line 61
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mTextYOffset:F

    .line 62
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mTextWidth:F

    .line 63
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mTextHeight:F

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mAsyncTextSize:Z

    .line 66
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->refreshView()V

    .line 67
    return-void
.end method

.method private refreshView()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mText:Lcom/sec/android/glview/TwGLText;

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->getView()Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLViewGroup;->resetSize()V

    .line 115
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    instance-of v0, v0, Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    check-cast v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->resetSize()V

    .line 118
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mText:Lcom/sec/android/glview/TwGLText;

    .line 106
    :cond_0
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 107
    return-void
.end method

.method protected getView()Lcom/sec/android/glview/TwGLView;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mCommandId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v9

    .line 122
    .local v9, res:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mCommandId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mResourceIDMap:Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;

    const/16 v1, 0x1f40

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    move-result-object v9

    .line 124
    :cond_0
    if-nez v9, :cond_1

    .line 125
    const-string v0, "TwGLItemThumbnailText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing resource for CommandID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mCommandId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mText:Lcom/sec/android/glview/TwGLText;

    return-object v0

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mCommandId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->isExternalEffect(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getExternalFilterLoader()Lcom/sec/android/app/camera/ExternalFilterLoader;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mCommandId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ExternalFilterLoader;->getExternalEffectsName(I)Ljava/lang/String;

    move-result-object v6

    .line 130
    .local v6, title:Ljava/lang/String;
    :goto_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mAsyncTextSize:Z

    if-ne v0, v10, :cond_3

    .line 131
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mTextXOffset:F

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mTextYOffset:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mTextWidth:F

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mTextHeight:F

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->DATA_FONT_SIZE:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->WHITE_TEXT_COLOR:I

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mText:Lcom/sec/android/glview/TwGLText;

    .line 135
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    invoke-virtual {v0, v10, v1}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto :goto_0

    .line 127
    .end local v6           #title:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v1, v9, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;->mTitle:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 133
    .restart local v6       #title:Ljava/lang/String;
    :cond_3
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v5

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->DATA_FONT_SIZE:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->WHITE_TEXT_COLOR:I

    move v3, v2

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;FI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mText:Lcom/sec/android/glview/TwGLText;

    goto :goto_2
.end method

.method public setAlign(II)V
    .locals 1
    .parameter "hAlign"
    .parameter "vAlign"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLItemThumbnailText;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 144
    :cond_0
    return-void
.end method
