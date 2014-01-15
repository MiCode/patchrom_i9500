.class Lcom/baidu/mapapi/n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/n$1;,
        Lcom/baidu/mapapi/n$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/mapapi/n;->a:Ljava/lang/reflect/Constructor;

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/baidu/mapapi/n;->b:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(ILcom/baidu/mapapi/n$a;)D
    .locals 6

    const-wide/high16 v0, 0x4059

    const-wide v4, 0x4004cccccccccccdL

    sget-object v2, Lcom/baidu/mapapi/n$1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-wide v0

    :pswitch_0
    int-to-double v2, p0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double/2addr v4, v2

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    goto :goto_0

    :pswitch_1
    const-wide/high16 v0, 0x4000

    int-to-double v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4010

    mul-double/2addr v0, v2

    goto :goto_0

    :pswitch_2
    int-to-double v2, p0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide v4, 0x4050400000000000L

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static a(Ljava/util/ArrayList;Ljava/util/ArrayList;ILjava/util/ArrayList;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/GeoPoint;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/GeoPoint;",
            ">;I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/GeoPoint;",
            ">;)I"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    rsub-int/lit8 v0, p2, 0x12

    sget-object v1, Lcom/baidu/mapapi/n$a;->c:Lcom/baidu/mapapi/n$a;

    invoke-static {v0, v1}, Lcom/baidu/mapapi/n;->a(ILcom/baidu/mapapi/n$a;)D

    move-result-wide v0

    invoke-static {p0, p1, p3, v0, v1}, Lcom/baidu/mapapi/n;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;D)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;D)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/GeoPoint;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/GeoPoint;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/GeoPoint;",
            ">;D)I"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v0, 0x2

    if-ge v6, v0, :cond_1

    const/4 v0, -0x1

    :cond_0
    return v0

    :cond_1
    new-array v1, v6, [I

    move v0, v2

    :goto_0
    if-ge v0, v6, :cond_2

    const/4 v3, 0x1

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v6, -0x1

    move-object v0, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/baidu/mapapi/n;->a(Ljava/util/ArrayList;[IIID)I

    move v0, v2

    :goto_1
    if-ge v2, v6, :cond_0

    aget v3, v1, v2

    if-lez v3, :cond_3

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method static a(Ljava/util/ArrayList;[IIID)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mapapi/GeoPoint;",
            ">;[IIID)I"
        }
    .end annotation

    const-wide/high16 v2, 0x4059

    const/4 v7, 0x0

    add-int/lit8 v0, p2, 0x1

    if-gt p3, v0, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    mul-double v0, p4, p4

    mul-double/2addr v0, v2

    mul-double v8, v0, v2

    const-wide/16 v5, -0x1

    add-int/lit8 v4, p2, 0x1

    move v3, v7

    :goto_1
    if-ge v4, p3, :cond_2

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/GeoPoint;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/mapapi/GeoPoint;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/mapapi/GeoPoint;

    invoke-static {v0, v1, v2}, Lcom/baidu/mapapi/n;->a(Lcom/baidu/mapapi/GeoPoint;Lcom/baidu/mapapi/GeoPoint;Lcom/baidu/mapapi/GeoPoint;)J

    move-result-wide v0

    cmp-long v2, v0, v5

    if-lez v2, :cond_4

    move v3, v4

    :goto_2
    add-int/lit8 v4, v4, 0x1

    move-wide v5, v0

    goto :goto_1

    :cond_2
    long-to-double v0, v5

    cmpl-double v0, v0, v8

    if-ltz v0, :cond_3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/baidu/mapapi/n;->a(Ljava/util/ArrayList;[IIID)I

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move-wide v5, p4

    invoke-static/range {v1 .. v6}, Lcom/baidu/mapapi/n;->a(Ljava/util/ArrayList;[IIID)I

    goto :goto_0

    :cond_3
    add-int/lit8 v0, p2, 0x1

    :goto_3
    if-ge v0, p3, :cond_0

    aput v7, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    move-wide v0, v5

    goto :goto_2
.end method

.method static a(Lcom/baidu/mapapi/GeoPoint;Lcom/baidu/mapapi/GeoPoint;Lcom/baidu/mapapi/GeoPoint;)J
    .locals 22

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/mapapi/GeoPoint;->getLongitudeE6()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/mapapi/GeoPoint;->getLatitudeE6()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/mapapi/GeoPoint;->getLongitudeE6()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/mapapi/GeoPoint;->getLatitudeE6()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/mapapi/GeoPoint;->getLongitudeE6()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/mapapi/GeoPoint;->getLatitudeE6()I

    move-result v12

    int-to-long v12, v12

    sub-long v14, v6, v10

    sub-long v16, v8, v12

    mul-long/2addr v14, v14

    mul-long v16, v16, v16

    add-long v14, v14, v16

    const-wide/16 v16, 0x0

    cmp-long v16, v14, v16

    if-nez v16, :cond_1

    sub-long/2addr v2, v6

    sub-long/2addr v4, v8

    mul-long/2addr v2, v2

    mul-long/2addr v4, v4

    add-long/2addr v2, v4

    :cond_0
    :goto_0
    return-wide v2

    :cond_1
    sub-long v16, v8, v4

    sub-long v18, v8, v12

    mul-long v16, v16, v18

    sub-long v18, v6, v2

    sub-long v20, v10, v6

    mul-long v18, v18, v20

    sub-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    long-to-double v0, v14

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    const-wide/high16 v18, 0x3ff0

    cmpl-double v18, v16, v18

    if-gtz v18, :cond_2

    const-wide/16 v18, 0x0

    cmpg-double v16, v16, v18

    if-gez v16, :cond_3

    :cond_2
    sub-long v6, v2, v6

    sub-long v10, v2, v10

    sub-long v2, v4, v8

    sub-long/2addr v4, v12

    mul-long/2addr v6, v6

    mul-long/2addr v2, v2

    add-long/2addr v2, v6

    mul-long v6, v10, v10

    mul-long/2addr v4, v4

    add-long/2addr v4, v6

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    move-wide v2, v4

    goto :goto_0

    :cond_3
    sub-long/2addr v12, v8

    sub-long v10, v6, v10

    sub-long v4, v8, v4

    neg-long v8, v10

    mul-long/2addr v4, v8

    sub-long v2, v6, v2

    mul-long/2addr v2, v12

    sub-long v2, v4, v2

    long-to-double v4, v2

    long-to-double v6, v14

    div-double/2addr v4, v6

    long-to-double v2, v2

    mul-double/2addr v2, v4

    double-to-long v2, v2

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    sget v0, Lcom/baidu/mapapi/n;->b:I

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v2, Lcom/baidu/mapapi/n;->a:Ljava/lang/reflect/Constructor;

    if-nez v2, :cond_1

    const-string v2, "android.graphics.drawable.BitmapDrawable"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/res/Resources;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/graphics/Bitmap;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    sput-object v2, Lcom/baidu/mapapi/n;->a:Ljava/lang/reflect/Constructor;

    :cond_1
    sget-object v2, Lcom/baidu/mapapi/n;->a:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;F)Landroid/graphics/drawable/Drawable;
    .locals 7

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->setRotate(F)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    sget v0, Lcom/baidu/mapapi/n;->b:I

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v2, Lcom/baidu/mapapi/n;->a:Ljava/lang/reflect/Constructor;

    if-nez v2, :cond_1

    const-string v2, "android.graphics.drawable.BitmapDrawable"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/res/Resources;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/graphics/Bitmap;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    sput-object v2, Lcom/baidu/mapapi/n;->a:Ljava/lang/reflect/Constructor;

    :cond_1
    sget-object v2, Lcom/baidu/mapapi/n;->a:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Landroid/graphics/Point;Landroid/graphics/Point;II)Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/graphics/Point;->x:I

    if-gtz v1, :cond_0

    iget v1, p1, Landroid/graphics/Point;->x:I

    if-lez v1, :cond_1

    :cond_0
    iget v1, p0, Landroid/graphics/Point;->x:I

    if-lt v1, p2, :cond_2

    iget v1, p1, Landroid/graphics/Point;->x:I

    if-lt v1, p2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v1, p0, Landroid/graphics/Point;->y:I

    if-gtz v1, :cond_3

    iget v1, p1, Landroid/graphics/Point;->y:I

    if-lez v1, :cond_1

    :cond_3
    iget v1, p0, Landroid/graphics/Point;->y:I

    if-lt v1, p3, :cond_4

    iget v1, p1, Landroid/graphics/Point;->y:I

    if-ge v1, p3, :cond_1

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method
