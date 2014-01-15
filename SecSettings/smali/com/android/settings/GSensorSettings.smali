.class public Lcom/android/settings_ex/GSensorSettings;
.super Landroid/app/Activity;
.source "GSensorSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/GSensorSettings$1;,
        Lcom/android/settings_ex/GSensorSettings$setHandler;,
        Lcom/android/settings_ex/GSensorSettings$GSensorSettingsView;,
        Lcom/android/settings_ex/GSensorSettings$handlersensor;
    }
.end annotation


# static fields
.field private static final ANIMATION_COUNT:I = 0x32

.field private static final ANIMATION_END:I = 0x3

.field private static final ANIMATION_NOW:I = 0x2

.field private static final ANIMATION_TIME:I = 0x32

.field private static BackgroundPaint:Landroid/graphics/Paint; = null

.field private static final CAL_COMPLETED:I = 0x3

.field private static final CAL_READY:I = 0x1

.field private static final CAL_UPDATE:I = 0x2

.field private static final CHANGE_IMAGE_COUNT:I = 0x10

.field private static final LOG_TAG:Ljava/lang/String; = "GSensorSettings"

.field private static final SAMPLECOUNT:I = 0x6

.field private static final SET_PRESS:I = 0x1

.field static ani_count:I

.field static ani_gap_x:F

.field static ani_gap_y:F

.field static ani_sx:F

.field static ani_sy:F

.field private static circlePaint:Landroid/graphics/Paint;

.field static file:I

.field private static sampleCount:I

.field static sampleData_x:F

.field static sampleData_y:F


# instance fields
.field private CENTER_X:I

.field private CENTER_Y:I

.field private CIRCLE_RADIUS:I

.field private ICON_RADIUS:I

.field private btn_cal:Landroid/widget/Button;

.field private drawView:Lcom/android/settings_ex/GSensorSettings$GSensorSettingsView;

.field private draw_layout:Landroid/widget/LinearLayout;

.field private mAccelerometerSensor:Landroid/hardware/Sensor;

.field private mBackgroundRadian:I

.field mHandler:Lcom/android/settings_ex/GSensorSettings$setHandler;

.field private mHorizontalLine:I

.field mSensorListner:Lcom/android/settings_ex/GSensorSettings$handlersensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mTitleBarHeight:I

.field private mVerticalLine:I

.field private text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 77
    const/16 v0, 0xf0

    iput v0, p0, Lcom/android/settings_ex/GSensorSettings;->CENTER_X:I

    .line 78
    const/16 v0, 0x172

    iput v0, p0, Lcom/android/settings_ex/GSensorSettings;->CENTER_Y:I

    .line 79
    iput v1, p0, Lcom/android/settings_ex/GSensorSettings;->mHorizontalLine:I

    .line 80
    iput v1, p0, Lcom/android/settings_ex/GSensorSettings;->mVerticalLine:I

    .line 81
    iput v1, p0, Lcom/android/settings_ex/GSensorSettings;->mBackgroundRadian:I

    .line 83
    const/16 v0, 0x25

    iput v0, p0, Lcom/android/settings_ex/GSensorSettings;->ICON_RADIUS:I

    .line 84
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/settings_ex/GSensorSettings;->CIRCLE_RADIUS:I

    .line 410
    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/GSensorSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/settings_ex/GSensorSettings;->mVerticalLine:I

    return v0
.end method

