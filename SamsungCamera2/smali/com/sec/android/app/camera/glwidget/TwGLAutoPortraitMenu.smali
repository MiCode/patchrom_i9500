.class public Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLAutoPortraitMenu.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu$OnAutoPortraitDetectingStoppedListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DETECT_AREA_BOTTOM_BOUNDARY:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DETECT_AREA_LEFT_BOUNDARY:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DETECT_AREA_MAXIMUM_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DETECT_AREA_MAXIMUM_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DETECT_AREA_MINIMUM_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DETECT_AREA_MINIMUM_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DETECT_AREA_PADDING:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DETECT_AREA_RIGHT_BOUNDARY:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final DETECT_AREA_TOP_BOUNDARY:I = 0x0

.field private static final DETECT_TIMER_DURATION:I = 0x3e8

.field private static final FACE_POSITION_BOTTOM:I = 0x4

.field private static final FACE_POSITION_CLOSE:I = 0x20

.field private static final FACE_POSITION_DETECTED:I = 0x5

.field private static final FACE_POSITION_GOOD:I = 0x6

.field private static final FACE_POSITION_LEFT:I = 0x1

.field private static final FACE_POSITION_NOT_FOUND:I = 0x7

.field private static final FACE_POSITION_RIGHT:I = 0x3

.field private static final FACE_POSITION_TOP:I = 0x2

.field private static final FACE_POSITION_UNKNOWN:I = 0x0

.field protected static final KEY_CAMERA_AUTO_PORTRAIT_HEIGHT:Ljava/lang/String; = "pref_camera_auto_portrait_height"

.field protected static final KEY_CAMERA_AUTO_PORTRAIT_POS_X:Ljava/lang/String; = "pref_camera_auto_portrait_pos_x"

.field protected static final KEY_CAMERA_AUTO_PORTRAIT_POS_Y:Ljava/lang/String; = "pref_camera_auto_portrait_pos_y"

.field protected static final KEY_CAMERA_AUTO_PORTRAIT_WIDTH:Ljava/lang/String; = "pref_camera_auto_portrait_width"

#the value of this static final field might be set in the static constructor
.field private static final SCREEN_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SCREEN_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SIDEMENU_WIDTH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TwGLAutoPortraitMenu"

.field private static final TTS_STRING_BOTTOM:I = 0x7f0a01ef

.field private static final TTS_STRING_CLOSE:I = 0x7f0a01ed

.field private static final TTS_STRING_DETECTED:I = 0x7f0a01ea

.field private static final TTS_STRING_HOLD:I = 0x7f0a01ec

.field private static final TTS_STRING_LEFT:I = 0x7f0a01f0

.field private static final TTS_STRING_NOT_FOUND:I = 0x7f0a01eb

.field private static final TTS_STRING_RIGHT:I = 0x7f0a01f1

.field private static final TTS_STRING_TOP:I = 0x7f0a01ee


# instance fields
.field private mAutoPortraitDirection:I

.field private mBaseOrientation:I

.field private mBlind:Lcom/sec/android/glview/TwGLNinePatchTexture;

.field private mDectAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

