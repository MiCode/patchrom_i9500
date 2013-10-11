.class final Landroid/view/WindowOrientationListener$SensorEventListenerImpl;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SensorEventListenerImpl"
.end annotation


# static fields
.field private static final ACCELERATION_TOLERANCE:F = 4.0f

.field private static final ACCELEROMETER_DATA_X:I = 0x0

.field private static final ACCELEROMETER_DATA_Y:I = 0x1

.field private static final ACCELEROMETER_DATA_Z:I = 0x2

.field private static final ADJACENT_ORIENTATION_ANGLE_GAP:I = 0x2d

.field private static final FD_ORIENTATIN_TOLERANCE:[[I = null

.field private static final FILTER_TIME_CONSTANT_MS:F = 200.0f

.field private static final FLAT_ANGLE:F = 75.0f

.field private static final FLAT_TIME_NANOS:J = 0x3b9aca00L

.field private static final MAX_ACCELERATION_MAGNITUDE:[F = null

.field private static final MAX_FILTER_DELTA_TIME_NANOS:J = 0x3b9aca00L

.field private static final MIN_ACCELERATION_MAGNITUDE:[F = null

.field private static final NANOS_PER_MS:J = 0xf4240L

.field private static final NEAR_ZERO_MAGNITUDE:F = 1.0f

.field private static final PROPOSAL_MIN_TIME_SINCE_ACCELERATION_ENDED_NANOS:J = 0x1dcd6500L

.field private static final PROPOSAL_MIN_TIME_SINCE_FLAT_ENDED_NANOS:J = 0x1dcd6500L

.field private static final PROPOSAL_MIN_TIME_SINCE_SWING_ENDED_NANOS:J = 0x11e1a300L

.field private static final PROPOSAL_SETTLE_TIME_NANOS:J = 0x2625a00L

.field private static final RADIANS_TO_DEGREES:F = 57.29578f

.field private static final SWING_AWAY_ANGLE_DELTA:F = 20.0f

.field private static final SWING_TIME_NANOS:J = 0x11e1a300L

.field private static final TILT_HISTORY_SIZE:I = 0x28

.field private static final TILT_TOLERANCE:[[I

.field private static final lowerBound_portrait:[I

.field private static final lowerBound_portrait_2:[I

.field private static final lowerBound_portrait_3:[I

.field private static final lowerBound_portrait_4:[I

.field private static final lowerBound_wide:[I

.field private static mCount:I

.field private static mFaceDetectionManager:Lcom/sec/android/smartface/SmartFaceManager;

.field private static mfaceDetectionm:Lcom/sec/android/facedetection/FaceDetectionManager;

.field private static final tilt_level:[I

.field private static final upperBound_portrait:[I

.field private static final upperBound_portrait_2:[I

.field private static final upperBound_portrait_3:[I

.field private static final upperBound_portrait_4:[I

.field private static final upperBound_wide:[I


# instance fields
.field private MAX_TILT:I

.field private mAccelerationTimestampNanos:J

.field private mFeatureofDevice:I

.field private mFlatTimestampNanos:J

.field private mLastFilteredTimestampNanos:J

.field private mLastFilteredX:F

.field private mLastFilteredY:F

.field private mLastFilteredZ:F

.field private final mOrientationListener:Landroid/view/WindowOrientationListener;

.field private mPm:Landroid/os/PowerManager;

.field private mPredictedRotation:I

.field private mPredictedRotationTimestampNanos:J

.field private mProposedRotation:I

.field private mSwingTimestampNanos:J

.field private mTiltHistory:[F

.field private mTiltHistoryIndex:I

.field private mTiltHistoryTimestampNanos:[J

.field private mlowerBound:[I

.field private mupperBound:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x4

    .line 732
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    sput-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->MIN_ACCELERATION_MAGNITUDE:[F

    .line 738
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    sput-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->MAX_ACCELERATION_MAGNITUDE:[F

    .line 760
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v6

    sput-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->TILT_TOLERANCE:[[I

    .line 775
    new-array v0, v2, [I

    fill-array-data v0, :array_6

    sput-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->lowerBound_wide:[I

    .line 776
    new-array v0, v2, [I

    fill-array-data v0, :array_7

    sput-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->upperBound_wide:[I

    .line 779
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    sput-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->tilt_level:[I

    .line 781
    new-array v0, v2, [I

    fill-array-data v0, :array_9

    sput-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->lowerBound_portrait:[I

    .line 782
    new-array v0, v2, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->upperBound_portrait:[I

    .line 784
    new-array v0, v2, [I

    fill-array-data v0, :array_b

    sput-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->lowerBound_portrait_2:[I

    .line 785
    new-array v0, v2, [I

    fill-array-data v0, :array_c

    sput-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->upperBound_portrait_2:[I

    .line 787
    new-array v0, v2, [I

    fill-array-data v0, :array_d

    sput-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->lowerBound_portrait_3:[I

    .line 788
    new-array v0, v2, [I

    fill-array-data v0, :array_e

    sput-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->upperBound_portrait_3:[I

    .line 790
    new-array v0, v2, [I

    fill-array-data v0, :array_f

    sput-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->lowerBound_portrait_4:[I

    .line 791
    new-array v0, v2, [I

    fill-array-data v0, :array_10

    sput-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->upperBound_portrait_4:[I

    .line 799
    new-array v0, v2, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_11

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_12

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_13

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_14

    aput-object v1, v0, v6

    sput-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->FD_ORIENTATIN_TOLERANCE:[[I

    .line 838
    const/16 v0, 0x32

    sput v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mCount:I

    return-void

    .line 732
    :array_0
    .array-data 0x4
        0x14t 0xd0t 0x99t 0x40t
        0x14t 0xd0t 0xb9t 0x40t
        0x14t 0xd0t 0xd9t 0x40t
        0x14t 0xd0t 0xf9t 0x40t
    .end array-data

    .line 738
    :array_1
    .array-data 0x4
        0xat 0xe8t 0x6ct 0x41t
        0xat 0xe8t 0x5ct 0x41t
        0xat 0xe8t 0x4ct 0x41t
        0xat 0xe8t 0x3ct 0x41t
    .end array-data

    .line 760
    :array_2
    .array-data 0x4
        0xbct 0xfft 0xfft 0xfft
        0x44t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0xbct 0xfft 0xfft 0xfft
        0x44t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0xbct 0xfft 0xfft 0xfft
        0x44t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0xbct 0xfft 0xfft 0xfft
        0x44t 0x0t 0x0t 0x0t
    .end array-data

    .line 775
    :array_6
    .array-data 0x4
        0x40t 0x1t 0x0t 0x0t
        0x41t 0x0t 0x0t 0x0t
        0x8ct 0x0t 0x0t 0x0t
        0xf5t 0x0t 0x0t 0x0t
    .end array-data

    .line 776
    :array_7
    .array-data 0x4
        0x28t 0x0t 0x0t 0x0t
        0x73t 0x0t 0x0t 0x0t
        0xdct 0x0t 0x0t 0x0t
        0x27t 0x1t 0x0t 0x0t
    .end array-data

    .line 779
    :array_8
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
    .end array-data

    .line 781
    :array_9
    .array-data 0x4
        0x4at 0x1t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x96t 0x0t 0x0t 0x0t
        0xf0t 0x0t 0x0t 0x0t
    .end array-data

    .line 782
    :array_a
    .array-data 0x4
        0x1et 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0xd2t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
    .end array-data

    .line 784
    :array_b
    .array-data 0x4
        0x4ft 0x1t 0x0t 0x0t
        0x41t 0x0t 0x0t 0x0t
        0x9bt 0x0t 0x0t 0x0t
        0xf5t 0x0t 0x0t 0x0t
    .end array-data

    .line 785
    :array_c
    .array-data 0x4
        0x19t 0x0t 0x0t 0x0t
        0x73t 0x0t 0x0t 0x0t
        0xcdt 0x0t 0x0t 0x0t
        0x27t 0x1t 0x0t 0x0t
    .end array-data

    .line 787
    :array_d
    .array-data 0x4
        0x54t 0x1t 0x0t 0x0t
        0x46t 0x0t 0x0t 0x0t
        0xa0t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
    .end array-data

    .line 788
    :array_e
    .array-data 0x4
        0x14t 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x22t 0x1t 0x0t 0x0t
    .end array-data

    .line 790
    :array_f
    .array-data 0x4
        0x5et 0x1t 0x0t 0x0t
        0x50t 0x0t 0x0t 0x0t
        0xaat 0x0t 0x0t 0x0t
        0x4t 0x1t 0x0t 0x0t
    .end array-data

    .line 791
    :array_10
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xbet 0x0t 0x0t 0x0t
        0x18t 0x1t 0x0t 0x0t
    .end array-data

    .line 799
    :array_11
    .array-data 0x4
        0x4at 0x1t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
    .end array-data

    :array_12
    .array-data 0x4
        0x3ct 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
    .end array-data

    :array_13
    .array-data 0x4
        0x96t 0x0t 0x0t 0x0t
        0xd2t 0x0t 0x0t 0x0t
    .end array-data

    :array_14
    .array-data 0x4
        0xfat 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/view/WindowOrientationListener;)V
    .locals 3
    .parameter "orientationListener"

    .prologue
    const/16 v2, 0x28

    const/4 v1, 0x4

    .line 841
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 747
    const/16 v0, 0x3c

    iput v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->MAX_TILT:I

    .line 793
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mlowerBound:[I

    .line 794
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mupperBound:[I

    .line 833
    new-array v0, v2, [F

    iput-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistory:[F

    .line 834
    new-array v0, v2, [J

    iput-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    .line 837
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mFeatureofDevice:I

    .line 842
    iput-object p1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    .line 843
    invoke-direct {p0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->reset()V

    .line 845
    iget-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    #getter for: Landroid/view/WindowOrientationListener;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/view/WindowOrientationListener;->access$300(Landroid/view/WindowOrientationListener;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    #getter for: Landroid/view/WindowOrientationListener;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/view/WindowOrientationListener;->access$300(Landroid/view/WindowOrientationListener;)Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mPm:Landroid/os/PowerManager;

    .line 846
    return-void

    .line 793
    :array_0
    .array-data 0x4
        0x4at 0x1t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x96t 0x0t 0x0t 0x0t
        0xf0t 0x0t 0x0t 0x0t
    .end array-data

    .line 794
    :array_1
    .array-data 0x4
        0x1et 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0xd2t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/view/WindowOrientationListener;I)V
    .locals 3
    .parameter "orientationListener"
    .parameter "feature"

    .prologue
    const/16 v1, 0x28

    const/4 v2, 0x4

    .line 847
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 747
    const/16 v0, 0x3c

    iput v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->MAX_TILT:I

    .line 793
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mlowerBound:[I

    .line 794
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mupperBound:[I

    .line 833
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistory:[F

    .line 834
    new-array v0, v1, [J

    iput-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    .line 837
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mFeatureofDevice:I

    .line 848
    iput-object p1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    .line 849
    invoke-direct {p0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->reset()V

    .line 850
    iput p2, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mFeatureofDevice:I

    .line 853
    iget-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    #getter for: Landroid/view/WindowOrientationListener;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/view/WindowOrientationListener;->access$300(Landroid/view/WindowOrientationListener;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    #getter for: Landroid/view/WindowOrientationListener;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/view/WindowOrientationListener;->access$300(Landroid/view/WindowOrientationListener;)Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mPm:Landroid/os/PowerManager;

    .line 855
    iget v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mFeatureofDevice:I

    and-int/lit8 v0, v0, 0x4

    if-eq v0, v2, :cond_0

    iget v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mFeatureofDevice:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 858
    :cond_0
    const-string v0, "WindowOrientationListener"

    const-string/jumbo v1, "support wide tablet "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    sget-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->lowerBound_wide:[I

    iput-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mlowerBound:[I

    .line 860
    sget-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->upperBound_wide:[I

    iput-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mupperBound:[I

    .line 861
    const/16 v0, 0x41

    iput v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->MAX_TILT:I

    .line 863
    :cond_1
    return-void

    .line 793
    nop

    :array_0
    .array-data 0x4
        0x4at 0x1t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x96t 0x0t 0x0t 0x0t
        0xf0t 0x0t 0x0t 0x0t
    .end array-data

    .line 794
    :array_1
    .array-data 0x4
        0x1et 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0xd2t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Landroid/view/WindowOrientationListener$SensorEventListenerImpl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 628
    invoke-direct {p0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->reset()V

    return-void
.end method

.method private addTiltHistoryEntry(JF)V
    .locals 4
    .parameter "now"
    .parameter "tilt"

    .prologue
    .line 1321
    iget-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistory:[F

    iget v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    aput p3, v0, v1

    .line 1322
    iget-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    iget v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    aput-wide p1, v0, v1

    .line 1323
    iget v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x28

    iput v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    .line 1324
    iget-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    iget v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    const-wide/high16 v2, -0x8000

    aput-wide v2, v0, v1

    .line 1325
    return-void
.end method

.method private clearPredictedRotation()V
    .locals 2

    .prologue
    .line 1271
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    .line 1272
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotationTimestampNanos:J

    .line 1273
    return-void
.end method

.method private clearTiltHistory()V
    .locals 4

    .prologue
    .line 1316
    iget-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    const/4 v1, 0x0

    const-wide/high16 v2, -0x8000

    aput-wide v2, v0, v1

    .line 1317
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    .line 1318
    return-void
.end method

.method private isAccelerating(F)Z
    .locals 2
    .parameter "magnitude"

    .prologue
    const/4 v0, 0x0

    .line 1283
    sget-object v1, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->MIN_ACCELERATION_MAGNITUDE:[F

    aget v1, v1, v0

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_0

    sget-object v1, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->MAX_ACCELERATION_MAGNITUDE:[F

    aget v1, v1, v0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isAccelerating(FI)Z
    .locals 8
    .parameter "magnitude"
    .parameter "tiltAngle"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1288
    sget-object v4, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->MIN_ACCELERATION_MAGNITUDE:[F

    aget v1, v4, v2

    .line 1289
    .local v1, min_magnitude:F
    sget-object v4, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->MAX_ACCELERATION_MAGNITUDE:[F

    aget v0, v4, v2

    .line 1290
    .local v0, max_magnitude:F
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sget-object v5, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->tilt_level:[I

    aget v5, v5, v2

    if-lt v4, v5, :cond_3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sget-object v5, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->tilt_level:[I

    aget v5, v5, v3

    if-ge v4, v5, :cond_3

    .line 1292
    sget-object v4, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->MIN_ACCELERATION_MAGNITUDE:[F

    aget v1, v4, v2

    .line 1293
    sget-object v4, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->MAX_ACCELERATION_MAGNITUDE:[F

    aget v0, v4, v2

    .line 1311
    :cond_0
    :goto_0
    cmpg-float v4, p1, v1

    if-ltz v4, :cond_1

    cmpl-float v4, p1, v0

    if-lez v4, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    return v2

    .line 1295
    :cond_3
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sget-object v5, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->tilt_level:[I

    aget v5, v5, v3

    if-lt v4, v5, :cond_4

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sget-object v5, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->tilt_level:[I

    aget v5, v5, v6

    if-ge v4, v5, :cond_4

    .line 1297
    sget-object v4, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->MIN_ACCELERATION_MAGNITUDE:[F

    aget v1, v4, v3

    .line 1298
    sget-object v4, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->MAX_ACCELERATION_MAGNITUDE:[F

    aget v0, v4, v3

    goto :goto_0

    .line 1300
    :cond_4
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sget-object v5, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->tilt_level:[I

    aget v5, v5, v6

    if-lt v4, v5, :cond_5

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sget-object v5, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->tilt_level:[I

    aget v5, v5, v7

    if-ge v4, v5, :cond_5

    .line 1302
    sget-object v4, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->MIN_ACCELERATION_MAGNITUDE:[F

    aget v1, v4, v6

    .line 1303
    sget-object v4, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->MAX_ACCELERATION_MAGNITUDE:[F

    aget v0, v4, v6

    goto :goto_0

    .line 1305
    :cond_5
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sget-object v5, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->tilt_level:[I

    aget v5, v5, v7

    if-lt v4, v5, :cond_0

    .line 1307
    sget-object v4, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->MIN_ACCELERATION_MAGNITUDE:[F

    aget v1, v4, v7

    .line 1308
    sget-object v4, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->MAX_ACCELERATION_MAGNITUDE:[F

    aget v0, v4, v7

    goto :goto_0
.end method

.method private isFlat(J)Z
    .locals 5
    .parameter "now"

    .prologue
    .line 1328
    iget v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    .local v0, i:I
    :cond_0
    invoke-direct {p0, v0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->nextTiltHistoryIndex(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 1329
    iget-object v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistory:[F

    aget v1, v1, v0

    const/high16 v2, 0x4296

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 1337
    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1332
    :cond_2
    iget-object v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    aget-wide v1, v1, v0

    const-wide/32 v3, 0x3b9aca00

    add-long/2addr v1, v3

    cmp-long v1, v1, p1

    if-gtz v1, :cond_0

    .line 1334
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isOrientationAngleAcceptable(II)Z
    .locals 6
    .parameter "rotation"
    .parameter "orientationAngle"

    .prologue
    const/4 v3, 0x0

    .line 1184
    iget-object v4, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    invoke-static {}, Landroid/view/WindowOrientationListener;->access$500()I

    move-result v0

    .line 1185
    .local v0, currentRotation:I
    if-ltz v0, :cond_5

    .line 1190
    if-eq p1, v0, :cond_0

    add-int/lit8 v4, v0, 0x1

    rem-int/lit8 v4, v4, 0x4

    if-ne p1, v4, :cond_3

    .line 1192
    :cond_0
    mul-int/lit8 v4, p1, 0x5a

    add-int/lit8 v4, v4, -0x2d

    add-int/lit8 v1, v4, 0x16

    .line 1194
    .local v1, lowerBound:I
    if-nez p1, :cond_2

    .line 1196
    iget-object v4, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mlowerBound:[I

    aget v4, v4, p1

    if-ge p2, v4, :cond_3

    iget-object v4, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mlowerBound:[I

    add-int/lit8 v5, p1, 0x1

    aget v4, v4, v5

    if-le p2, v4, :cond_3

    .line 1225
    .end local v1           #lowerBound:I
    :cond_1
    :goto_0
    return v3

    .line 1200
    .restart local v1       #lowerBound:I
    :cond_2
    iget-object v4, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mlowerBound:[I

    aget v4, v4, p1

    if-lt p2, v4, :cond_1

    .line 1210
    .end local v1           #lowerBound:I
    :cond_3
    if-eq p1, v0, :cond_4

    add-int/lit8 v4, v0, 0x3

    rem-int/lit8 v4, v4, 0x4

    if-ne p1, v4, :cond_5

    .line 1212
    :cond_4
    mul-int/lit8 v4, p1, 0x5a

    add-int/lit8 v4, v4, 0x2d

    add-int/lit8 v2, v4, -0x16

    .line 1214
    .local v2, upperBound:I
    if-nez p1, :cond_6

    .line 1215
    iget-object v4, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mupperBound:[I

    aget v4, v4, p1

    if-le p2, v4, :cond_5

    iget-object v4, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mupperBound:[I

    add-int/lit8 v5, p1, 0x3

    aget v4, v4, v5

    if-lt p2, v4, :cond_1

    .line 1225
    .end local v2           #upperBound:I
    :cond_5
    const/4 v3, 0x1

    goto :goto_0

    .line 1219
    .restart local v2       #upperBound:I
    :cond_6
    iget-object v4, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mupperBound:[I

    aget v4, v4, p1

    if-le p2, v4, :cond_5

    goto :goto_0
.end method

.method private isPredictedRotationAcceptable(J)Z
    .locals 7
    .parameter "now"

    .prologue
    const-wide/32 v5, 0x1dcd6500

    const/4 v0, 0x0

    .line 1235
    iget-wide v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotationTimestampNanos:J

    const-wide/32 v3, 0x2625a00

    add-long/2addr v1, v3

    cmp-long v1, p1, v1

    if-gez v1, :cond_1

    .line 1257
    :cond_0
    :goto_0
    return v0

    .line 1240
    :cond_1
    iget-wide v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mFlatTimestampNanos:J

    add-long/2addr v1, v5

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    .line 1246
    iget-wide v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mSwingTimestampNanos:J

    const-wide/32 v3, 0x11e1a300

    add-long/2addr v1, v3

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    .line 1251
    iget-wide v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationTimestampNanos:J

    add-long/2addr v1, v5

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    .line 1257
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSwinging(JF)Z
    .locals 5
    .parameter "now"
    .parameter "tilt"

    .prologue
    .line 1341
    iget v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    .local v0, i:I
    :cond_0
    invoke-direct {p0, v0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->nextTiltHistoryIndex(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 1342
    iget-object v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    aget-wide v1, v1, v0

    const-wide/32 v3, 0x11e1a300

    add-long/2addr v1, v3

    cmp-long v1, v1, p1

    if-gez v1, :cond_2

    .line 1350
    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1345
    :cond_2
    iget-object v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistory:[F

    aget v1, v1, v0

    const/high16 v2, 0x41a0

    add-float/2addr v1, v2

    cmpg-float v1, v1, p3

    if-gtz v1, :cond_0

    .line 1347
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isTiltAngleAcceptable(II)Z
    .locals 6
    .parameter "rotation"
    .parameter "tiltAngle"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1150
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sget-object v3, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->tilt_level:[I

    aget v3, v3, v1

    if-lt v2, v3, :cond_1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sget-object v3, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->tilt_level:[I

    aget v3, v3, v0

    if-ge v2, v3, :cond_1

    .line 1152
    sget-object v2, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->lowerBound_portrait:[I

    iput-object v2, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mlowerBound:[I

    .line 1153
    sget-object v2, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->upperBound_portrait:[I

    iput-object v2, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mupperBound:[I

    .line 1170
    :cond_0
    :goto_0
    sget-object v2, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->TILT_TOLERANCE:[[I

    aget-object v2, v2, p1

    aget v2, v2, v1

    if-lt p2, v2, :cond_4

    sget-object v2, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->TILT_TOLERANCE:[[I

    aget-object v2, v2, p1

    aget v2, v2, v0

    if-gt p2, v2, :cond_4

    :goto_1
    return v0

    .line 1155
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sget-object v3, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->tilt_level:[I

    aget v3, v3, v0

    if-lt v2, v3, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sget-object v3, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->tilt_level:[I

    aget v3, v3, v4

    if-ge v2, v3, :cond_2

    .line 1157
    sget-object v2, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->lowerBound_portrait_2:[I

    iput-object v2, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mlowerBound:[I

    .line 1158
    sget-object v2, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->upperBound_portrait_2:[I

    iput-object v2, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mupperBound:[I

    goto :goto_0

    .line 1160
    :cond_2
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sget-object v3, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->tilt_level:[I

    aget v3, v3, v4

    if-lt v2, v3, :cond_3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sget-object v3, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->tilt_level:[I

    aget v3, v3, v5

    if-ge v2, v3, :cond_3

    .line 1162
    sget-object v2, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->lowerBound_portrait_3:[I

    iput-object v2, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mlowerBound:[I

    .line 1163
    sget-object v2, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->upperBound_portrait_3:[I

    iput-object v2, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mupperBound:[I

    goto :goto_0

    .line 1165
    :cond_3
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sget-object v3, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->tilt_level:[I

    aget v3, v3, v5

    if-lt v2, v3, :cond_0

    .line 1167
    sget-object v2, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->lowerBound_portrait_4:[I

    iput-object v2, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mlowerBound:[I

    .line 1168
    sget-object v2, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->upperBound_portrait_4:[I

    iput-object v2, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mupperBound:[I

    goto :goto_0

    :cond_4
    move v0, v1

    .line 1170
    goto :goto_1
.end method

.method private nextTiltHistoryIndex(I)I
    .locals 4
    .parameter "index"

    .prologue
    .line 1354
    if-nez p1, :cond_0

    const/16 p1, 0x28

    .end local p1
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 1355
    .restart local p1
    iget-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    aget-wide v0, v0, p1

    const-wide/high16 v2, -0x8000

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_1
    const/4 p1, -0x1

    goto :goto_0
.end method

.method private static remainingMS(JJ)F
    .locals 2
    .parameter "now"
    .parameter "until"

    .prologue
    .line 1359
    cmp-long v0, p0, p2

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sub-long v0, p2, p0

    long-to-float v0, v0

    const v1, 0x358637bd

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method private reset()V
    .locals 3

    .prologue
    const-wide/high16 v1, -0x8000

    .line 1261
    iput-wide v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredTimestampNanos:J

    .line 1262
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    .line 1263
    iput-wide v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mFlatTimestampNanos:J

    .line 1264
    iput-wide v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mSwingTimestampNanos:J

    .line 1265
    iput-wide v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationTimestampNanos:J

    .line 1266
    invoke-direct {p0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->clearPredictedRotation()V

    .line 1267
    invoke-direct {p0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->clearTiltHistory()V

    .line 1268
    return-void
.end method

.method private updatePredictedRotation(JI)V
    .locals 1
    .parameter "now"
    .parameter "rotation"

    .prologue
    .line 1276
    iget v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    if-eq v0, p3, :cond_0

    .line 1277
    iput p3, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    .line 1278
    iput-wide p1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotationTimestampNanos:J

    .line 1280
    :cond_0
    return-void
.end method


# virtual methods
.method public getProposedRotation()I
    .locals 1

    .prologue
    .line 866
    iget v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 871
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 28
    .parameter "event"

    .prologue
    .line 877
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget v19, v22, v23

    .line 878
    .local v19, x:F
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget v20, v22, v23

    .line 879
    .local v20, y:F
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v22, v0

    const/16 v23, 0x2

    aget v21, v22, v23

    .line 881
    .local v21, z:F
    invoke-static {}, Landroid/view/WindowOrientationListener;->access$700()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 882
    const-string v22, "WindowOrientationListener"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Raw acceleration vector: x="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", y="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", z="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", magnitude="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    mul-float v24, v19, v19

    mul-float v25, v20, v20

    add-float v24, v24, v25

    mul-float v25, v21, v21

    add-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_0
    move-object/from16 v0, p1

    iget-wide v10, v0, Landroid/hardware/SensorEvent;->timestamp:J

    .line 892
    .local v10, now:J
    move-object/from16 v0, p0

    iget-wide v15, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredTimestampNanos:J

    .line 893
    .local v15, then:J
    sub-long v22, v10, v15

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v22, v0

    const v23, 0x358637bd

    mul-float v18, v22, v23

    .line 895
    .local v18, timeDeltaMS:F
    cmp-long v22, v10, v15

    if-ltz v22, :cond_1

    const-wide/32 v22, 0x3b9aca00

    add-long v22, v22, v15

    cmp-long v22, v10, v22

    if-gtz v22, :cond_1

    const/16 v22, 0x0

    cmpl-float v22, v19, v22

    if-nez v22, :cond_a

    const/16 v22, 0x0

    cmpl-float v22, v20, v22

    if-nez v22, :cond_a

    const/16 v22, 0x0

    cmpl-float v22, v21, v22

    if-nez v22, :cond_a

    .line 898
    :cond_1
    invoke-static {}, Landroid/view/WindowOrientationListener;->access$700()Z

    move-result v22

    if-eqz v22, :cond_2

    .line 899
    const-string v22, "WindowOrientationListener"

    const-string v23, "Resetting orientation listener."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    :cond_2
    invoke-direct/range {p0 .. p0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->reset()V

    .line 902
    const/4 v14, 0x1

    .line 915
    .local v14, skipSample:Z
    :goto_0
    move-object/from16 v0, p0

    iput-wide v10, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredTimestampNanos:J

    .line 916
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredX:F

    .line 917
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredY:F

    .line 918
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredZ:F

    .line 920
    const/4 v5, 0x0

    .line 921
    .local v5, isAccelerating:Z
    const/4 v6, 0x0

    .line 922
    .local v6, isFlat:Z
    const/4 v7, 0x0

    .line 923
    .local v7, isSwinging:Z
    if-nez v14, :cond_4

    .line 925
    mul-float v22, v19, v19

    mul-float v23, v20, v20

    add-float v22, v22, v23

    mul-float v23, v21, v21

    add-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v8

    .line 926
    .local v8, magnitude:F
    const/high16 v22, 0x3f80

    cmpg-float v22, v8, v22

    if-gez v22, :cond_c

    .line 927
    invoke-static {}, Landroid/view/WindowOrientationListener;->access$700()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 928
    const-string v22, "WindowOrientationListener"

    const-string v23, "Ignoring sensor data, magnitude too close to zero."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    :cond_3
    invoke-direct/range {p0 .. p0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->clearPredictedRotation()V

    .line 1021
    .end local v8           #magnitude:F
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    .line 1022
    .local v12, oldProposedRotation:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    move/from16 v22, v0

    if-ltz v22, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->isPredictedRotationAcceptable(J)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 1023
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    .line 1027
    :cond_6
    invoke-static {}, Landroid/view/WindowOrientationListener;->access$700()Z

    move-result v22

    if-eqz v22, :cond_7

    .line 1028
    const-string v22, "WindowOrientationListener"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Result: currentRotation="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    move-object/from16 v24, v0

    invoke-static {}, Landroid/view/WindowOrientationListener;->access$500()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", proposedRotation="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", predictedRotation="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", timeDeltaMS="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", isAccelerating="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", isFlat="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", isSwinging="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", timeUntilSettledMS="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotationTimestampNanos:J

    move-wide/from16 v24, v0

    const-wide/32 v26, 0x2625a00

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    invoke-static {v10, v11, v0, v1}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->remainingMS(JJ)F

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", timeUntilAccelerationDelayExpiredMS="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationTimestampNanos:J

    move-wide/from16 v24, v0

    const-wide/32 v26, 0x1dcd6500

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    invoke-static {v10, v11, v0, v1}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->remainingMS(JJ)F

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", timeUntilFlatDelayExpiredMS="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mFlatTimestampNanos:J

    move-wide/from16 v24, v0

    const-wide/32 v26, 0x1dcd6500

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    invoke-static {v10, v11, v0, v1}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->remainingMS(JJ)F

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", timeUntilSwingDelayExpiredMS="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mSwingTimestampNanos:J

    move-wide/from16 v24, v0

    const-wide/32 v26, 0x11e1a300

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    invoke-static {v10, v11, v0, v1}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->remainingMS(JJ)F

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v0, v12, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    move/from16 v22, v0

    if-ltz v22, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    move-object/from16 v23, v0

    invoke-static {}, Landroid/view/WindowOrientationListener;->access$500()I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_9

    .line 1047
    invoke-static {}, Landroid/view/WindowOrientationListener;->access$700()Z

    move-result v22

    if-eqz v22, :cond_8

    .line 1048
    const-string v22, "WindowOrientationListener"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Proposed rotation changed!  proposedRotation="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", oldProposedRotation="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    :cond_8
    const-string v22, "WindowOrientationListener"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Proposed rotation changed!  proposedRotation="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", oldProposedRotation="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "currentRotation = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    move-object/from16 v24, v0

    invoke-static {}, Landroid/view/WindowOrientationListener;->access$500()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    move-object/from16 v22, v0

    #getter for: Landroid/view/WindowOrientationListener;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Landroid/view/WindowOrientationListener;->access$300(Landroid/view/WindowOrientationListener;)Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "intelligent_rotation_mode"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    if-eqz v22, :cond_17

    const/4 v4, 0x1

    .line 1059
    .local v4, intelligent_rotation_enabled:Z
    :goto_2
    if-nez v4, :cond_18

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/WindowOrientationListener;->setFaceDetectionResult(Z)V

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/view/WindowOrientationListener;->onProposedRotationChanged(I)V

    .line 1140
    .end local v4           #intelligent_rotation_enabled:Z
    :cond_9
    :goto_3
    return-void

    .line 904
    .end local v5           #isAccelerating:Z
    .end local v6           #isFlat:Z
    .end local v7           #isSwinging:Z
    .end local v12           #oldProposedRotation:I
    .end local v14           #skipSample:Z
    :cond_a
    const/high16 v22, 0x4348

    add-float v22, v22, v18

    div-float v2, v18, v22

    .line 905
    .local v2, alpha:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredX:F

    move/from16 v22, v0

    sub-float v22, v19, v22

    mul-float v22, v22, v2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredX:F

    move/from16 v23, v0

    add-float v19, v22, v23

    .line 906
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredY:F

    move/from16 v22, v0

    sub-float v22, v20, v22

    mul-float v22, v22, v2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredY:F

    move/from16 v23, v0

    add-float v20, v22, v23

    .line 907
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredZ:F

    move/from16 v22, v0

    sub-float v22, v21, v22

    mul-float v22, v22, v2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredZ:F

    move/from16 v23, v0

    add-float v21, v22, v23

    .line 908
    invoke-static {}, Landroid/view/WindowOrientationListener;->access$700()Z

    move-result v22

    if-eqz v22, :cond_b

    .line 909
    const-string v22, "WindowOrientationListener"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Filtered acceleration vector: x="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", y="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", z="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", magnitude="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    mul-float v24, v19, v19

    mul-float v25, v20, v20

    add-float v24, v24, v25

    mul-float v25, v21, v21

    add-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    :cond_b
    const/4 v14, 0x0

    .restart local v14       #skipSample:Z
    goto/16 :goto_0

    .line 944
    .end local v2           #alpha:F
    .restart local v5       #isAccelerating:Z
    .restart local v6       #isFlat:Z
    .restart local v7       #isSwinging:Z
    .restart local v8       #magnitude:F
    :cond_c
    div-float v22, v21, v8

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->asin(D)D

    move-result-wide v22

    const-wide v24, 0x404ca5dc20000000L

    mul-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->round(D)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v17, v0

    .line 946
    .local v17, tiltAngle:I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v10, v11, v1}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->addTiltHistoryEntry(JF)V

    .line 948
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v8, v1}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->isAccelerating(FI)Z

    move-result v22

    if-eqz v22, :cond_d

    .line 949
    const/4 v5, 0x1

    .line 950
    move-object/from16 v0, p0

    iput-wide v10, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationTimestampNanos:J

    .line 954
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->isFlat(J)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 955
    const/4 v6, 0x1

    .line 956
    move-object/from16 v0, p0

    iput-wide v10, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mFlatTimestampNanos:J

    .line 958
    :cond_e
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v10, v11, v1}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->isSwinging(JF)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 959
    const/4 v7, 0x1

    .line 960
    move-object/from16 v0, p0

    iput-wide v10, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mSwingTimestampNanos:J

    .line 965
    :cond_f
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->MAX_TILT:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_11

    .line 966
    invoke-static {}, Landroid/view/WindowOrientationListener;->access$700()Z

    move-result v22

    if-eqz v22, :cond_10

    .line 967
    const-string v22, "WindowOrientationListener"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Ignoring sensor data, tilt angle too high: tiltAngle="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    :cond_10
    invoke-direct/range {p0 .. p0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->clearPredictedRotation()V

    goto/16 :goto_1

    .line 975
    :cond_11
    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v22

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x404ca5dc20000000L

    mul-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->round(D)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v13, v0

    .line 977
    .local v13, orientationAngle:I
    if-gez v13, :cond_12

    .line 979
    add-int/lit16 v13, v13, 0x168

    .line 983
    :cond_12
    add-int/lit8 v22, v13, 0x2d

    div-int/lit8 v9, v22, 0x5a

    .line 984
    .local v9, nearestRotation:I
    const/16 v22, 0x4

    move/from16 v0, v22

    if-ne v9, v0, :cond_13

    .line 985
    const/4 v9, 0x0

    .line 988
    :cond_13
    sget v22, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mCount:I

    const/16 v23, 0x32

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_14

    .line 989
    const-string v22, "WindowOrientationListener"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "nearestRotation : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "   Angle: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "   tilt: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    const/16 v22, 0x0

    sput v22, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mCount:I

    .line 992
    :cond_14
    sget v22, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mCount:I

    add-int/lit8 v22, v22, 0x1

    sput v22, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mCount:I

    .line 995
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v9, v1}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->isTiltAngleAcceptable(II)Z

    move-result v22

    if-eqz v22, :cond_15

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v13}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->isOrientationAngleAcceptable(II)Z

    move-result v22

    if-eqz v22, :cond_15

    .line 998
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v9}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->updatePredictedRotation(JI)V

    .line 999
    invoke-static {}, Landroid/view/WindowOrientationListener;->access$700()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 1000
    const-string v22, "WindowOrientationListener"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Predicted: tiltAngle="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", orientationAngle="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", predictedRotation="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", predictedRotationAgeMS="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotationTimestampNanos:J

    move-wide/from16 v24, v0

    sub-long v24, v10, v24

    move-wide/from16 v0, v24

    long-to-float v0, v0

    move/from16 v24, v0

    const v25, 0x358637bd

    mul-float v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1009
    :cond_15
    invoke-static {}, Landroid/view/WindowOrientationListener;->access$700()Z

    move-result v22

    if-eqz v22, :cond_16

    .line 1010
    const-string v22, "WindowOrientationListener"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Ignoring sensor data, no predicted rotation: tiltAngle="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", orientationAngle="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    :cond_16
    invoke-direct/range {p0 .. p0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->clearPredictedRotation()V

    goto/16 :goto_1

    .line 1057
    .end local v8           #magnitude:F
    .end local v9           #nearestRotation:I
    .end local v13           #orientationAngle:I
    .end local v17           #tiltAngle:I
    .restart local v12       #oldProposedRotation:I
    :cond_17
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 1066
    .restart local v4       #intelligent_rotation_enabled:Z
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    move-object/from16 v22, v0

    invoke-static {}, Landroid/view/WindowOrientationListener;->access$500()I

    move-result v22

    if-ltz v22, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    move-object/from16 v22, v0

    invoke-static {}, Landroid/view/WindowOrientationListener;->access$500()I

    move-result v22

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_9

    invoke-static {}, Landroid/view/WindowOrientationListener;->access$800()I

    move-result v22

    if-eqz v22, :cond_9

    invoke-static {}, Landroid/view/WindowOrientationListener;->access$800()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_9

    invoke-static {}, Landroid/view/WindowOrientationListener;->access$800()I

    move-result v22

    const/16 v23, 0x5

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_9

    invoke-static {}, Landroid/view/WindowOrientationListener;->access$800()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_9

    invoke-static {}, Landroid/view/WindowOrientationListener;->access$800()I

    move-result v22

    const/16 v23, 0x9

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_9

    .line 1075
    sget-object v22, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mFaceDetectionManager:Lcom/sec/android/smartface/SmartFaceManager;

    if-nez v22, :cond_19

    .line 1076
    invoke-static {}, Lcom/sec/android/smartface/SmartFaceManager;->getSmartFaceManager()Lcom/sec/android/smartface/SmartFaceManager;

    move-result-object v22

    sput-object v22, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mFaceDetectionManager:Lcom/sec/android/smartface/SmartFaceManager;

    .line 1078
    :cond_19
    sget-object v22, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mFaceDetectionManager:Lcom/sec/android/smartface/SmartFaceManager;

    if-eqz v22, :cond_9

    .line 1080
    sget-object v22, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mFaceDetectionManager:Lcom/sec/android/smartface/SmartFaceManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    move-object/from16 v23, v0

    invoke-static {}, Landroid/view/WindowOrientationListener;->access$500()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/smartface/SmartFaceManager;->checkForSmartRotation(I)Z

    move-result v3

    .line 1081
    .local v3, face_found:Z
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v3, v0, :cond_1a

    .line 1083
    const-string v22, "WindowOrientationListener"

    const-string v23, "SMARTFACESERVICE detected face, skip rotation  "

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/view/WindowOrientationListener;->setFaceDetectionResult(Z)V

    goto/16 :goto_3

    .line 1088
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Landroid/view/WindowOrientationListener;->setFaceDetectionResult(Z)V

    .line 1089
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/view/WindowOrientationListener;->onProposedRotationChanged(I)V

    goto/16 :goto_3
.end method