.method static synthetic access$1100()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/android/settings_ex/GSensorSettings;->circlePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/GSensorSettings;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings_ex/GSensorSettings;->text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/GSensorSettings;)Lcom/android/settings_ex/GSensorSettings$GSensorSettingsView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings_ex/GSensorSettings;->drawView:Lcom/android/settings_ex/GSensorSettings$GSensorSettingsView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/GSensorSettings;)Landroid/hardware/SensorManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings_ex/GSensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$1502(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    sput p0, Lcom/android/settings_ex/GSensorSettings;->sampleCount:I

    return p0
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/GSensorSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/settings_ex/GSensorSettings;->diplayCompleted()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings_ex/GSensorSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/settings_ex/GSensorSettings;->diplayError()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/GSensorSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/settings_ex/GSensorSettings;->CENTER_X:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/GSensorSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/settings_ex/GSensorSettings;->ICON_RADIUS:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/GSensorSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/settings_ex/GSensorSettings;->CENTER_Y:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/GSensorSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/settings_ex/GSensorSettings;->CIRCLE_RADIUS:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/GSensorSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/settings_ex/GSensorSettings;->mBackgroundRadian:I

    return v0
.end method

.method static synthetic access$800()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/android/settings_ex/GSensorSettings;->BackgroundPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/GSensorSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/settings_ex/GSensorSettings;->mHorizontalLine:I

    return v0
.end method

.method private configureActionBar()V
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 161
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 162
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 165
    :cond_0
    return-void
.end method

.method private diplayCompleted()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 256
    iget-object v1, p0, Lcom/android/settings_ex/GSensorSettings;->btn_cal:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 257
    const v1, 0x7f0909c1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 259
    .local v0, mtoast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 260
    return-void
.end method

.method private diplayError()V
    .locals 7

    .prologue
    const v6, 0x7f090c10

    const v5, 0x7f0909c0

    const/4 v4, 0x0

    .line 263
    iget-object v2, p0, Lcom/android/settings_ex/GSensorSettings;->btn_cal:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, s:Ljava/lang/String;
    const-string v2, "DCM"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    const-string v2, "ja"

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u3002 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u3057\u3066\u304f\u3060\u3055\u3044\u3002"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 275
    :cond_0
    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 276
    .local v0, mtoast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 277
    return-void
.end method

.method private getIconRadius()I
    .locals 3

    .prologue
    .line 168
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02036d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 169
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

    .line 128
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/settings_ex/GSensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    .line 129
    iget-object v0, p0, Lcom/android/settings_ex/GSensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/GSensorSettings;->mAccelerometerSensor:Landroid/hardware/Sensor;

    .line 130
    const v0, 0x7f0b017a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ex/GSensorSettings;->btn_cal:Landroid/widget/Button;

    .line 131
    iget-object v0, p0, Lcom/android/settings_ex/GSensorSettings;->btn_cal:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/android/settings_ex/GSensorSettings;->btn_cal:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    const v0, 0x7f0b0178

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ex/GSensorSettings;->text:Landroid/widget/TextView;

    .line 134
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/android/settings_ex/GSensorSettings;->circlePaint:Landroid/graphics/Paint;

    .line 135
    sget-object v0, Lcom/android/settings_ex/GSensorSettings;->circlePaint:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    sget-object v0, Lcom/android/settings_ex/GSensorSettings;->circlePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 137
    sget-object v0, Lcom/android/settings_ex/GSensorSettings;->circlePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 139
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/android/settings_ex/GSensorSettings;->BackgroundPaint:Landroid/graphics/Paint;

    .line 140
    sget-object v0, Lcom/android/settings_ex/GSensorSettings;->BackgroundPaint:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    sget-object v0, Lcom/android/settings_ex/GSensorSettings;->BackgroundPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 142
    sget-object v0, Lcom/android/settings_ex/GSensorSettings;->BackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 144
    invoke-direct {p0}, Lcom/android/settings_ex/GSensorSettings;->configureActionBar()V

    .line 145
    return-void
.end method

.method private writeToFile()V
    .locals 6

    .prologue
    .line 173
    const-string v4, "GSensorSettings"

    const-string v5, "Start calibration"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v2, 0x0

    .line 177
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

    .line 183
    .end local v2           #out:Ljava/io/OutputStream;
    .local v3, out:Ljava/io/OutputStream;
    const/16 v4, 0x31

    :try_start_1
    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V

    .line 184
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v3

    .line 193
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v4, "GSensorSettings"

    const-string v5, "File not found!"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 185
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 186
    .local v0, e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 188
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 189
    :catch_2
    move-exception v1

    .line 190
    .local v1, err:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 185
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
    .line 313
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 314
    .local v0, outMetris:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 315
    int-to-float v2, p1

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v2, v3

    .line 316
    .local v1, pixel:F
    return v1
.end method

.method public getLcdHeight()I
    .locals 3

    .prologue
    .line 286
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 287
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 288
    .local v1, height:I
    return v1
.end method

.method public getLcdWidth()I
    .locals 3

    .prologue
    .line 280
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 281
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 282
    .local v1, width:I
    return v1
.end method

.method public getNotificationHeight()I
    .locals 4

    .prologue
    .line 292
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 293
    .local v0, display:Landroid/view/Display;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 294
    .local v2, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 295
    const/4 v1, 0x0

    .line 297
    .local v1, height:I
    iget v3, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    sparse-switch v3, :sswitch_data_0

    .line 309
    :goto_0
    return v1

    .line 299
    :sswitch_0
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    add-int/lit8 v1, v3, -0x30

    .line 300
    goto :goto_0

    .line 302
    :sswitch_1
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    add-int/lit8 v1, v3, -0x20

    .line 303
    goto :goto_0

    .line 305
    :sswitch_2
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    add-int/lit8 v1, v3, -0x18

    .line 306
    goto :goto_0

    .line 297
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
    .line 196
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 208
    :goto_0
    return-void

    .line 200
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/GSensorSettings;->btn_cal:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 201
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 202
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 203
    iget-object v1, p0, Lcom/android/settings_ex/GSensorSettings;->mHandler:Lcom/android/settings_ex/GSensorSettings$setHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b017a
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x32

    .line 108
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/settings_ex/GSensorSettings;->getLcdWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/settings_ex/GSensorSettings;->CENTER_X:I

    .line 111
    invoke-virtual {p0}, Lcom/android/settings_ex/GSensorSettings;->getLcdHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/GSensorSettings;->dpToPixel(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings_ex/GSensorSettings;->CENTER_Y:I

    .line 112
    iget v0, p0, Lcom/android/settings_ex/GSensorSettings;->CENTER_X:I

    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/android/settings_ex/GSensorSettings;->mHorizontalLine:I

    .line 113
    iget v0, p0, Lcom/android/settings_ex/GSensorSettings;->CENTER_Y:I

    mul-int/lit8 v0, v0, 0x42

    div-int/lit8 v0, v0, 0x64

    iput v0, p0, Lcom/android/settings_ex/GSensorSettings;->mVerticalLine:I

    .line 114
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/GSensorSettings;->dpToPixel(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings_ex/GSensorSettings;->mBackgroundRadian:I

    .line 115
    invoke-direct {p0}, Lcom/android/settings_ex/GSensorSettings;->getIconRadius()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/GSensorSettings;->ICON_RADIUS:I

    .line 116
    const/16 v0, 0x10b

    iput v0, p0, Lcom/android/settings_ex/GSensorSettings;->CIRCLE_RADIUS:I

    .line 118
    new-instance v0, Lcom/android/settings_ex/GSensorSettings$setHandler;

    invoke-direct {v0, p0, v3}, Lcom/android/settings_ex/GSensorSettings$setHandler;-><init>(Lcom/android/settings_ex/GSensorSettings;Lcom/android/settings_ex/GSensorSettings$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/GSensorSettings;->mHandler:Lcom/android/settings_ex/GSensorSettings$setHandler;

    .line 119
    const v0, 0x7f040078

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 120
    new-instance v0, Lcom/android/settings_ex/GSensorSettings$GSensorSettingsView;

    invoke-direct {v0, p0, p0}, Lcom/android/settings_ex/GSensorSettings$GSensorSettingsView;-><init>(Lcom/android/settings_ex/GSensorSettings;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/GSensorSettings;->drawView:Lcom/android/settings_ex/GSensorSettings$GSensorSettingsView;

    .line 121
    const v0, 0x7f0b0179

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings_ex/GSensorSettings;->draw_layout:Landroid/widget/LinearLayout;

    .line 122
    iget-object v0, p0, Lcom/android/settings_ex/GSensorSettings;->draw_layout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings_ex/GSensorSettings;->drawView:Lcom/android/settings_ex/GSensorSettings$GSensorSettingsView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 123
    invoke-direct {p0}, Lcom/android/settings_ex/GSensorSettings;->init()V

    .line 124
    new-instance v0, Lcom/android/settings_ex/GSensorSettings$handlersensor;

    invoke-direct {v0, p0, v3}, Lcom/android/settings_ex/GSensorSettings$handlersensor;-><init>(Lcom/android/settings_ex/GSensorSettings;Lcom/android/settings_ex/GSensorSettings$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/GSensorSettings;->mSensorListner:Lcom/android/settings_ex/GSensorSettings$handlersensor;

    .line 125
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 149
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 151
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 152
    const/4 v0, 0x1

    return v0

    .line 149
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/settings_ex/GSensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/settings_ex/GSensorSettings;->mSensorListner:Lcom/android/settings_ex/GSensorSettings$handlersensor;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 229
    iget-object v0, p0, Lcom/android/settings_ex/GSensorSettings;->mHandler:Lcom/android/settings_ex/GSensorSettings$setHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 230
    iget-object v0, p0, Lcom/android/settings_ex/GSensorSettings;->mHandler:Lcom/android/settings_ex/GSensorSettings$setHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 231
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 232
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 212
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 213
    sput v3, Lcom/android/settings_ex/GSensorSettings;->sampleCount:I

    .line 214
    iget-object v0, p0, Lcom/android/settings_ex/GSensorSettings;->drawView:Lcom/android/settings_ex/GSensorSettings$GSensorSettingsView;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/settings_ex/GSensorSettings;->drawView:Lcom/android/settings_ex/GSensorSettings$GSensorSettingsView;

    #calls: Lcom/android/settings_ex/GSensorSettings$GSensorSettingsView;->updateState(I)V
    invoke-static {v0, v5}, Lcom/android/settings_ex/GSensorSettings$GSensorSettingsView;->access$200(Lcom/android/settings_ex/GSensorSettings$GSensorSettingsView;I)V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/GSensorSettings;->text:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/android/settings_ex/GSensorSettings;->text:Landroid/widget/TextView;

    const v1, 0x7f0909bd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/GSensorSettings;->btn_cal:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/android/settings_ex/GSensorSettings;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/settings_ex/GSensorSettings;->mSensorListner:Lcom/android/settings_ex/GSensorSettings$handlersensor;

    iget-object v2, p0, Lcom/android/settings_ex/GSensorSettings;->mAccelerometerSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;I)Z

    .line 222
    return-void
.end method