.field private mDetectAreaArray:[I

.field private mDirectionTTSres:[[I

.field private mFirstOrientation:Z

.field private mIsDetecting:Z

.field private mOnAutoPortraitDetectingStoppedListener:Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu$OnAutoPortraitDetectingStoppedListener;

.field private mSensingOrientation:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mTimer:Ljava/util/Timer;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private sensorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field public sobject:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    const v0, 0x7f080314

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->SCREEN_WIDTH:I

    .line 29
    const v0, 0x7f080315

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->SCREEN_HEIGHT:I

    .line 30
    const v0, 0x7f080005

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->SIDEMENU_WIDTH:I

    .line 32
    const v0, 0x7f08017e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->DETECT_AREA_MAXIMUM_WIDTH:I

    .line 33
    const v0, 0x7f08017f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->DETECT_AREA_MAXIMUM_HEIGHT:I

    .line 34
    const v0, 0x7f080180

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->DETECT_AREA_MINIMUM_WIDTH:I

    .line 35
    const v0, 0x7f080181

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->DETECT_AREA_MINIMUM_HEIGHT:I

    .line 37
    const v0, 0x7f080184

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->DETECT_AREA_PADDING:I

    .line 38
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->DETECT_AREA_PADDING:I

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->DETECT_AREA_TOP_BOUNDARY:I

    .line 39
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->SCREEN_HEIGHT:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->DETECT_AREA_PADDING:I

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->DETECT_AREA_BOTTOM_BOUNDARY:I

    .line 40
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->SIDEMENU_WIDTH:I

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->DETECT_AREA_LEFT_BOUNDARY:I

    .line 41
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->SCREEN_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->SIDEMENU_WIDTH:I

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->DETECT_AREA_RIGHT_BOUNDARY:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 14
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "menuResourceDepot"

    .prologue
    .line 103
    const/4 v6, 0x6

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 69
    const/4 v1, 0x4

    new-array v1, v1, [[I

    const/4 v2, 0x0

    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_3

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mDirectionTTSres:[[I

    .line 86
    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_4

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mDetectAreaArray:[I

    .line 87
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mIsDetecting:Z

    .line 89
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mAutoPortraitDirection:I

    .line 90
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mBaseOrientation:I

    .line 91
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mFirstOrientation:Z

    .line 92
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mSensingOrientation:Z

    .line 93
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->sobject:Ljava/lang/Object;

    .line 105
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->setCaptureEnabled(Z)V

    .line 107
    const/4 v11, 0x0

    .line 108
    .local v11, pos_x:I
    const/4 v12, 0x0

    .line 109
    .local v12, pos_y:I
    const/4 v13, 0x0

    .line 110
    .local v13, width:I
    const/4 v10, 0x0

    .line 113
    .local v10, height:I
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_auto_portrait_pos_x"

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->DETECT_AREA_LEFT_BOUNDARY:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 114
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_auto_portrait_pos_y"

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->DETECT_AREA_TOP_BOUNDARY:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 115
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_auto_portrait_width"

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->DETECT_AREA_MAXIMUM_WIDTH:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 116
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_camera_auto_portrait_height"

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->DETECT_AREA_MAXIMUM_HEIGHT:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ComboPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 124
    :goto_0
    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const/16 v2, 0x8

    invoke-direct {v1, p1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mDectAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    .line 125
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mDectAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    int-to-float v2, v11

    int-to-float v3, v12

    int-to-float v4, v13

    int-to-float v5, v10

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 126
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mDectAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->DETECT_AREA_MAXIMUM_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->DETECT_AREA_MAXIMUM_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxSizeF(FF)V

    .line 127
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mDectAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->DETECT_AREA_MINIMUM_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->DETECT_AREA_MINIMUM_HEIGHT:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMinSizeF(FF)V

    .line 128
    new-instance v8, Landroid/graphics/RectF;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->DETECT_AREA_LEFT_BOUNDARY:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->DETECT_AREA_TOP_BOUNDARY:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->DETECT_AREA_RIGHT_BOUNDARY:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->DETECT_AREA_BOTTOM_BOUNDARY:I

    int-to-float v4, v4

    invoke-direct {v8, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 129
    .local v8, boundRecf:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mDectAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v1, v8}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxBoundRectF(Landroid/graphics/RectF;)V

    .line 131
    new-instance v1, Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->SCREEN_WIDTH:I

    int-to-float v5, v5

    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->SCREEN_HEIGHT:I

    int-to-float v6, v6

    const v7, 0x7f020055

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mBlind:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 132
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mBlind:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setVisibility(I)V

    .line 133
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mBlind:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const v2, 0x3f666666

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setAlpha(F)V

    .line 135
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mBlind:Lcom/sec/android/glview/TwGLNinePatchTexture;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 136
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mDectAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 138
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mSensorManager:Landroid/hardware/SensorManager;

    .line 139
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->sensorList:Ljava/util/List;

    .line 140
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->sensorList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v2, p0, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 141
    return-void

    .line 117
    .end local v8           #boundRecf:Landroid/graphics/RectF;
    :catch_0
    move-exception v9

    .line 118
    .local v9, e:Ljava/lang/ClassCastException;
    sget v11, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->DETECT_AREA_LEFT_BOUNDARY:I

    .line 119
    sget v12, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->DETECT_AREA_TOP_BOUNDARY:I

    .line 120
    sget v13, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->DETECT_AREA_MAXIMUM_WIDTH:I

    .line 121
    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->DETECT_AREA_MAXIMUM_HEIGHT:I

    goto/16 :goto_0

    .line 69
    :array_0
    .array-data 0x4
        0xeet 0x1t 0xat 0x7ft
        0xf1t 0x1t 0xat 0x7ft
        0xeft 0x1t 0xat 0x7ft
        0xf0t 0x1t 0xat 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0xf1t 0x1t 0xat 0x7ft
        0xeft 0x1t 0xat 0x7ft
        0xf0t 0x1t 0xat 0x7ft
        0xeet 0x1t 0xat 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0xeft 0x1t 0xat 0x7ft
        0xf0t 0x1t 0xat 0x7ft
        0xeet 0x1t 0xat 0x7ft
        0xf1t 0x1t 0xat 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0xf0t 0x1t 0xat 0x7ft
        0xeet 0x1t 0xat 0x7ft
        0xf1t 0x1t 0xat 0x7ft
        0xeft 0x1t 0xat 0x7ft
    .end array-data

    .line 86
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public getDetectArea()[I
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mDetectAreaArray:[I

    return-object v0
.end method

.method public getDirectionString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, direction:I
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->getLastOrientation()I

    move-result v1

    .line 219
    .local v1, orientation:I
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mAutoPortraitDirection:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mAutoPortraitDirection:I

    const/4 v3, 0x4

    if-gt v2, v3, :cond_0

    .line 220
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mAutoPortraitDirection:I

    add-int/lit8 v0, v2, -0x1

    .line 223
    :cond_0
    if-lez v1, :cond_1

    .line 224
    div-int/lit8 v1, v1, 0x5a

    .line 227
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mDirectionTTSres:[[I

    aget-object v3, v3, v1

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public isDetecting()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mIsDetecting:Z

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "event"
    .parameter "arg1"

    .prologue
    .line 334
    return-void
.end method

.method public onBack()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 296
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mIsDetecting:Z

    if-eqz v0, :cond_4

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mOnAutoPortraitDetectingStoppedListener:Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu$OnAutoPortraitDetectingStoppedListener;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mOnAutoPortraitDetectingStoppedListener:Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu$OnAutoPortraitDetectingStoppedListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu$OnAutoPortraitDetectingStoppedListener;->onAutoPortraitDetectingStopped()V

    .line 304
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 306
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    .line 310
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 311
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mTimer:Ljava/util/Timer;

    .line 314
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_3

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 316
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mSensorManager:Landroid/hardware/SensorManager;

    .line 319
    :cond_3
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onBack()V

    .line 320
    return-void

    .line 301
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_0
.end method

.method public onHide()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mDectAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setVisibility(I)V

    .line 293
    return-void
.end method

.method public onInit(I)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 285
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 324
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 338
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mFirstOrientation:Z

    if-eqz v1, :cond_0

    .line 339
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v5

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mBaseOrientation:I

    .line 340
    const-string v1, "TwGLAutoPortraitMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSensorChanged mBaseOrientation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mBaseOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iput-boolean v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mFirstOrientation:Z

    .line 344
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mBaseOrientation:I

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v5

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 346
    .local v0, calculate:I
    const/16 v1, 0x2d

    if-le v0, v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mSensingOrientation:Z

    if-eqz v1, :cond_1

    .line 347
    iput-boolean v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mSensingOrientation:Z

    .line 348
    const-string v1, "TwGLAutoPortraitMenu"

    const-string v2, "onSensorChanged !!!!!!!!!!!!!!!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_1
    return-void
.end method

.method public onShow()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mDectAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setVisibility(I)V

    .line 289
    return-void
.end method

.method public onSpeakGuideTTS()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f0a01eb

    const/4 v3, 0x0

    .line 231
    const-string v0, ""

    .line 233
    .local v0, guideTTS:Ljava/lang/String;
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mAutoPortraitDirection:I

    sparse-switch v1, :sswitch_data_0

    .line 261
    const-string v0, "default"

    .line 264
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1, v0, v3, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 267
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mAutoPortraitDirection:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mIsDetecting:Z

    if-eqz v1, :cond_1

    .line 268
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->onAutoPortraitDetectionSuccess()V

    .line 269
    iput-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mIsDetecting:Z

    .line 270
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mTimer:Ljava/util/Timer;

    if-eqz v1, :cond_1

    .line 271
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 272
    iput-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mTimer:Ljava/util/Timer;

    .line 275
    :cond_1
    return-void

    .line 235
    :sswitch_0
    const-string v1, "TwGLAutoPortraitMenu"

    const-string v2, "FACE_POSITION_UNKNOWN"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 237
    goto :goto_0

    .line 239
    :sswitch_1
    const-string v1, "TwGLAutoPortraitMenu"

    const-string v2, "mAutoPortraitDirection : good"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0a01ec

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 241
    goto :goto_0

    .line 243
    :sswitch_2
    const-string v1, "TwGLAutoPortraitMenu"

    const-string v2, "mAutoPortraitDirection : not found"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 245
    goto :goto_0

    .line 247
    :sswitch_3
    const-string v1, "TwGLAutoPortraitMenu"

    const-string v2, "mAutoPortraitDirection : detected"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0a01ea

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 249
    goto :goto_0

    .line 251
    :sswitch_4
    const-string v1, "TwGLAutoPortraitMenu"

    const-string v2, "mAutoPortraitDirection : close"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const v2, 0x7f0a01ed

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 253
    goto :goto_0

    .line 258
    :sswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->getDirectionString()Ljava/lang/String;

    move-result-object v0

    .line 259
    goto :goto_0

    .line 233
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_5
        0x2 -> :sswitch_5
        0x3 -> :sswitch_5
        0x4 -> :sswitch_5
        0x5 -> :sswitch_3
        0x6 -> :sswitch_1
        0x7 -> :sswitch_2
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->setTouchHandled(Z)V

    .line 328
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenuItems()V

    .line 330
    :cond_0
    return-void
.end method

.method public setDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 152
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mAutoPortraitDirection:I

    .line 153
    return-void
.end method

.method public setOnAutoPortraitDetectingStoppedListener(Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu$OnAutoPortraitDetectingStoppedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 278
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mOnAutoPortraitDetectingStoppedListener:Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu$OnAutoPortraitDetectingStoppedListener;

    .line 279
    return-void
.end method

.method public startDetect()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 156
    const-string v0, "TwGLAutoPortraitMenu"

    const-string v1, "startDetect"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mIsDetecting:Z

    .line 158
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mAutoPortraitDirection:I

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mDetectAreaArray:[I

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mDectAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getLeft()F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mDetectAreaArray:[I

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mDectAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getTop()F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mDetectAreaArray:[I

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mDectAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getRight()F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mDetectAreaArray:[I

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mDectAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getBottom()F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Lcom/sec/android/app/camera/ComboPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 166
    .local v6, editor:Landroid/content/SharedPreferences$Editor;
    const-string v0, "pref_camera_auto_portrait_pos_x"

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mDectAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getLeft()F

    move-result v1

    float-to-int v1, v1

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 167
    const-string v0, "pref_camera_auto_portrait_pos_y"

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mDectAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getTop()F

    move-result v1

    float-to-int v1, v1

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 168
    const-string v0, "pref_camera_auto_portrait_width"

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mDectAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getWidth()F

    move-result v1

    float-to-int v1, v1

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 169
    const-string v0, "pref_camera_auto_portrait_height"

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mDectAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getHeight()F

    move-result v1

    float-to-int v1, v1

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 170
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mBlind:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideBaseMenu()V

    .line 175
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, v1, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 176
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->onInit(I)V

    .line 178
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mTimer:Ljava/util/Timer;

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 186
    return-void
.end method

.method public stopDetect()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 189
    const-string v0, "TwGLAutoPortraitMenu"

    const-string v1, "stopDetect"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mIsDetecting:Z

    .line 191
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mAutoPortraitDirection:I

    .line 192
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mFirstOrientation:Z

    .line 193
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mBaseOrientation:I

    .line 194
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mSensingOrientation:Z

    .line 196
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mBlind:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenu()V

    .line 199
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 201
    iput-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 206
    iput-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mTimer:Ljava/util/Timer;

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    .line 210
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 211
    iput-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLAutoPortraitMenu;->mSensorManager:Landroid/hardware/SensorManager;

    .line 213
    :cond_2
    return-void
.end method
