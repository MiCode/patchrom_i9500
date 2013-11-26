.class public Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLPetDetMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu$OnPetDetectingStoppedListener;
    }
.end annotation


# static fields
.field private static final INT_10:I = 0xa

.field public static OnPetDetectingStoppedListener:Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu$OnPetDetectingStoppedListener; = null

#the value of this static final field might be set in the static constructor
.field private static final PETDET_SOUND_BUTTON_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final PETDET_SOUND_BUTTON_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final PETDET_SOUND_BUTTON_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final PETDET_SOUND_BUTTON_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SCREEN_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SCREEN_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SIDEMENU_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SMILESHOT_BLINK_IMAGE_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SMILESHOT_BLINK_IMAGE_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SMILESHOT_BLINK_IMAGE_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SMILESHOT_BLINK_IMAGE_Y:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "TwGLPetDetMenu"


# instance fields
.field public mIsDetecting:Z

.field private mOnPetDetectingStoppedListener:Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu$OnPetDetectingStoppedListener;

.field protected mOrientationListener:Landroid/view/OrientationEventListener;

.field private mPetRect:[Lcom/sec/android/glview/TwGLNinePatch;

.field private mPreviewResizeRatio:F

.field private mPreviewStartPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const v0, 0x7f080462

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu;->SIDEMENU_WIDTH:I

    .line 25
    const v0, 0x7f080314

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu;->SCREEN_WIDTH:I

    .line 26
    const v0, 0x7f080315

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu;->SCREEN_HEIGHT:I

    .line 28
    const v0, 0x7f08012a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu;->PETDET_SOUND_BUTTON_X:I

    .line 29
    const v0, 0x7f08012b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu;->PETDET_SOUND_BUTTON_Y:I

    .line 30
    const v0, 0x7f08012c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu;->PETDET_SOUND_BUTTON_WIDTH:I

    .line 31
    const v0, 0x7f08012d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu;->PETDET_SOUND_BUTTON_HEIGHT:I

    .line 33
    const v0, 0x7f080460

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu;->SMILESHOT_BLINK_IMAGE_X:I

    .line 34
    const v0, 0x7f080461

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu;->SMILESHOT_BLINK_IMAGE_Y:I

    .line 35
    const v0, 0x7f080220

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu;->SMILESHOT_BLINK_IMAGE_WIDTH:I

    .line 36
    const v0, 0x7f080221

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu;->SMILESHOT_BLINK_IMAGE_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 11
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "menuResourceDepot"

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 55
    const/4 v5, 0x6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 40
    iput-boolean v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu;->mIsDetecting:Z

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 48
    iput v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu;->mPreviewResizeRatio:F

    .line 49
    iput v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu;->mPreviewStartPosition:I

    .line 51
    new-array v0, v10, [Lcom/sec/android/glview/TwGLNinePatch;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu;->mPetRect:[Lcom/sec/android/glview/TwGLNinePatch;

    .line 57
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/MenuBase;->setCaptureEnabled(Z)V

    .line 58
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/MenuBase;->setTouchHandled(Z)V

    .line 79
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v10, :cond_0

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu;->mPetRect:[Lcom/sec/android/glview/TwGLNinePatch;

    new-instance v1, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const v3, 0x7f02000e

    invoke-direct {v1, v2, v8, v8, v3}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v1, v0, v7

    .line 81
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu;->mPetRect:[Lcom/sec/android/glview/TwGLNinePatch;

    aget-object v0, v0, v7

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu;->mPetRect:[Lcom/sec/android/glview/TwGLNinePatch;

    aget-object v0, v0, v7

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 79
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 98
    :cond_0
    return-void
.end method


# virtual methods
.method public PetRectChanged([Landroid/graphics/Rect;)V
    .locals 8
    .parameter "rects"

    .prologue
    .line 192
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_0

    .line 194
    const-string v5, "TwGLPetDetMenu"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "left: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p1, v1

    iget v7, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " top: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p1, v1

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " right: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p1, v1

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bottom: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p1, v1

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    aget-object v5, p1, v1

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu;->mPreviewResizeRatio:F

    mul-float/2addr v5, v6

    float-to-int v2, v5

    .line 197
    .local v2, left:I
    aget-object v5, p1, v1

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu;->mPreviewResizeRatio:F

    mul-float/2addr v5, v6

    float-to-int v4, v5

    .line 198
    .local v4, top:I
    aget-object v5, p1, v1

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu;->mPreviewResizeRatio:F

    mul-float/2addr v5, v6

    float-to-int v3, v5

    .line 199
    .local v3, right:I
    aget-object v5, p1, v1

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu;->mPreviewResizeRatio:F

    mul-float/2addr v5, v6

    float-to-int v0, v5

    .line 201
    .local v0, bottom:I
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu;->mPetRect:[Lcom/sec/android/glview/TwGLNinePatch;

    aget-object v5, v5, v1

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu;->mPreviewStartPosition:I

    add-int/2addr v6, v2

    int-to-float v6, v6

    int-to-float v7, v4

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FF)V

    .line 202
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu;->mPetRect:[Lcom/sec/android/glview/TwGLNinePatch;

    aget-object v5, v5, v1

    sub-int v6, v3, v2

    int-to-float v6, v6

    sub-int v7, v0, v4

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 203
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu;->mPetRect:[Lcom/sec/android/glview/TwGLNinePatch;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 205
    .end local v0           #bottom:I
    .end local v2           #left:I
    .end local v3           #right:I
    .end local v4           #top:I
    :cond_0
    array-length v1, p1

    :goto_1
    const/4 v5, 0x5

    if-ge v1, v5, :cond_2

    .line 207
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu;->mPetRect:[Lcom/sec/android/glview/TwGLNinePatch;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 208
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu;->mPetRect:[Lcom/sec/android/glview/TwGLNinePatch;

    aget-object v5, v5, v1

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 209
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu;->mPetRect:[Lcom/sec/android/glview/TwGLNinePatch;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    .line 205
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 212
    :cond_2
    return-void
.end method

.method public cleanPetRect()V
    .locals 3

    .prologue
    .line 215
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 216
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu;->mPetRect:[Lcom/sec/android/glview/TwGLNinePatch;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu;->mPetRect:[Lcom/sec/android/glview/TwGLNinePatch;

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 218
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu;->mPetRect:[Lcom/sec/android/glview/TwGLNinePatch;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLView;->resetTranslate()V

    .line 215
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_1
    return-void
.end method

.method public hidePostCaptureLayout()V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method public isDetecting()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu;->mIsDetecting:Z

    return v0
.end method

.method public isPostCaptureLayoutVisible()Z
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x1

    return v0
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu;->mIsDetecting:Z

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu;->mOnPetDetectingStoppedListener:Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu$OnPetDetectingStoppedListener;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu;->mOnPetDetectingStoppedListener:Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu$OnPetDetectingStoppedListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu$OnPetDetectingStoppedListener;->onPetDetectingStopped()V

    .line 156
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onBack()V

    .line 157
    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu;->mOnPetDetectingStoppedListener:Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu$OnPetDetectingStoppedListener;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu;->mOnPetDetectingStoppedListener:Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu$OnPetDetectingStoppedListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu$OnPetDetectingStoppedListener;->onPetDetectingStopped()V

    .line 132
    const/4 v0, 0x1

    .line 134
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onHide()V
    .locals 0

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu;->showPostCaptureLayout()V

    .line 146
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onPetDetectingStopped()V

    .line 162
    return-void
.end method

.method protected onShow()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 184
    const-string v0, "TwGLPetDetMenu"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setTouchHandled(Z)V

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenuItems()V

    .line 168
    :cond_0
    return-void
.end method

.method public setOnPetDetectingStoppedListener(Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu$OnPetDetectingStoppedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu;->mOnPetDetectingStoppedListener:Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu$OnPetDetectingStoppedListener;

    .line 139
    return-void
.end method

.method public showPostCaptureLayout()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public startDetect(II)V
    .locals 2
    .parameter "originalViewFinderWidth"
    .parameter "previewWidth"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideBaseMenuItems()V

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showShutterButton()V

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu;->mIsDetecting:Z

    .line 110
    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu;->mPreviewResizeRatio:F

    .line 111
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu;->SCREEN_WIDTH:I

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu;->mPreviewStartPosition:I

    .line 112
    return-void
.end method

.method public stopDetect()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenuItems()V

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu;->mIsDetecting:Z

    .line 118
    return-void
.end method

.method public stopPetDetShot()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    .line 122
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu;->mIsDetecting:Z

    if-eq v0, v1, :cond_0

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLPetDetMenu;->mIsDetecting:Z

    .line 125
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/MenuBase;->setTouchHandled(Z)V

    goto :goto_0
.end method
