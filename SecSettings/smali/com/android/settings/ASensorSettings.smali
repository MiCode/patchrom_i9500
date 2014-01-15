.class public Lcom/android/settings_ex/ASensorSettings;
.super Landroid/app/Activity;
.source "ASensorSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/ASensorSettings$1;,
        Lcom/android/settings_ex/ASensorSettings$setHandler;,
        Lcom/android/settings_ex/ASensorSettings$ASensorSettingsView;,
        Lcom/android/settings_ex/ASensorSettings$handlersensor;
    }
.end annotation


# static fields
.field private static final ANIMATION_COUNT:I = 0x28

.field private static final ANIMATION_END:I = 0x3

.field private static final ANIMATION_NOW:I = 0x2

.field private static final ANIMATION_TIME:I = 0x32

.field private static BackgroundPaint:Landroid/graphics/Paint; = null

.field private static final CAL_READY:I = 0x1

.field private static final CAL_UPDATE:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "ASensorSettings"

.field private static final SAMPLECOUNT:I = 0x6

.field private static final SET_PRESS:I = 0x1

.field static ani_count:I

.field static ani_gap_x:F

.field static ani_gap_y:F

.field static ani_sx:F

.field static ani_sy:F

.field private static circlePaint:Landroid/graphics/Paint;

.field private static sampleCount:I

.field static sampleData_x:F

.field static sampleData_y:F


# instance fields
.field private CENTER_X:I

.field private CENTER_Y:I

.field private CIRCLE_RADIUS:I

.field private ICON_RADIUS:I

.field private btn_cal:Landroid/widget/Button;

.field private drawView:Lcom/android/settings_ex/ASensorSettings$ASensorSettingsView;

.field private draw_layout:Landroid/widget/LinearLayout;

.field private mAccelerometerSensor:Landroid/hardware/Sensor;

.field private mBackgroundRadian:I

.field mHandler:Lcom/android/settings_ex/ASensorSettings$setHandler;

.field private mHorizontalLine:I

.field mSensorListner:Lcom/android/settings_ex/ASensorSettings$handlersensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mTitleBarHeight:I

.field private mVerticalLine:I

.field private text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    const/16 v0, 0xf0

    iput v0, p0, Lcom/android/settings_ex/ASensorSettings;->CENTER_X:I

    .line 70
    const/16 v0, 0x172

    iput v0, p0, Lcom/android/settings_ex/ASensorSettings;->CENTER_Y:I

    .line 71
    iput v1, p0, Lcom/android/settings_ex/ASensorSettings;->mHorizontalLine:I

    .line 72
    iput v1, p0, Lcom/android/settings_ex/ASensorSettings;->mVerticalLine:I

    .line 73
    iput v1, p0, Lcom/android/settings_ex/ASensorSettings;->mBackgroundRadian:I

    .line 75
    const/16 v0, 0x25

    iput v0, p0, Lcom/android/settings_ex/ASensorSettings;->ICON_RADIUS:I

    .line 76
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/settings_ex/ASensorSettings;->CIRCLE_RADIUS:I

    .line 403
    return-void
.end method

.method static synthetic access$1000()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/settings_ex/ASensorSettings;->BackgroundPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/ASensorSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/settings_ex/ASensorSettings;->mHorizontalLine:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/ASensorSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/settings_ex/ASensorSettings;->mVerticalLine:I

    return v0
.end method

.method static synthetic access$1300()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/android/settings_ex/ASensorSettings;->circlePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/ASensorSettings;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings_ex/ASensorSettings;->text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/ASensorSettings;)Landroid/hardware/Sensor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings_ex/ASensorSettings;->mAccelerometerSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/ASensorSettings;)Landroid/hardware/SensorManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings_ex/ASensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings_ex/ASensorSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings_ex/ASensorSettings;->diplayCompleted()V

    return-void
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lcom/android/settings_ex/ASensorSettings;->sampleCount:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    sput p0, Lcom/android/settings_ex/ASensorSettings;->sampleCount:I

    return p0
