.class public abstract Landroid/view/WindowOrientationListener;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowOrientationListener$SensorEventListenerImpl;,
        Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;,
        Landroid/view/WindowOrientationListener$SContextListenerImpl;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "WindowOrientationListener"

.field private static final USE_GRAVITY_SENSOR:Z

.field private static mCurrentRotation:I

.field private static mbResultFaceDectection:Z

.field private static mfdforSContextRotation:Lcom/sec/android/facedetection/FaceDetectionManager;

.field private static msfforSContextRotation:Lcom/sec/android/smartface/SmartFaceManager;

.field private static sCurrentAppAngle:I

.field private static sCurrentAppOrientation:I

.field private static sCurrentRotation:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mRate:I

.field private mSContextAutoRotationListener:Landroid/view/WindowOrientationListener$SContextListenerImpl;

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mSOSensorEventListener:Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorEventListener:Landroid/view/WindowOrientationListener$SensorEventListenerImpl;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mUsedautorotioansensor:Z

.field private mbSContext:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 63
    const-string v0, "debug.orientation.log"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/WindowOrientationListener;->LOG:Z

    .line 67
    sput v2, Landroid/view/WindowOrientationListener;->sCurrentAppAngle:I

    .line 80
    sput v2, Landroid/view/WindowOrientationListener;->mCurrentRotation:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 97
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Landroid/view/WindowOrientationListener;-><init>(Landroid/content/Context;I)V

    .line 99
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 8
    .parameter "context"
    .parameter "rate"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const-string v2, "WindowOrientationListener"

    const-string v3, "WindowOrientationListener"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 116
    .local v1, packageMgr:Landroid/content/pm/PackageManager;
    const-string v2, "com.sec.feature.sensorhub"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Landroid/view/WindowOrientationListener;->mbSContext:Z

    .line 117
    const-string v2, "WindowOrientationListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mbSContext : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/view/WindowOrientationListener;->mbSContext:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iput-object p1, p0, Landroid/view/WindowOrientationListener;->mContext:Landroid/content/Context;

    .line 119
    sput-boolean v6, Landroid/view/WindowOrientationListener;->mbResultFaceDectection:Z

    .line 120
    iget-boolean v2, p0, Landroid/view/WindowOrientationListener;->mbSContext:Z

    if-eqz v2, :cond_0

    .line 122
    const-string v2, "WindowOrientationListener"

    const-string v3, "++SContextListenerImpl"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v2, "scontext"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/scontext/SContextManager;

    iput-object v2, p0, Landroid/view/WindowOrientationListener;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 124
    new-instance v2, Landroid/view/WindowOrientationListener$SContextListenerImpl;

    invoke-direct {v2, p0}, Landroid/view/WindowOrientationListener$SContextListenerImpl;-><init>(Landroid/view/WindowOrientationListener;)V

    iput-object v2, p0, Landroid/view/WindowOrientationListener;->mSContextAutoRotationListener:Landroid/view/WindowOrientationListener$SContextListenerImpl;

    .line 125
    const-string v2, "WindowOrientationListener"

    const-string v3, "--SContextListenerImpl"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :goto_0
    return-void

    .line 129
    :cond_0
    const-string v2, "WindowOrientationListener"

    const-string v3, "++SensorEventListenerImpl"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const-string/jumbo v2, "sensor"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Landroid/view/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 131
    iput-boolean v6, p0, Landroid/view/WindowOrientationListener;->mEnabled:Z

    .line 132
    iput p2, p0, Landroid/view/WindowOrientationListener;->mRate:I

    .line 134
    iget-object v2, p0, Landroid/view/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2}, Landroid/hardware/SensorManager;->getSupportedFunction()I

    move-result v0

    .line 135
    .local v0, nfeature:I
    and-int/lit8 v2, v0, 0x6

    if-eqz v2, :cond_6

    .line 137
    if-ne p2, v7, :cond_1

    .line 138
    const/4 v2, 0x2

    iput v2, p0, Landroid/view/WindowOrientationListener;->mRate:I

    .line 139
    :cond_1
    iput-boolean v5, p0, Landroid/view/WindowOrientationListener;->mUsedautorotioansensor:Z

    .line 152
    :goto_1
    iget-boolean v2, p0, Landroid/view/WindowOrientationListener;->mUsedautorotioansensor:Z

    if-ne v2, v5, :cond_2

    .line 154
    iget-object v2, p0, Landroid/view/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Landroid/view/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    .line 156
    :cond_2
    iget-object v2, p0, Landroid/view/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/view/WindowOrientationListener;->mUsedautorotioansensor:Z

    if-nez v2, :cond_4

    .line 158
    :cond_3
    iget-object v2, p0, Landroid/view/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Landroid/view/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    .line 159
    iput-boolean v6, p0, Landroid/view/WindowOrientationListener;->mUsedautorotioansensor:Z

    .line 162
    :cond_4
    iget-object v2, p0, Landroid/view/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_5

    .line 164
    iget-boolean v2, p0, Landroid/view/WindowOrientationListener;->mUsedautorotioansensor:Z

    if-ne v2, v5, :cond_8

    .line 165
    new-instance v2, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;

    invoke-direct {v2, p0}, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;-><init>(Landroid/view/WindowOrientationListener;)V

    iput-object v2, p0, Landroid/view/WindowOrientationListener;->mSOSensorEventListener:Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;

    .line 172
    :cond_5
    :goto_2
    const-string v2, "WindowOrientationListener"

    const-string v3, "--SensorEventListenerImpl"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 143
    :cond_6
    if-ne p2, v7, :cond_7

    .line 144
    const/4 v2, 0x3

    iput v2, p0, Landroid/view/WindowOrientationListener;->mRate:I

    .line 145
    :cond_7
    iput-boolean v5, p0, Landroid/view/WindowOrientationListener;->mUsedautorotioansensor:Z

    goto :goto_1

    .line 168
    :cond_8
    const-string v2, "WindowOrientationListener"

    const-string v3, "++++SensorEventListenerImpl"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    new-instance v2, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;

    invoke-direct {v2, p0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;-><init>(Landroid/view/WindowOrientationListener;)V

    iput-object v2, p0, Landroid/view/WindowOrientationListener;->mSensorEventListener:Landroid/view/WindowOrientationListener$SensorEventListenerImpl;

    goto :goto_2
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 61
    sget-boolean v0, Landroid/view/WindowOrientationListener;->mbResultFaceDectection:Z

    return v0
.end method

.method static synthetic access$300(Landroid/view/WindowOrientationListener;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 61
    sget v0, Landroid/view/WindowOrientationListener;->sCurrentAppAngle:I

    return v0
.end method

.method static synthetic access$402(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    sput p0, Landroid/view/WindowOrientationListener;->sCurrentAppAngle:I

    return p0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 61
    sget v0, Landroid/view/WindowOrientationListener;->mCurrentRotation:I

    return v0
.end method

.method static synthetic access$502(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    sput p0, Landroid/view/WindowOrientationListener;->mCurrentRotation:I

    return p0
.end method

.method static synthetic access$600()Lcom/sec/android/smartface/SmartFaceManager;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Landroid/view/WindowOrientationListener;->msfforSContextRotation:Lcom/sec/android/smartface/SmartFaceManager;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/smartface/SmartFaceManager;)Lcom/sec/android/smartface/SmartFaceManager;
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    sput-object p0, Landroid/view/WindowOrientationListener;->msfforSContextRotation:Lcom/sec/android/smartface/SmartFaceManager;

    return-object p0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 61
    sget-boolean v0, Landroid/view/WindowOrientationListener;->LOG:Z

    return v0
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 61
    sget v0, Landroid/view/WindowOrientationListener;->sCurrentAppOrientation:I

    return v0
.end method

.method public static getCurrentRotation()I
    .locals 1

    .prologue
    .line 624
    sget v0, Landroid/view/WindowOrientationListener;->sCurrentRotation:I

    return v0
.end method

.method public static setCurrentAppOrientation(I)V
    .locals 0
    .parameter "appOrientation"

    .prologue
    .line 620
    sput p0, Landroid/view/WindowOrientationListener;->sCurrentAppOrientation:I

    .line 621
    return-void
.end method


# virtual methods
.method public canDetectOrientation()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 284
    iget-boolean v1, p0, Landroid/view/WindowOrientationListener;->mbSContext:Z

    if-eqz v1, :cond_1

    .line 287
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/view/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public disable()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 214
    iget-boolean v0, p0, Landroid/view/WindowOrientationListener;->mbSContext:Z

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v1, p0, Landroid/view/WindowOrientationListener;->mSContextAutoRotationListener:Landroid/view/WindowOrientationListener$SContextListenerImpl;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_2

    .line 222
    const-string v0, "WindowOrientationListener"

    const-string v1, "Cannot detect sensors. Invalid disable"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 225
    :cond_2
    iget-boolean v0, p0, Landroid/view/WindowOrientationListener;->mEnabled:Z

    if-ne v0, v2, :cond_0

    .line 226
    const-string v0, "WindowOrientationListener"

    const-string v1, "WindowOrientationListener disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v1, p0, Landroid/view/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-boolean v0, p0, Landroid/view/WindowOrientationListener;->mUsedautorotioansensor:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSOSensorEventListener:Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;

    :goto_1
    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 230
    iget-boolean v0, p0, Landroid/view/WindowOrientationListener;->mUsedautorotioansensor:Z

    if-eq v0, v2, :cond_4

    .line 231
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSensorEventListener:Landroid/view/WindowOrientationListener$SensorEventListenerImpl;

    #calls: Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->reset()V
    invoke-static {v0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->access$000(Landroid/view/WindowOrientationListener$SensorEventListenerImpl;)V

    .line 235
    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/WindowOrientationListener;->mEnabled:Z

    goto :goto_0

    .line 227
    :cond_3
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSensorEventListener:Landroid/view/WindowOrientationListener$SensorEventListenerImpl;

    goto :goto_1

    .line 233
    :cond_4
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSOSensorEventListener:Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;

    #calls: Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->reset()V
    invoke-static {v0}, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->access$100(Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;)V

    goto :goto_2
.end method

.method public enable()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 180
    const-string v0, "WindowOrientationListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enable register mbSContext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/WindowOrientationListener;->mbSContext:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-boolean v0, p0, Landroid/view/WindowOrientationListener;->mbSContext:Z

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v1, p0, Landroid/view/WindowOrientationListener;->mSContextAutoRotationListener:Landroid/view/WindowOrientationListener$SContextListenerImpl;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;II)Z

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    sput-boolean v3, Landroid/view/WindowOrientationListener;->mbResultFaceDectection:Z

    .line 197
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_2

    .line 198
    const-string v0, "WindowOrientationListener"

    const-string v1, "Cannot detect sensors. Not enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 201
    :cond_2
    iget-boolean v0, p0, Landroid/view/WindowOrientationListener;->mEnabled:Z

    if-nez v0, :cond_0

    .line 202
    const-string v0, "WindowOrientationListener"

    const-string v1, "WindowOrientationListener enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v1, p0, Landroid/view/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-boolean v0, p0, Landroid/view/WindowOrientationListener;->mUsedautorotioansensor:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSOSensorEventListener:Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;

    :goto_1
    iget-object v2, p0, Landroid/view/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    iget v3, p0, Landroid/view/WindowOrientationListener;->mRate:I

    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/WindowOrientationListener;->mEnabled:Z

    goto :goto_0

    .line 203
    :cond_3
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSensorEventListener:Landroid/view/WindowOrientationListener$SensorEventListenerImpl;

    goto :goto_1
.end method

.method public getProposedRotation()I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 259
    iget-boolean v1, p0, Landroid/view/WindowOrientationListener;->mbSContext:Z

    if-eqz v1, :cond_1

    .line 260
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSContextAutoRotationListener:Landroid/view/WindowOrientationListener$SContextListenerImpl;

    invoke-virtual {v0}, Landroid/view/WindowOrientationListener$SContextListenerImpl;->getProposedRotation()I

    move-result v0

    .line 271
    :cond_0
    :goto_0
    return v0

    .line 262
    :cond_1
    iget-boolean v1, p0, Landroid/view/WindowOrientationListener;->mEnabled:Z

    if-eqz v1, :cond_0

    .line 263
    sget-boolean v1, Landroid/view/WindowOrientationListener;->mbResultFaceDectection:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 265
    const-string v1, "WindowOrientationListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProposedRotation facedetection :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Landroid/view/WindowOrientationListener;->mbResultFaceDectection:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 268
    :cond_2
    iget-boolean v0, p0, Landroid/view/WindowOrientationListener;->mUsedautorotioansensor:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSOSensorEventListener:Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;

    invoke-virtual {v0}, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->getProposedRotation()I

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSensorEventListener:Landroid/view/WindowOrientationListener$SensorEventListenerImpl;

    invoke-virtual {v0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->getProposedRotation()I

    move-result v0

    goto :goto_0
.end method

.method public abstract onProposedRotationChanged(I)V
.end method

.method public setCurrentRotation(I)V
    .locals 0
    .parameter "rotation"

    .prologue
    .line 246
    sput p1, Landroid/view/WindowOrientationListener;->mCurrentRotation:I

    .line 247
    sput p1, Landroid/view/WindowOrientationListener;->sCurrentRotation:I

    .line 248
    return-void
.end method

.method public setFaceDetectionResult(Z)V
    .locals 0
    .parameter "ResultFaceDectection"

    .prologue
    .line 277
    sput-boolean p1, Landroid/view/WindowOrientationListener;->mbResultFaceDectection:Z

    .line 278
    return-void
.end method
