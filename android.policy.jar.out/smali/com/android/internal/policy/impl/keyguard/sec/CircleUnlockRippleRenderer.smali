.class public Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;
.super Ljava/lang/Object;
.source "CircleUnlockRippleRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$SoundPoolThread;
    }
.end annotation


# static fields
.field private static final DEFAULT_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/system/wallpaper/lockscreen_default_wallpaper.jpg"

.field private static final DEFAULT_WALLPAPER_IMAGE_PATH_MULTI_CSC:Ljava/lang/String; = "/system/csc_contents/lockscreen_default_wallpaper.jpg"

.field private static final DEFAULT_WALLPAPER_IMAGE_PATH_MULTI_CSC_PNG:Ljava/lang/String; = "/system/csc_contents/lockscreen_default_wallpaper.png"

.field private static final DEFAULT_WALLPAPER_IMAGE_PATH_PNG:Ljava/lang/String; = "/system/wallpaper/lockscreen_default_wallpaper.png"

.field private static final INK_DISABLE:I = 0x0

.field private static final LANDSCAPE_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_land.jpg"

.field private static final PORTRAIT_WALLPAPER_IMAGE_PATH:Ljava/lang/String; = "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_ripple.jpg"


# instance fields
.field BGResId:I

.field private final DBG:Z

.field private HDMI_VIEW_HEIGHT_FOR_P4_NOTE_10_1:I

.field private HDMI_WIDOW_HEIGHT_FOR_P4_NOTE_10_1:I

.field private final HOVER_FRESENL_MAX:F

.field private final HOVER_FRESENL_MIN:F

.field private final HOVER_INTENSITY_MAX:F

.field private final HOVER_SPECULAR_RATIO_MAX:F

.field private final HOVER_SPECULAR_RATIO_MIN:F

.field private MESH_SIZE_HEIGHT:I

.field private MESH_SIZE_WIDTH:I

.field private NUM_DETAILS_HEIGHT:I

.field private NUM_DETAILS_WIDTH:I

.field private final REDUCTION_RATE_NORMAL:F

.field private final REDUCTION_RATE_RAIN:F

.field private final REDUCTION_RATE_WAVE:F

.field RIPPLE_DRAG_THRESHOLD:D

.field private final RIPPLE_WAIT_TIME:J

.field final SOUND_ID_DOWN:I

.field final SOUND_ID_UP:I

.field private SURFACE_DETAILS_HEIGHT:I

.field private SURFACE_DETAILS_WIDTH:I

.field private final TAG:Ljava/lang/String;

.field private final TOUCH_EXPONENT:F

.field private final TOUCH_FRESENL:F

.field private final TOUCH_SPECULAR_RATIO:F

.field private VCOUNT:I

.field XRatioAdjustLandscape:F

.field XRatioAdjustPortrait:F

.field XRatioForLandscape:F

.field XRatioForPortrait:F

.field YRatioForLandscape:F

.field YRatioForPortrait:F

.field alphaRatio1:F

.field alphaRatio2:F

.field bitmapLight:Landroid/graphics/Bitmap;

.field bitmapOriginal:Landroid/graphics/Bitmap;

.field bitmapWater:Landroid/graphics/Bitmap;

.field private calledIsScreenTurnedOn:Z

.field private defaultX:F

.field private defaultY:F

.field private diffPressTime:J

.field private downX:F

.field private downY:F

.field private drawCount:I

.field glX:F

.field glY:F