.end method

.method static synthetic access$304()I
    .locals 1

    .prologue
    .line 54
    sget v0, Lcom/android/settings_ex/ASensorSettings;->sampleCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/settings_ex/ASensorSettings;->sampleCount:I

    return v0
.end method

.method static synthetic access$308()I
    .locals 2

    .prologue
    .line 54
    sget v0, Lcom/android/settings_ex/ASensorSettings;->sampleCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/settings_ex/ASensorSettings;->sampleCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/ASensorSettings;)Lcom/android/settings_ex/ASensorSettings$ASensorSettingsView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings_ex/ASensorSettings;->drawView:Lcom/android/settings_ex/ASensorSettings$ASensorSettingsView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/ASensorSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/settings_ex/ASensorSettings;->CENTER_X:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/ASensorSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/settings_ex/ASensorSettings;->ICON_RADIUS:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/ASensorSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/settings_ex/ASensorSettings;->CENTER_Y:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/ASensorSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/settings_ex/ASensorSettings;->CIRCLE_RADIUS:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/ASensorSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/settings_ex/ASensorSettings;->mBackgroundRadian:I

    return v0
.end method

.method private diplayCompleted()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 267
    iget-object v1, p0, Lcom/android/settings_ex/ASensorSettings;->btn_cal:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 268
    const v1, 0x7f0909c7

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 270
    .local v0, mtoast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 271
    return-void
.end method

.method private getIconRadius()I
    .locals 3

    .prologue
    .line 136
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02036d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 137
    .local v0, iconBall:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    return v1
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 116
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/settings_ex/ASensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    .line 117
    iget-object v0, p0, Lcom/android/settings_ex/ASensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/ASensorSettings;->mAccelerometerSensor:Landroid/hardware/Sensor;

    .line 119
    const v0, 0x7f0b002a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ex/ASensorSettings;->btn_cal:Landroid/widget/Button;

    .line 120
    iget-object v0, p0, Lcom/android/settings_ex/ASensorSettings;->btn_cal:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/android/settings_ex/ASensorSettings;->btn_cal:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 123
    const v0, 0x7f0b0028

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/ASensorSettings;->text:Landroid/widget/TextView;

    .line 125
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/android/settings_ex/ASensorSettings;->circlePaint:Landroid/graphics/Paint;

    .line 126
    sget-object v0, Lcom/android/settings_ex/ASensorSettings;->circlePaint:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    sget-object v0, Lcom/android/settings_ex/ASensorSettings;->circlePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 128
    sget-object v0, Lcom/android/settings_ex/ASensorSettings;->circlePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 129
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/android/settings_ex/ASensorSettings;->BackgroundPaint:Landroid/graphics/Paint;

    .line 130
    sget-object v0, Lcom/android/settings_ex/ASensorSettings;->BackgroundPaint:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    sget-object v0, Lcom/android/settings_ex/ASensorSettings;->BackgroundPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 132
    sget-object v0, Lcom/android/settings_ex/ASensorSettings;->BackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 133
    return-void
.end method

.method private readOneLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "filepath"

    .prologue
    .line 313
    const-string v3, ""

    .line 314
    .local v3, result:Ljava/lang/String;
    const/4 v0, 0x0

    .line 316
    .local v0, buf:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x1fa0

    invoke-direct {v1, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 317
    .end local v0           #buf:Ljava/io/BufferedReader;
    .local v1, buf:Ljava/io/BufferedReader;
    if-eqz v1, :cond_0

    .line 318
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v3

    .line 323
    :cond_0
    if-eqz v1, :cond_3

    .line 325
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 331
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    return-object v3

    .line 326
    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 327
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    .line 328
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_0

    .line 320
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 321
    .local v2, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 323
    if-eqz v0, :cond_1

    .line 325
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 326
    :catch_2
    move-exception v2

    .line 327
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 323
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v0, :cond_2

    .line 325
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 328
    :cond_2
    :goto_3
    throw v4

    .line 326
    :catch_3
    move-exception v2

    .line 327
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 323
    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_2

    .line 320
    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_1

    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :cond_3
    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_0
.end method

.method private writeToFile()V
    .locals 6

    .prologue
    .line 141
    const-string v4, "ASensorSettings"

    const-string v5, "Start calibration"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v2, 0x0

    .line 145
    .local v2, out:Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/class/sec/gsensorcal/calibration"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 151
    .end local v2           #out:Ljava/io/OutputStream;
    .local v3, out:Ljava/io/OutputStream;
    const/16 v4, 0x31

    :try_start_1
    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    .line 152
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v3

    .line 161
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v4, "ASensorSettings"

    const-string v5, "File not found!"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 153
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 154
    .local v0, e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 156
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 157
    :catch_2
    move-exception v1

    .line 158
    .local v1, err:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 153
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #err:Ljava/lang/Exception;
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    goto :goto_1
.end method


# virtual methods
.method public dpToPixel(I)F
    .locals 4
    .parameter "dp"

    .prologue
    .line 306
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 307
    .local v0, outMetris:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 308
    int-to-float v2, p1

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v2, v3

    .line 309
    .local v1, pixel:F
    return v1
.end method

.method public getLcdHeight()I
    .locals 3

    .prologue
    .line 279
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 280
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 281
    .local v1, height:I
    return v1
.end method

.method public getLcdWidth()I
    .locals 3

    .prologue
    .line 273
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 274
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 275
    .local v1, width:I
    return v1
.end method

.method public getNotificationHeight()I
    .locals 4

    .prologue
    .line 285
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 286
    .local v0, display:Landroid/view/Display;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 287
    .local v2, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 288
    const/4 v1, 0x0

    .line 290
    .local v1, height:I
    iget v3, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    sparse-switch v3, :sswitch_data_0

    .line 302
    :goto_0
    return v1

    .line 292
    :sswitch_0
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    add-int/lit8 v1, v3, -0x30

    .line 293
    goto :goto_0

    .line 295
    :sswitch_1
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    add-int/lit8 v1, v3, -0x20

    .line 296
    goto :goto_0

    .line 298
    :sswitch_2
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    add-int/lit8 v1, v3, -0x18

    .line 299
    goto :goto_0

    .line 290
    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_2
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_0
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 174
    :goto_0
    return-void

    .line 166
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/ASensorSettings;->writeToFile()V

    .line 167
    iget-object v1, p0, Lcom/android/settings_ex/ASensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/settings_ex/ASensorSettings;->mSensorListner:Lcom/android/settings_ex/ASensorSettings$handlersensor;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 168
    iget-object v1, p0, Lcom/android/settings_ex/ASensorSettings;->btn_cal:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 169
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 170
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 171
    iget-object v1, p0, Lcom/android/settings_ex/ASensorSettings;->mHandler:Lcom/android/settings_ex/ASensorSettings$setHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b002a
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x32

    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings_ex/ASensorSettings;->getLcdWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/settings_ex/ASensorSettings;->CENTER_X:I

    .line 96
    invoke-virtual {p0}, Lcom/android/settings_ex/ASensorSettings;->getLcdHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ASensorSettings;->dpToPixel(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings_ex/ASensorSettings;->CENTER_Y:I

    .line 97
    iget v0, p0, Lcom/android/settings_ex/ASensorSettings;->CENTER_X:I

    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/android/settings_ex/ASensorSettings;->mHorizontalLine:I

    .line 98
    iget v0, p0, Lcom/android/settings_ex/ASensorSettings;->CENTER_Y:I

    mul-int/lit8 v0, v0, 0x42

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/android/settings_ex/ASensorSettings;->mVerticalLine:I

    .line 99
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/ASensorSettings;->dpToPixel(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings_ex/ASensorSettings;->mBackgroundRadian:I

    .line 100
    invoke-direct {p0}, Lcom/android/settings_ex/ASensorSettings;->getIconRadius()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/ASensorSettings;->ICON_RADIUS:I

    .line 101
    const/16 v0, 0x10b

    iput v0, p0, Lcom/android/settings_ex/ASensorSettings;->CIRCLE_RADIUS:I

    .line 103
    new-instance v0, Lcom/android/settings_ex/ASensorSettings$setHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/settings_ex/ASensorSettings$setHandler;-><init>(Lcom/android/settings_ex/ASensorSettings;Lcom/android/settings_ex/ASensorSettings$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/ASensorSettings;->mHandler:Lcom/android/settings_ex/ASensorSettings$setHandler;

    .line 105
    const v0, 0x7f040011

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 106
    new-instance v0, Lcom/android/settings_ex/ASensorSettings$ASensorSettingsView;

    invoke-direct {v0, p0, p0}, Lcom/android/settings_ex/ASensorSettings$ASensorSettingsView;-><init>(Lcom/android/settings_ex/ASensorSettings;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/ASensorSettings;->drawView:Lcom/android/settings_ex/ASensorSettings$ASensorSettingsView;

    .line 107
    const v0, 0x7f0b0029

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings_ex/ASensorSettings;->draw_layout:Landroid/widget/LinearLayout;

    .line 108
    iget-object v0, p0, Lcom/android/settings_ex/ASensorSettings;->draw_layout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings_ex/ASensorSettings;->drawView:Lcom/android/settings_ex/ASensorSettings$ASensorSettingsView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 109
    invoke-direct {p0}, Lcom/android/settings_ex/ASensorSettings;->init()V

    .line 111
    new-instance v0, Lcom/android/settings_ex/ASensorSettings$handlersensor;

    invoke-direct {v0, p0, v3}, Lcom/android/settings_ex/ASensorSettings$handlersensor;-><init>(Lcom/android/settings_ex/ASensorSettings;Lcom/android/settings_ex/ASensorSettings$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/ASensorSettings;->mSensorListner:Lcom/android/settings_ex/ASensorSettings$handlersensor;

    .line 112
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/settings_ex/ASensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/settings_ex/ASensorSettings;->mSensorListner:Lcom/android/settings_ex/ASensorSettings$handlersensor;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 198
    iget-object v0, p0, Lcom/android/settings_ex/ASensorSettings;->mHandler:Lcom/android/settings_ex/ASensorSettings$setHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 199
    iget-object v0, p0, Lcom/android/settings_ex/ASensorSettings;->mHandler:Lcom/android/settings_ex/ASensorSettings$setHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 200
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 201
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 177
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 178
    sput v3, Lcom/android/settings_ex/ASensorSettings;->sampleCount:I

    .line 180
    iget-object v0, p0, Lcom/android/settings_ex/ASensorSettings;->drawView:Lcom/android/settings_ex/ASensorSettings$ASensorSettingsView;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/settings_ex/ASensorSettings;->drawView:Lcom/android/settings_ex/ASensorSettings$ASensorSettingsView;

    const/4 v1, 0x1

    #calls: Lcom/android/settings_ex/ASensorSettings$ASensorSettingsView;->updateState(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/ASensorSettings$ASensorSettingsView;->access$200(Lcom/android/settings_ex/ASensorSettings$ASensorSettingsView;I)V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/ASensorSettings;->text:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/android/settings_ex/ASensorSettings;->text:Landroid/widget/TextView;

    const v1, 0x7f0909c5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/ASensorSettings;->btn_cal:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/android/settings_ex/ASensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/settings_ex/ASensorSettings;->mSensorListner:Lcom/android/settings_ex/ASensorSettings$handlersensor;

    iget-object v2, p0, Lcom/android/settings_ex/ASensorSettings;->mAccelerometerSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 191
    return-void
.end method