.field private gpuHeights:[F

.field private hasSystemNavBar:Z

.field private heights:[F

.field private heightsSub1:[F

.field private heightsSub2:[F

.field private indices:[S

.field private inkColorFromSetting:[[F

.field intensityForLandscape:F

.field intensityForPortrait:F

.field intensityForRipple:F

.field private isFirstTouched:Z

.field private isInkEnable:Z

.field private isSystemSoundChecked:Z

.field isTouched:Z

.field private isUseLCD:Z

.field private is_JBP_Upgrade:Z

.field private mBitmapRatio:F

.field private mContext:Landroid/content/Context;

.field private mDefaultRunnable:Ljava/lang/Runnable;

.field private mExponent:F

.field private mFresnelRatio:F

.field private mHoverEnabled:Z

.field private mHoverIntensity:F

.field private mInkEffectColor:I

.field private mLandscape:Z

.field private mLightHeight:F

.field private mLongPressRunnable:Ljava/lang/Runnable;

.field mParent:Landroid/view/View;

.field private mPreviousRippleTime:J

.field private mRDownId:I

.field private mRUpId:I

.field private mReductionRate:F

.field private mReductionRateSub:F

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSpecularRatio:F

.field private mSubWaveTime:J

.field private mVelocityCheckCnt:I

.field private mWallpaperPath:Ljava/lang/String;

.field private mWaveEnable:Z

.field private mWaveVelocity:F

.field private max:I

.field private mouseInputCount:I

.field private mouseX:F

.field private mouseY:F

.field private moveCount:I

.field private prevPressTime:J

.field private proj:[F

.field reflectionRatio:F

.field refractiveIndex:F

.field private rippleDistance:I

.field rippleDragThreshold:D

.field private soundNum:I

.field private soundTime:I

.field private sounds:[I

.field spanXForLandscape:I

.field spanXForPortrait:I

.field spanYForLandscape:I

.field spanYForPortrait:I

.field textures0:[I

.field textures1:[I

.field tmx:F

.field tmy:F

.field translateXForLandscape:F

.field translateXForPortrait:F

.field translateYForLandscape:F

.field translateYForPortrait:F

.field translateZForLandscape:F

.field translateZForPortrait:F

.field unitCellHeight:F

.field unitCellWidth:F

.field private velocity:[F

.field private velocitySub1:[F

.field private velocitySub2:[F

.field private vertices:[F

.field private view:[F

.field private waveCount:I

.field private waveDealy:I

.field windowHeight:I

.field windowWidth:I

.field private world:[F

.field private wvp:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 11
    .parameter "context"
    .parameter "view"

    .prologue
    const/16 v10, 0x10

    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->DBG:Z

    .line 93
    const-string v5, "CircleUnlockRippleRenderer"

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->TAG:Ljava/lang/String;

    .line 95
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mVelocityCheckCnt:I

    .line 97
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 98
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 100
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 101
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 103
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 104
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 106
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    .line 107
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 109
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->unitCellWidth:F

    .line 110
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->unitCellHeight:F

    .line 112
    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    .line 113
    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocity:[F

    .line 115
    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    .line 116
    new-array v5, v7, [F

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub1:[F

    .line 118
    new-array v5, v7, [F

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    .line 119
    new-array v5, v7, [F

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub2:[F

    .line 122
    new-array v5, v7, [F

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->vertices:[F

    .line 123
    new-array v5, v7, [F

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    .line 124
    new-array v5, v7, [S

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->indices:[S

    .line 126
    new-array v5, v7, [I

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->textures0:[I

    .line 127
    new-array v5, v7, [I

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->textures1:[I

    .line 130
    new-array v5, v10, [F

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->view:[F

    .line 131
    new-array v5, v10, [F

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->proj:[F

    .line 132
    new-array v5, v10, [F

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->world:[F

    .line 133
    new-array v5, v10, [F

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    .line 135
    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    .line 137
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    .line 138
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    .line 140
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    .line 141
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    .line 144
    const/high16 v5, 0x3f00

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mWaveVelocity:F

    .line 145
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mWaveEnable:Z

    .line 148
    const v5, 0x3f70a3d7

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->REDUCTION_RATE_NORMAL:F

    .line 149
    const v5, 0x3f75c28f

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->REDUCTION_RATE_RAIN:F

    .line 150
    const v5, 0x3f7d70a4

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->REDUCTION_RATE_WAVE:F

    .line 153
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mBitmapRatio:F

    .line 156
    const v5, 0x3dcccccd

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->TOUCH_FRESENL:F

    .line 157
    const/high16 v5, 0x40a0

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->TOUCH_SPECULAR_RATIO:F

    .line 158
    const/high16 v5, 0x4220

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->TOUCH_EXPONENT:F

    .line 160
    const v5, 0x3dcccccd

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    .line 161
    const/high16 v5, 0x40a0

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    .line 162
    const/high16 v5, 0x4220

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mExponent:F

    .line 165
    const v5, 0x3dcccccd

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_FRESENL_MIN:F

    .line 166
    const/high16 v5, 0x40a0

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_SPECULAR_RATIO_MIN:F

    .line 168
    const v5, 0x3e99999a

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_FRESENL_MAX:F

    .line 169
    const/high16 v5, 0x4220

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_SPECULAR_RATIO_MAX:F

    .line 170
    const v5, 0x3d75c28f

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->HOVER_INTENSITY_MAX:F

    .line 171
    const v5, 0x3d75c28f

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mHoverIntensity:F

    .line 172
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mHoverEnabled:Z

    .line 173
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mPreviousRippleTime:J

    .line 174
    const-wide/16 v5, 0x640

    iput-wide v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->RIPPLE_WAIT_TIME:J

    .line 177
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLandscape:Z

    .line 180
    const v5, 0x3f70a3d7

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mReductionRate:F

    .line 181
    const v5, 0x3f7d70a4

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mReductionRateSub:F

    .line 182
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSubWaveTime:J

    .line 183
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->waveCount:I

    .line 184
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->waveDealy:I

    .line 187
    const/high16 v5, 0x3fc0

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLightHeight:F

    .line 189
    const v5, 0x3f6e147b

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->refractiveIndex:F

    .line 190
    const v5, 0x3e051eb8

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->reflectionRatio:F

    .line 191
    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->alphaRatio1:F

    .line 192
    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->alphaRatio2:F

    .line 197
    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    .line 198
    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    .line 199
    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapLight:Landroid/graphics/Bitmap;

    .line 201
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->tmx:F

    .line 202
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->tmy:F

    .line 204
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    .line 205
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    .line 213
    const/high16 v5, 0x3f00

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 214
    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 218
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 219
    const/high16 v5, -0x8000

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 222
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 223
    const/high16 v5, -0x8000

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 226
    const/high16 v5, -0x3dd0

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 227
    const/high16 v5, -0x3e48

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 230
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 231
    iput v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 232
    iput v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 233
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 236
    const/high16 v5, 0x4234

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 237
    const/high16 v5, 0x41c8

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 238
    const/high16 v5, 0x41c8

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 239
    const/high16 v5, 0x4238

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    .line 240
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    .line 241
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    .line 246
    const/high16 v5, 0x3f80

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    .line 247
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    .line 248
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    .line 251
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->downX:F

    .line 252
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->downY:F

    .line 253
    const-wide v5, 0x4062c00000000000L

    iput-wide v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    .line 254
    iget-wide v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->RIPPLE_DRAG_THRESHOLD:D

    iput-wide v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->rippleDragThreshold:D

    .line 255
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    .line 256
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 259
    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    .line 260
    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    .line 261
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->diffPressTime:J

    .line 262
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->prevPressTime:J

    .line 263
    const/4 v5, 0x5

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->soundNum:I

    .line 264
    const/16 v5, 0xa

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->soundTime:I

    .line 265
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SOUND_ID_DOWN:I

    .line 266
    iput v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SOUND_ID_UP:I

    .line 267
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mRDownId:I

    .line 268
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mRUpId:I

    .line 269
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    .line 270
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->moveCount:I

    .line 271
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    .line 272
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->hasSystemNavBar:Z

    .line 276
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isFirstTouched:Z

    .line 277
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->calledIsScreenTurnedOn:Z

    .line 279
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->defaultX:F

    .line 280
    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->defaultY:F

    .line 294
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->is_JBP_Upgrade:Z

    .line 295
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isInkEnable:Z

    .line 296
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isUseLCD:Z

    .line 301
    check-cast v4, [[F

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    .line 302
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    .line 303
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isTouched:Z

    .line 309
    const/16 v4, 0x2f0

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->HDMI_WIDOW_HEIGHT_FOR_P4_NOTE_10_1:I

    .line 310
    const/16 v4, 0x2d0

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->HDMI_VIEW_HEIGHT_FOR_P4_NOTE_10_1:I

    .line 322
    const-string v4, "CircleUnlockRippleRenderer"

    const-string v5, "CircleUnlockRippleRenderer Constructor"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :try_start_0
    const-string v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    .line 327
    .local v3, wm:Landroid/view/IWindowManager;
    invoke-interface {v3}, Landroid/view/IWindowManager;->hasSystemNavBar()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->hasSystemNavBar:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    .end local v3           #wm:Landroid/view/IWindowManager;
    :goto_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    .line 334
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    .line 336
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x111005c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->is_JBP_Upgrade:Z

    .line 337
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x111005d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isInkEnable:Z

    .line 338
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x111005e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isUseLCD:Z

    .line 340
    const-string v4, "CircleUnlockRippleRenderer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "is_JBP_Upgrade = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->is_JBP_Upgrade:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const-string v4, "CircleUnlockRippleRenderer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isInkEnable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isInkEnable:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const-string v4, "CircleUnlockRippleRenderer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isUseLCD = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isUseLCD:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isUseLCD:Z

    if-eqz v4, :cond_0

    .line 346
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->inkColorFromSettingForLCD:[[F

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    .line 353
    :goto_1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 354
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 355
    .local v2, mWindowManager:Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 356
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    .line 357
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    .line 358
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setModeleConfiguration()V

    .line 360
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->initWaters()V

    .line 361
    iput v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    .line 363
    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setBackground(Z)V

    .line 364
    return-void

    .line 328
    .end local v0           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v2           #mWindowManager:Landroid/view/WindowManager;
    :catch_0
    move-exception v1

    .line 329
    .local v1, ex:Landroid/os/RemoteException;
    const-string v4, "Navigation"

    const-string v5, "RemoteException Occured"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 350
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_0
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->inkColorFromSettingForLED:[[F

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;FFFZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->ripple(FFFZ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->defaultY:F

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setHoverEnable(Z)V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setFalseDefaultEffectFlag()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->soundNum:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;)Landroid/media/SoundPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->soundTime:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLandscape:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->defaultX:F

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    return v0
.end method

.method private checkSound()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1339
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1340
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 1344
    .local v2, result:I
    :try_start_0
    const-string v3, "lockscreen_sounds_enabled"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1352
    :goto_0
    if-ne v2, v4, :cond_0

    .line 1353
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    .line 1357
    :goto_1
    return-void

    .line 1346
    :catch_0
    move-exception v1

    .line 1348
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1355
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    goto :goto_1
.end method

.method private initWaters()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1137
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "initWaters"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->vertices:[F

    .line 1140
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x6

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->indices:[S

    .line 1142
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    .line 1143
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocity:[F

    .line 1144
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    .line 1145
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub1:[F

    .line 1146
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    .line 1147
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub2:[F

    .line 1149
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    .line 1151
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->vertices:[F

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->indices:[S

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    invoke-static/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->initWaters([F[SIIIII)V

    .line 1156
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 1157
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocity:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 1158
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 1159
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub1:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 1160
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 1161
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub2:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 1162
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 1163
    return-void
.end method

.method private loadBitmapIfBitmapNull()V
    .locals 2

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 1428
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 1430
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "bitmapWater == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 1435
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "bitmapOriginal == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setBackground(Z)V

    .line 1440
    :cond_3
    return-void
.end method

.method private move()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 1171
    const/4 v3, 0x1

    .line 1172
    .local v3, xSpan:I
    const/4 v2, 0x1

    .line 1174
    .local v2, ySpan:I
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLandscape:Z

    if-eqz v0, :cond_3

    .line 1175
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 1176
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 1177
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    sub-int v4, v0, v2

    .line 1178
    .local v4, imax:I
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    sub-int v5, v0, v3

    .line 1186
    .local v5, jmax:I
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocity:[F

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    const/4 v8, 0x1

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mReductionRate:F

    const/high16 v10, 0x3f00

    invoke-static/range {v0 .. v10}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->move([F[FIIIIIIZFF)I

    move-result v0

    if-eqz v0, :cond_5

    .line 1190
    iput v14, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mVelocityCheckCnt:I

    .line 1192
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 1194
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_WITH_INK:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_INK:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_4

    .line 1196
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isTouched:Z

    if-nez v0, :cond_1

    .line 1198
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setRenderModeDirty()V

    .line 1212
    :cond_1
    :goto_1
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    if-ge v11, v0, :cond_7

    .line 1213
    const/4 v13, 0x0

    .local v13, j:I
    :goto_3
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    if-ge v13, v0, :cond_6

    .line 1214
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v0, v13

    add-int/2addr v0, v11

    mul-int/lit8 v12, v0, 0x3

    .line 1215
    .local v12, idx:I
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v1, v12, 0x0

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    add-int/lit8 v7, v13, 0x2

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v11

    add-int/lit8 v7, v7, 0x2

    aget v6, v6, v7

    aput v6, v0, v1

    .line 1217
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v1, v12, 0x1

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    add-int/lit8 v7, v13, 0x2

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v11

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    aput v6, v0, v1

    .line 1219
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v1, v12, 0x2

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    add-int/lit8 v7, v13, 0x1

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v11

    add-int/lit8 v7, v7, 0x2

    aget v6, v6, v7

    aput v6, v0, v1

    .line 1222
    add-int/lit8 v0, v11, -0x7

    if-lez v0, :cond_2

    .line 1223
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v1, v12, 0x0

    aget v6, v0, v1

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    add-int/lit8 v8, v13, 0x2

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v8, v9

    add-int/2addr v8, v11

    add-int/lit8 v8, v8, -0x6

    aget v7, v7, v8

    add-float/2addr v6, v7

    aput v6, v0, v1

    .line 1225
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v1, v12, 0x1

    aget v6, v0, v1

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    add-int/lit8 v8, v13, 0x2

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v8, v9

    add-int/2addr v8, v11

    add-int/lit8 v8, v8, -0x7

    aget v7, v7, v8

    add-float/2addr v6, v7

    aput v6, v0, v1

    .line 1227
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v1, v12, 0x2

    aget v6, v0, v1

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    add-int/lit8 v8, v13, 0x1

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v8, v9

    add-int/2addr v8, v11

    add-int/lit8 v8, v8, -0x6

    aget v7, v7, v8

    add-float/2addr v6, v7

    aput v6, v0, v1

    .line 1229
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v1, v12, 0x0

    aget v6, v0, v1

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    add-int/lit8 v8, v13, 0x2

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v8, v9

    add-int/2addr v8, v11

    add-int/lit8 v8, v8, -0x6

    aget v7, v7, v8

    add-float/2addr v6, v7

    aput v6, v0, v1

    .line 1231
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v1, v12, 0x1

    aget v6, v0, v1

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    add-int/lit8 v8, v13, 0x2

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v8, v9

    add-int/2addr v8, v11

    add-int/lit8 v8, v8, -0x7

    aget v7, v7, v8

    add-float/2addr v6, v7

    aput v6, v0, v1

    .line 1233
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    add-int/lit8 v1, v12, 0x2

    aget v6, v0, v1

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    add-int/lit8 v8, v13, 0x1

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v8, v9

    add-int/2addr v8, v11

    add-int/lit8 v8, v8, -0x6

    aget v7, v7, v8

    add-float/2addr v6, v7

    aput v6, v0, v1

    .line 1213
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 1180
    .end local v4           #imax:I
    .end local v5           #jmax:I
    .end local v11           #i:I
    .end local v12           #idx:I
    .end local v13           #j:I
    :cond_3
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 1181
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 1182
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    sub-int v4, v0, v2

    .line 1183
    .restart local v4       #imax:I
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    sub-int v5, v0, v3

    .restart local v5       #jmax:I
    goto/16 :goto_0

    .line 1203
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setRenderModeDirty()V

    goto/16 :goto_1

    .line 1209
    :cond_5
    iput v14, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mVelocityCheckCnt:I

    goto/16 :goto_1

    .line 1212
    .restart local v11       #i:I
    .restart local v13       #j:I
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 1239
    .end local v13           #j:I
    :cond_7
    return-void
.end method

.method private perspectiveM([FFFFF)V
    .locals 9
    .parameter "m"
    .parameter "angle"
    .parameter "aspect"
    .parameter "near"
    .parameter "far"

    .prologue
    const/4 v8, 0x0

    .line 1280
    const-wide/high16 v2, 0x3fe0

    const-wide v4, 0x400921fb54442d18L

    float-to-double v6, p2

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 1281
    .local v0, f:F
    sub-float v1, p4, p5

    .line 1282
    .local v1, range:F
    const/4 v2, 0x0

    div-float v3, v0, p3

    aput v3, p1, v2

    .line 1283
    const/4 v2, 0x1

    aput v8, p1, v2

    .line 1284
    const/4 v2, 0x2

    aput v8, p1, v2

    .line 1285
    const/4 v2, 0x3

    aput v8, p1, v2

    .line 1286
    const/4 v2, 0x4

    aput v8, p1, v2

    .line 1287
    const/4 v2, 0x5

    aput v0, p1, v2

    .line 1288
    const/4 v2, 0x6

    aput v8, p1, v2

    .line 1289
    const/4 v2, 0x7

    aput v8, p1, v2

    .line 1290
    const/16 v2, 0x8

    aput v8, p1, v2

    .line 1291
    const/16 v2, 0x9

    aput v8, p1, v2

    .line 1292
    const/16 v2, 0xa

    div-float v3, p5, v1

    aput v3, p1, v2

    .line 1293
    const/16 v2, 0xb

    const/high16 v3, -0x4080

    aput v3, p1, v2

    .line 1294
    const/16 v2, 0xc

    aput v8, p1, v2

    .line 1295
    const/16 v2, 0xd

    aput v8, p1, v2

    .line 1296
    const/16 v2, 0xe

    mul-float v3, p4, p5

    div-float/2addr v3, v1

    aput v3, p1, v2

    .line 1297
    const/16 v2, 0xf

    aput v8, p1, v2

    .line 1298
    return-void
.end method

.method private playDragSound(I)V
    .locals 9
    .parameter "soundId"

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    .line 1055
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 1056
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    aget v1, v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v8

    .line 1057
    .local v8, streanID:I
    add-int/lit8 v8, v8, -0x1

    .line 1058
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$SoundPoolThread;

    invoke-direct {v7, p0, v8}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$SoundPoolThread;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;I)V

    .line 1059
    .local v7, soundpoolThread:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$SoundPoolThread;
    invoke-virtual {v7}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$SoundPoolThread;->run()V

    .line 1061
    .end local v7           #soundpoolThread:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$SoundPoolThread;
    .end local v8           #streanID:I
    :cond_0
    return-void
.end method

.method private playSound(I)V
    .locals 7
    .parameter "soundId"

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    .line 1048
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isSystemSoundChecked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    aget v1, v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 1051
    :cond_0
    return-void
.end method

.method private recycleBitmap()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1444
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "recycleBitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1448
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1449
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    .line 1452
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1454
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1455
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    .line 1457
    :cond_1
    return-void
.end method

.method private removeDefaultRunnable()V
    .locals 2

    .prologue
    .line 1668
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1671
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "mDefaultRunnable isn\'t null, mParent.removeCallbacks(mDefaultRunnable)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1674
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    .line 1676
    :cond_0
    return-void
.end method

.method private ripple(FFFZ)V
    .locals 8
    .parameter "mx"
    .parameter "my"
    .parameter "intensity"
    .parameter "isTouchRipple"

    .prologue
    .line 1264
    if-eqz p4, :cond_0

    .line 1265
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mPreviousRippleTime:J

    .line 1267
    :cond_0
    const-string v0, "CircleUnlockRippleRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ripple(), mx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", my = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", intensity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 1270
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocity:[F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->ripple([FIIIIFFF)V

    .line 1271
    return-void
.end method

.method private setBackground(Z)V
    .locals 12
    .parameter "isLoadWaterBitmap"

    .prologue
    .line 1461
    const-string v9, "CircleUnlockRippleRenderer"

    const-string v10, "setBackground"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lockscreen_wallpaper_path"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    .line 1466
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    if-nez v9, :cond_0

    .line 1467
    const-string v9, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper_ripple.jpg"

    iput-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    .line 1470
    :cond_0
    const/4 v6, 0x0

    .line 1471
    .local v6, inputStream:Ljava/io/InputStream;
    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1475
    .local v8, wallpaperFile:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v9, "/data/system/enterprise/lso/lockscreen_wallpaper_ripple.jpg"

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1476
    .local v0, adminWallpaperFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1478
    new-instance v6, Ljava/io/FileInputStream;

    .end local v6           #inputStream:Ljava/io/InputStream;
    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1479
    .restart local v6       #inputStream:Ljava/io/InputStream;
    const-string v9, "/data/system/enterprise/lso/lockscreen_wallpaper_ripple.jpg"

    iput-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mWallpaperPath:Ljava/lang/String;

    .line 1516
    :goto_0
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1518
    .local v7, pBitmap:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_1

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    if-nez v9, :cond_2

    .line 1520
    :cond_1
    if-nez v7, :cond_a

    .line 1522
    const-string v9, "CircleUnlockRippleRenderer"

    const-string v10, "pBitmap is null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    :goto_1
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1080451

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    .line 1530
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v9, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1533
    :cond_2
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setTexture(Landroid/graphics/Bitmap;)V

    .line 1535
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 1536
    if-eqz p1, :cond_3

    .line 1537
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x108066a

    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setWaterTexture(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1546
    .end local v0           #adminWallpaperFile:Ljava/io/File;
    .end local v6           #inputStream:Ljava/io/InputStream;
    .end local v7           #pBitmap:Landroid/graphics/Bitmap;
    .end local v8           #wallpaperFile:Ljava/io/File;
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->transferBitmapToJni()V

    .line 1547
    return-void

    .line 1482
    .restart local v0       #adminWallpaperFile:Ljava/io/File;
    .restart local v6       #inputStream:Ljava/io/InputStream;
    .restart local v8       #wallpaperFile:Ljava/io/File;
    :cond_4
    :try_start_1
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1483
    new-instance v6, Ljava/io/FileInputStream;

    .end local v6           #inputStream:Ljava/io/InputStream;
    invoke-direct {v6, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .restart local v6       #inputStream:Ljava/io/InputStream;
    goto :goto_0

    .line 1487
    :cond_5
    new-instance v1, Ljava/io/File;

    const-string v9, "/system/wallpaper/lockscreen_default_wallpaper.jpg"

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1488
    .local v1, defaultWallpaperFile:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v9, "/system/csc_contents/lockscreen_default_wallpaper.jpg"

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1489
    .local v2, defaultWallpaperFileMultiCSC:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v9, "/system/wallpaper/lockscreen_default_wallpaper.png"

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1490
    .local v4, defaultWallpaperFilePng:Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v9, "/system/csc_contents/lockscreen_default_wallpaper.png"

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1492
    .local v3, defaultWallpaperFileMultiCSCPng:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1494
    new-instance v6, Ljava/io/FileInputStream;

    .end local v6           #inputStream:Ljava/io/InputStream;
    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .restart local v6       #inputStream:Ljava/io/InputStream;
    goto/16 :goto_0

    .line 1496
    :cond_6
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1498
    new-instance v6, Ljava/io/FileInputStream;

    .end local v6           #inputStream:Ljava/io/InputStream;
    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .restart local v6       #inputStream:Ljava/io/InputStream;
    goto/16 :goto_0

    .line 1500
    :cond_7
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1502
    new-instance v6, Ljava/io/FileInputStream;

    .end local v6           #inputStream:Ljava/io/InputStream;
    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .restart local v6       #inputStream:Ljava/io/InputStream;
    goto/16 :goto_0

    .line 1504
    :cond_8
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1506
    new-instance v6, Ljava/io/FileInputStream;

    .end local v6           #inputStream:Ljava/io/InputStream;
    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .restart local v6       #inputStream:Ljava/io/InputStream;
    goto/16 :goto_0

    .line 1510
    :cond_9
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1080451

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    goto/16 :goto_0

    .line 1526
    .end local v1           #defaultWallpaperFile:Ljava/io/File;
    .end local v2           #defaultWallpaperFileMultiCSC:Ljava/io/File;
    .end local v3           #defaultWallpaperFileMultiCSCPng:Ljava/io/File;
    .end local v4           #defaultWallpaperFilePng:Ljava/io/File;
    .restart local v7       #pBitmap:Landroid/graphics/Bitmap;
    :cond_a
    const-string v9, "CircleUnlockRippleRenderer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pBitmap.width = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", pBitmap.height = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1540
    .end local v0           #adminWallpaperFile:Ljava/io/File;
    .end local v6           #inputStream:Ljava/io/InputStream;
    .end local v7           #pBitmap:Landroid/graphics/Bitmap;
    .end local v8           #wallpaperFile:Ljava/io/File;
    :catch_0
    move-exception v5

    .line 1542
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2
.end method

.method private setFalseDefaultEffectFlag()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1681
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isFirstTouched:Z

    .line 1682
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->calledIsScreenTurnedOn:Z

    .line 1683
    return-void
.end method

.method private setHoverEnable(Z)V
    .locals 4
    .parameter "isEnable"

    .prologue
    const/high16 v3, 0x40a0

    const v2, 0x3dcccccd

    .line 982
    if-eqz p1, :cond_0

    .line 984
    const-string v0, "Fresnel"

    const-string v1, "setHoverEnable is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    .line 986
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    .line 987
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mHoverEnabled:Z

    .line 996
    :goto_0
    return-void

    .line 991
    :cond_0
    const-string v0, "Fresnel"

    const-string v1, "setHoverEnable is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    .line 993
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    .line 994
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mHoverEnabled:Z

    goto :goto_0
.end method

.method private setModeleConfiguration()V
    .locals 7

    .prologue
    const v0, -0x3dd3cccd

    const/16 v6, 0x15

    const/16 v5, 0x68

    const/16 v4, 0x32

    const/4 v3, 0x0

    .line 369
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v2, 0x2d0

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v2, 0x500

    if-eq v1, v2, :cond_1

    :cond_0
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v2, 0x500

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v2, 0x2d0

    if-ne v1, v2, :cond_2

    .line 371
    :cond_1
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 372
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 373
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 374
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 375
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 376
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 377
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 380
    const v1, 0x3f333333

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 381
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 385
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 386
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 389
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 390
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 393
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 394
    const v0, -0x3e41999a

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 397
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 398
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 399
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 400
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 403
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 404
    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 405
    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 406
    const/high16 v0, 0x4238

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    .line 407
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    .line 408
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    .line 581
    :goto_0
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    .line 582
    return-void

    .line 411
    :cond_2
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v2, 0x21c

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v2, 0x3c0

    if-eq v1, v2, :cond_4

    :cond_3
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v2, 0x3c0

    if-ne v1, v2, :cond_5

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v2, 0x21c

    if-ne v1, v2, :cond_5

    .line 414
    :cond_4
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 415
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 417
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 418
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 419
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 420
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 421
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 424
    const v1, 0x3f19999a

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 425
    const v1, 0x3f666666

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 429
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 430
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 433
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 434
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 437
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 438
    const v0, -0x3e41999a

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 441
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 442
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 443
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 444
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 447
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 448
    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 449
    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 450
    const/high16 v0, 0x4238

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    .line 451
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    .line 452
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    goto :goto_0

    .line 455
    :cond_5
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v2, 0x500

    if-ne v1, v2, :cond_6

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v2, 0x320

    if-eq v1, v2, :cond_7

    :cond_6
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v2, 0x320

    if-ne v1, v2, :cond_9

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v2, 0x500

    if-ne v1, v2, :cond_9

    .line 458
    :cond_7
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 459
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 460
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 461
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 462
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 463
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 464
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 467
    const v1, 0x3f333333

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 468
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 472
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 473
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 476
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 477
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 480
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->hasSystemNavBar:Z

    if-eqz v1, :cond_8

    const v0, -0x3ddacccd

    :cond_8
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 481
    const v0, -0x3e388937

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 484
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 485
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 486
    const/16 v0, 0x13

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 487
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 490
    const/high16 v0, 0x4240

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 491
    const/high16 v0, 0x41d8

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 492
    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 493
    const/high16 v0, 0x4238

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    .line 494
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    .line 495
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    goto/16 :goto_0

    .line 499
    :cond_9
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v2, 0x1e0

    if-ne v1, v2, :cond_a

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v2, 0x320

    if-eq v1, v2, :cond_b

    :cond_a
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    const/16 v2, 0x320

    if-ne v1, v2, :cond_c

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    const/16 v2, 0x1e0

    if-ne v1, v2, :cond_c

    .line 502
    :cond_b
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 503
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 504
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 505
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 506
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 507
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 508
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 511
    const v1, 0x3f19999a

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 512
    const v1, 0x3f59999a

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 516
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 517
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 520
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 521
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 524
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 525
    const v0, -0x3e41999a

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 528
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 529
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 530
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 531
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 534
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 535
    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 536
    const/high16 v0, 0x41e0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 537
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    goto/16 :goto_0

    .line 541
    :cond_c
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    .line 542
    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    .line 543
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    .line 544
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    .line 545
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 546
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 547
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->VCOUNT:I

    .line 550
    const v1, 0x3f333333

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    .line 551
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    .line 555
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 556
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 559
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 560
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 563
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    .line 564
    const v0, -0x3e41999a

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    .line 567
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanXForLandscape:I

    .line 568
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanYForLandscape:I

    .line 569
    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanXForPortrait:I

    .line 570
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->spanYForPortrait:I

    .line 573
    const/high16 v0, 0x4234

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    .line 574
    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    .line 575
    const/high16 v0, 0x41f0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    .line 576
    const/high16 v0, 0x4238

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    .line 577
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    .line 578
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    goto/16 :goto_0
.end method

.method private setRenderModeDirty()V
    .locals 7

    .prologue
    .line 1243
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1244
    .local v0, chectTime:J
    iget-wide v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mPreviousRippleTime:J

    sub-long v2, v0, v4

    .line 1246
    .local v2, differTime:J
    const-wide/16 v4, 0x640

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 1248
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    check-cast v4, Landroid/opengl/GLSurfaceView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 1249
    const-string v4, "CircleUnlockRippleRenderer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RENDERMODE_WHEN_DIRTY!!!, differTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->clearRipple()V

    .line 1252
    :cond_0
    return-void
.end method

.method private setRippleVersion()V
    .locals 4

    .prologue
    .line 1387
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.spen_usp"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1390
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering_ink_effect"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    .line 1391
    const-string v1, "CircleUnlockRippleRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mInkEffectColor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1397
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->is_JBP_Upgrade:Z

    if-nez v1, :cond_2

    .line 1399
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isInkEnable:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    if-eqz v1, :cond_1

    .line 1401
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_INK:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sput-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    .line 1420
    :goto_1
    const-string v1, "CircleUnlockRippleRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Def.MODE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    return-void

    .line 1392
    :catch_0
    move-exception v0

    .line 1393
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1405
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sput-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    goto :goto_1

    .line 1410
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isInkEnable:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    if-eqz v1, :cond_3

    .line 1412
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_WITH_INK:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sput-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    goto :goto_1

    .line 1416
    :cond_3
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_ONLY:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sput-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    goto :goto_1
.end method

.method private setSound()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1558
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 1561
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "show mSoundPool is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    .line 1564
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    .line 1565
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mRDownId:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v5

    .line 1566
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mRUpId:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    .line 1569
    :cond_0
    return-void
.end method

.method private transferBitmapToJni()V
    .locals 1

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->transferBitmapFunc1(Landroid/graphics/Bitmap;)V

    .line 1382
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->transferBitmapFunc2(Landroid/graphics/Bitmap;)V

    .line 1383
    return-void
.end method


# virtual methods
.method public alphaAnimation()V
    .locals 1

    .prologue
    .line 1301
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->reflectionRatio:F

    .line 1302
    return-void
.end method

.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1596
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 1599
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 1600
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    .line 1601
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    .line 1605
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->removeDefaultRunnable()V

    .line 1606
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setFalseDefaultEffectFlag()V

    .line 1607
    return-void
.end method

.method public clearRipple()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1360
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "clearRipple"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    if-nez v0, :cond_1

    .line 1377
    :cond_0
    :goto_0
    return-void

    .line 1365
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocity:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocity:[F

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->max:I

    if-lt v0, v1, :cond_0

    .line 1370
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heights:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 1371
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocity:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 1372
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub1:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 1373
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub1:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 1374
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->heightsSub2:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 1375
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->velocitySub2:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 1376
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    goto :goto_0
.end method

.method public getSoundNum()I
    .locals 1

    .prologue
    .line 1064
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->soundNum:I

    return v0
.end method

.method public getSoundTime()I
    .locals 1

    .prologue
    .line 1070
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->soundTime:I

    return v0
.end method

.method public mouseMove(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "view"
    .parameter "event"

    .prologue
    .line 758
    const-string v0, "CircleUnlockRippleRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event  action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", view = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", src = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    if-nez v0, :cond_0

    .line 766
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "drawCount == 0 Touch Return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    const/4 v0, 0x0

    .line 976
    :goto_0
    return v0

    .line 770
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isFirstTouched:Z

    if-eqz v0, :cond_1

    .line 772
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "isFirstTouched is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->removeDefaultRunnable()V

    .line 774
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setFalseDefaultEffectFlag()V

    .line 784
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    .line 785
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    .line 787
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_WITH_INK:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-eq v0, v1, :cond_2

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_INK:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_4

    .line 789
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 791
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    float-to-int v0, v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    float-to-int v1, v1

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPressure()F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->onTouch(IIIF)V

    .line 794
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit16 v0, v0, 0x4002

    const/16 v1, 0x4002

    if-ne v0, v1, :cond_4

    .line 796
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    float-to-int v0, v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPressure()F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->onTouch(IIIF)V

    .line 800
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    .line 802
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 803
    const/4 v0, 0x0

    goto :goto_0

    .line 807
    :cond_5
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_6

    .line 809
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 810
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->downX:F

    .line 811
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->downY:F

    .line 816
    :cond_6
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLandscape:Z

    if-eqz v0, :cond_13

    .line 818
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustLandscape:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    .line 819
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForLandscape:F

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    .line 820
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    .line 821
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    neg-float v0, v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForLandscape:F

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    .line 831
    :goto_1
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_WITH_INK:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-eq v0, v1, :cond_7

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_INK:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_a

    .line 833
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPressure()F

    move-result v12

    .line 835
    .local v12, pressure:F
    float-to-double v0, v12

    const-wide/high16 v2, 0x3ff0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_8

    .line 837
    const/high16 v12, 0x3f80

    .line 840
    :cond_8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 842
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    float-to-int v0, v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    float-to-int v1, v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v12}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->onTouch(IIIF)V

    .line 845
    :cond_9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit16 v0, v0, 0x4002

    const/16 v1, 0x4002

    if-ne v0, v1, :cond_a

    .line 847
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_14

    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->getClearInkValue()I

    move-result v0

    int-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_14

    .line 849
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "ACTION_MOVE!!! Change ACTION_DOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    float-to-int v0, v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v12}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->onTouch(IIIF)V

    .line 851
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 852
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->downX:F

    .line 853
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->downY:F

    .line 854
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    .line 855
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->prevPressTime:J

    .line 856
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->diffPressTime:J

    .line 857
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    const/high16 v3, 0x4080

    mul-float/2addr v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->ripple(FFFZ)V

    .line 858
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->playSound(I)V

    .line 867
    .end local v12           #pressure:F
    :cond_a
    :goto_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_15

    .line 870
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setHoverEnable(Z)V

    .line 871
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isTouched:Z

    .line 873
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_b

    .line 876
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "MotionEvent.ACTION_DOWN mSoundPool == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0xa

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    .line 879
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    .line 880
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mRDownId:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 881
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->sounds:[I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mRUpId:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 884
    :cond_b
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 885
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->downX:F

    .line 886
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->downY:F

    .line 887
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    .line 888
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->prevPressTime:J

    .line 889
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->diffPressTime:J

    .line 891
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    const/high16 v3, 0x4080

    mul-float/2addr v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->ripple(FFFZ)V

    .line 892
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->playSound(I)V

    .line 933
    :cond_c
    :goto_3
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-eq v0, v1, :cond_d

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_INK:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v0, v1, :cond_12

    .line 936
    :cond_d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_e

    .line 938
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "========================= ACTION_HOVER_ENTER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    :cond_e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_18

    .line 943
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 945
    .local v10, hoverMoveTime:J
    iget-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mPreviousRippleTime:J

    sub-long v0, v10, v0

    const-wide/16 v2, 0x640

    cmp-long v0, v0, v2

    if-lez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mHoverEnabled:Z

    if-nez v0, :cond_f

    .line 947
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "setHoverEnable true ======================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setHoverEnable(Z)V

    .line 951
    :cond_f
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mHoverEnabled:Z

    if-eqz v0, :cond_11

    .line 953
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    const v1, 0x3c23d70a

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    .line 954
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    const/high16 v1, 0x3f80

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    .line 956
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    const v1, 0x3e99999a

    cmpl-float v0, v0, v1

    if-lez v0, :cond_10

    .line 958
    const v0, 0x3e99999a

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    .line 961
    :cond_10
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    const/high16 v1, 0x4220

    cmpl-float v0, v0, v1

    if-lez v0, :cond_11

    .line 963
    const/high16 v0, 0x4220

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    .line 968
    :cond_11
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mHoverIntensity:F

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->ripple(FFFZ)V

    .line 976
    .end local v10           #hoverMoveTime:J
    :cond_12
    :goto_4
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 825
    :cond_13
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioAdjustPortrait:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    .line 826
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->XRatioForPortrait:F

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    .line 827
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    .line 828
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    neg-float v0, v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->YRatioForPortrait:F

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    goto/16 :goto_1

    .line 862
    .restart local v12       #pressure:F
    :cond_14
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    float-to-int v0, v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-static {v0, v1, v2, v12}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->onTouch(IIIF)V

    goto/16 :goto_2

    .line 894
    .end local v12           #pressure:F
    :cond_15
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    .line 896
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setHoverEnable(Z)V

    .line 897
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isTouched:Z

    .line 898
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->downX:F

    sub-float v8, v0, v1

    .line 899
    .local v8, dx:F
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->downY:F

    sub-float v9, v0, v1

    .line 900
    .local v9, dy:F
    float-to-double v0, v8

    const-wide/high16 v2, 0x4000

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    float-to-double v2, v9

    const-wide/high16 v4, 0x4000

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v7, v0

    .line 901
    .local v7, distForwWave:I
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    add-int/2addr v0, v7

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    .line 902
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseX:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->downX:F

    .line 903
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseY:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->downY:F

    .line 905
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->rippleDragThreshold:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_c

    .line 906
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setHoverEnable(Z)V

    .line 907
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->rippleDistance:I

    .line 909
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    const/high16 v3, 0x4040

    mul-float/2addr v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->ripple(FFFZ)V

    .line 910
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->playDragSound(I)V

    .line 911
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    const-wide/16 v4, 0x14

    const/high16 v6, 0x4040

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->startLongPressCheck2(Landroid/view/View;FFJF)V

    goto/16 :goto_3

    .line 914
    .end local v7           #distForwWave:I
    .end local v8           #dx:F
    .end local v9           #dy:F
    :cond_16
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 916
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setHoverEnable(Z)V

    .line 917
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isTouched:Z

    .line 919
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->prevPressTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->diffPressTime:J

    .line 920
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 922
    iget-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->diffPressTime:J

    const-wide/16 v2, 0x258

    cmp-long v0, v0, v2

    if-lez v0, :cond_c

    .line 924
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glY:F

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->glX:F

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    const/high16 v3, 0x4080

    mul-float/2addr v2, v3

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->ripple(FFFZ)V

    .line 925
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->playSound(I)V

    goto/16 :goto_3

    .line 927
    :cond_17
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    .line 928
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mouseInputCount:I

    .line 929
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isTouched:Z

    .line 930
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setHoverEnable(Z)V

    goto/16 :goto_3

    .line 971
    :cond_18
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_12

    .line 973
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "ACTION_HOVER_EXIT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 23
    .parameter "gl"

    .prologue
    .line 689
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    if-nez v1, :cond_1

    .line 691
    const-string v1, "CircleUnlockRippleRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ondrawfrmae drawCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->loadBitmapIfBitmapNull()V

    .line 694
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->onInitInkTextures()V

    .line 695
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->onInitInkSetting(II)V

    .line 697
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_INK:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v1, v2, :cond_4

    .line 698
    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->onInitInkGPU(ZZ)V

    .line 713
    :goto_0
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_WITH_INK:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT_WITH_INK:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v1, v2, :cond_1

    .line 715
    :cond_0
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->clearInkValue()V

    .line 719
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLandscape:Z

    if-nez v1, :cond_7

    .line 721
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->vertices:[F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->indices:[S

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->vertices:[F

    array-length v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    array-length v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->indices:[S

    array-length v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mBitmapRatio:F

    div-float/2addr v8, v9

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    div-int/lit8 v10, v10, 0x2

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    div-int/lit8 v11, v11, 0x2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->refractiveIndex:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->reflectionRatio:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->alphaRatio1:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->alphaRatio2:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v17, v0

    aget-object v16, v16, v17

    const/16 v17, 0x0

    aget v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    const/16 v18, 0x1

    aget v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    const/16 v19, 0x2

    aget v18, v18, v19

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mExponent:F

    move/from16 v22, v0

    invoke-static/range {v1 .. v22}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->onDraw([F[F[SIII[FIIIIFFFFFFFIFFF)V

    .line 745
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    if-lez v1, :cond_2

    .line 746
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->move()V

    .line 748
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    .line 750
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    .line 752
    :cond_3
    return-void

    .line 699
    :cond_4
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_LIGHT:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v1, v2, :cond_5

    .line 700
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->onInitInkGPU(ZZ)V

    goto/16 :goto_0

    .line 701
    :cond_5
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def;->MODE:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    sget-object v2, Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;->RIPPLE_WITH_INK:Lcom/android/internal/policy/impl/keyguard/sec/inkeffect/Def$ModeType;

    if-ne v1, v2, :cond_6

    .line 702
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->onInitInkGPU(ZZ)V

    goto/16 :goto_0

    .line 704
    :cond_6
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->onInitInkGPU(ZZ)V

    goto/16 :goto_0

    .line 734
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->vertices:[F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->indices:[S

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->vertices:[F

    array-length v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->gpuHeights:[F

    array-length v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->indices:[S

    array-length v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_WIDTH:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->MESH_SIZE_HEIGHT:I

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mBitmapRatio:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_WIDTH:I

    div-int/lit8 v10, v10, 0x2

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->NUM_DETAILS_HEIGHT:I

    div-int/lit8 v11, v11, 0x2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->refractiveIndex:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->reflectionRatio:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->alphaRatio1:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->alphaRatio2:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v17, v0

    aget-object v16, v16, v17

    const/16 v17, 0x0

    aget v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    const/16 v18, 0x1

    aget v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->inkColorFromSetting:[[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mInkEffectColor:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    const/16 v19, 0x2

    aget v18, v18, v19

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mFresnelRatio:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mSpecularRatio:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mExponent:F

    move/from16 v22, v0

    invoke-static/range {v1 .. v22}, Lcom/android/internal/policy/impl/keyguard/sec/JniWaterRippleRender;->onDraw([F[F[SIII[FIIIIFFFFFFFIFFF)V

    goto/16 :goto_1
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 17
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 600
    const-string v2, "CircleUnlockRippleRenderer"

    const-string v3, "onSurfaceChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const-string v2, "CircleUnlockRippleRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "windowWidth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", windowHeight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_1

    .line 605
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLandscape:Z

    .line 612
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLandscape:Z

    if-eqz v2, :cond_3

    .line 615
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForLandscape:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    .line 616
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    .line 617
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    .line 619
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->hasSystemNavBar:Z

    if-eqz v2, :cond_0

    .line 622
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->HDMI_VIEW_HEIGHT_FOR_P4_NOTE_10_1:I

    move/from16 v0, p3

    if-ne v0, v2, :cond_2

    .line 624
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    .line 625
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->HDMI_WIDOW_HEIGHT_FOR_P4_NOTE_10_1:I

    move/from16 v0, p2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    .line 650
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float v13, v2, v3

    .line 652
    .local v13, ratio:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->view:[F

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f80

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 653
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->proj:[F

    const/high16 v4, 0x4234

    const v6, 0x3dcccccd

    const/high16 v7, 0x43fa

    move-object/from16 v2, p0

    move v5, v13

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->perspectiveM([FFFFF)V

    .line 655
    const/4 v14, 0x0

    .line 656
    .local v14, translateX:F
    const/4 v15, 0x0

    .line 657
    .local v15, translateY:F
    const/16 v16, 0x0

    .line 659
    .local v16, translateZ:F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLandscape:Z

    if-eqz v2, :cond_4

    .line 661
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateXForLandscape:F

    .line 662
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateYForLandscape:F

    .line 663
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateZForLandscape:F

    move/from16 v16, v0

    .line 673
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->world:[F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 674
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->view:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->world:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 675
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v3, 0x0

    move/from16 v0, v16

    invoke-static {v2, v3, v14, v15, v0}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->proj:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->wvp:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 678
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    .line 679
    return-void

    .line 609
    .end local v13           #ratio:F
    .end local v14           #translateX:F
    .end local v15           #translateY:F
    .end local v16           #translateZ:F
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLandscape:Z

    goto/16 :goto_0

    .line 629
    :cond_2
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    .line 630
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    goto/16 :goto_1

    .line 637
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForPortrait:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->intensityForRipple:F

    .line 638
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    .line 639
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->windowHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    .line 641
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->hasSystemNavBar:Z

    if-eqz v2, :cond_0

    .line 643
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenWidth:I

    .line 644
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mScreenHeight:I

    goto/16 :goto_1

    .line 667
    .restart local v13       #ratio:F
    .restart local v14       #translateX:F
    .restart local v15       #translateY:F
    .restart local v16       #translateZ:F
    :cond_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateXForPortrait:F

    .line 668
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateYForPortrait:F

    .line 669
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->translateZForPortrait:F

    move/from16 v16, v0

    goto/16 :goto_2
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .parameter "gl"
    .parameter "config"

    .prologue
    .line 590
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 1610
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1612
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->clearRipple()V

    .line 1614
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->removeDefaultRunnable()V

    .line 1615
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setFalseDefaultEffectFlag()V

    .line 1616
    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    .prologue
    .line 1588
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->removeDefaultRunnable()V

    .line 1592
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->calledIsScreenTurnedOn:Z

    .line 1593
    return-void
.end method

.method public setRippleBackground()V
    .locals 2

    .prologue
    .line 1551
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "setRippleBackground()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setBackground(Z)V

    .line 1553
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->drawCount:I

    .line 1554
    return-void
.end method

.method public setSoundNum(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 1074
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->soundNum:I

    .line 1075
    return-void
.end method

.method public setSoundRID(II)V
    .locals 0
    .parameter "RDownId"
    .parameter "RUpId"

    .prologue
    .line 1332
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mRDownId:I

    .line 1333
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mRUpId:I

    .line 1334
    return-void
.end method

.method public setSoundTime(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 1078
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->soundTime:I

    .line 1079
    return-void
.end method

.method public setTexture(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "pBitmap"

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1308
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    .line 1312
    :cond_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    .line 1314
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mBitmapRatio:F

    .line 1315
    const-string v0, "CircleUnlockRippleRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bitmapOriginal.width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bitmapOriginal.height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapOriginal:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    return-void
.end method

.method public setWaterTexture(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "pBitmap"

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1322
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1323
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    .line 1326
    :cond_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    .line 1328
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 1574
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setSound()V

    .line 1577
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->checkSound()V

    .line 1578
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setRippleVersion()V

    .line 1580
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->clearRipple()V

    .line 1583
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->isFirstTouched:Z

    .line 1584
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->setFalseDefaultEffectFlag()V

    .line 1585
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 3
    .parameter "startDelay"
    .parameter "rect"

    .prologue
    .line 1620
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "showUnlockAffordance()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    const-string v0, "CircleUnlockRippleRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calledIsScreenTurnedOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->calledIsScreenTurnedOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->removeDefaultRunnable()V

    .line 1624
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->calledIsScreenTurnedOn:Z

    if-eqz v0, :cond_1

    .line 1626
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->defaultX:F

    .line 1627
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->defaultY:F

    .line 1629
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 1631
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "mDefaultRunnable,  new Runnable()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$3;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    .line 1660
    :cond_0
    const-string v0, "CircleUnlockRippleRenderer"

    const-string v1, "mDefaultRunnable, postDelayed()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1663
    :cond_1
    return-void
.end method

.method public startLongPressCheck(Landroid/view/View;FFJF)V
    .locals 1
    .parameter "view"
    .parameter "mouseX"
    .parameter "mouseY"
    .parameter "delay"
    .parameter "pIntensity"

    .prologue
    .line 1000
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->tmx:F

    .line 1001
    iput p3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->tmy:F

    .line 1003
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 1005
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$1;

    invoke-direct {v0, p0, p6}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$1;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;F)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    .line 1016
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p4, p5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1017
    return-void
.end method

.method public startLongPressCheck2(Landroid/view/View;FFJF)V
    .locals 1
    .parameter "view"
    .parameter "mouseX"
    .parameter "mouseY"
    .parameter "delay"
    .parameter "pIntensity"

    .prologue
    .line 1021
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->tmx:F

    .line 1022
    iput p3, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->tmy:F

    .line 1024
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 1026
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$2;

    invoke-direct {v0, p0, p6, p4, p5}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer$2;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;FJ)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    .line 1040
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p4, p5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1041
    return-void
.end method

.method public stopLongPressCheck(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockRippleRenderer;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1045
    return-void
.end method
