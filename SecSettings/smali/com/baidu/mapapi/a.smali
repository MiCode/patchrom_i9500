.class public Lcom/baidu/mapapi/a;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/a$1;
    }
.end annotation


# static fields
.field private static J:Ljava/lang/reflect/Method;

.field private static K:Ljava/lang/reflect/Method;

.field private static L:Ljava/lang/reflect/Method;

.field private static h:Landroid/graphics/Bitmap;

.field private static i:Ljava/nio/ShortBuffer;

.field private static j:[S

.field private static k:I

.field private static l:I

.field private static m:I


# instance fields
.field private A:F

.field private B:F

.field private C:F

.field private D:F

.field private E:I

.field private F:I

.field private G:Z

.field private H:I

.field private I:Landroid/graphics/Paint;

.field private M:Lcom/baidu/mapapi/MapView$a;

.field a:Z

.field b:I

.field c:I

.field d:I

.field e:D

.field f:I

.field g:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Lcom/baidu/mapapi/MapView;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapapi/Overlay;",
            ">;"
        }
    .end annotation
.end field

.field private t:Z

.field private u:Z

.field private v:J

.field private w:J

.field private x:J

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/mapapi/a;->h:Landroid/graphics/Bitmap;

    sput-object v0, Lcom/baidu/mapapi/a;->i:Ljava/nio/ShortBuffer;

    sput-object v0, Lcom/baidu/mapapi/a;->j:[S

    sput v1, Lcom/baidu/mapapi/a;->k:I

    sput v1, Lcom/baidu/mapapi/a;->l:I

    sput v1, Lcom/baidu/mapapi/a;->m:I

    sput-object v0, Lcom/baidu/mapapi/a;->J:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/baidu/mapapi/a;->K:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/baidu/mapapi/a;->L:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/baidu/mapapi/MapView;)V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/baidu/mapapi/a;->a:Z

    iput v2, p0, Lcom/baidu/mapapi/a;->n:I

    iput v2, p0, Lcom/baidu/mapapi/a;->o:I

    iput v2, p0, Lcom/baidu/mapapi/a;->p:I

    iput v2, p0, Lcom/baidu/mapapi/a;->q:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapapi/a;->r:Lcom/baidu/mapapi/MapView;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/a;->s:Ljava/util/List;

    iput v2, p0, Lcom/baidu/mapapi/a;->b:I

    iput v2, p0, Lcom/baidu/mapapi/a;->c:I

    iput v2, p0, Lcom/baidu/mapapi/a;->d:I

    iput-boolean v2, p0, Lcom/baidu/mapapi/a;->t:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mapapi/a;->u:Z

    iput-wide v3, p0, Lcom/baidu/mapapi/a;->v:J

    iput-wide v3, p0, Lcom/baidu/mapapi/a;->w:J

    iput-wide v3, p0, Lcom/baidu/mapapi/a;->x:J

    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/baidu/mapapi/a;->e:D

    iput v2, p0, Lcom/baidu/mapapi/a;->E:I

    iput v2, p0, Lcom/baidu/mapapi/a;->f:I

    iput v2, p0, Lcom/baidu/mapapi/a;->g:I

    iput v2, p0, Lcom/baidu/mapapi/a;->F:I

    iput-boolean v2, p0, Lcom/baidu/mapapi/a;->G:Z

    iput v2, p0, Lcom/baidu/mapapi/a;->H:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/a;->I:Landroid/graphics/Paint;

    sget-object v0, Lcom/baidu/mapapi/MapView$a;->b:Lcom/baidu/mapapi/MapView$a;

    iput-object v0, p0, Lcom/baidu/mapapi/a;->M:Lcom/baidu/mapapi/MapView$a;

    iput-object p2, p0, Lcom/baidu/mapapi/a;->r:Lcom/baidu/mapapi/MapView;

    iget-object v0, p0, Lcom/baidu/mapapi/a;->I:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/baidu/mapapi/a;->I:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x3b9aca00

    div-long v4, v0, v2

    iget-object v0, p0, Lcom/baidu/mapapi/a;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/Overlay;

    iget-object v2, p0, Lcom/baidu/mapapi/a;->r:Lcom/baidu/mapapi/MapView;

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/mapapi/Overlay;->draw(Landroid/graphics/Canvas;Lcom/baidu/mapapi/MapView;ZJ)Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/baidu/mapapi/a;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/mapapi/a;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/mapapi/a;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    sput v1, Lcom/baidu/mapapi/a;->l:I

    sput v1, Lcom/baidu/mapapi/a;->m:I

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/mapapi/a;->h:Landroid/graphics/Bitmap;

    return-void
.end method

.method a(I)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/mapapi/a;->r:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MapView;->getMinZoomLevel()I

    move-result v0

    iget-object v1, p0, Lcom/baidu/mapapi/a;->r:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v1}, Lcom/baidu/mapapi/MapView;->getMaxZoomLevel()I

    move-result v1

    if-gt v0, p1, :cond_0

    if-gt p1, v1, :cond_0

    const/16 v0, 0x1002

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/baidu/mapapi/Mj;->MapProc(III)I

    :cond_0
    return-void
.end method

.method public a(III)V
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/a;->F:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/baidu/mapapi/a;->F:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/mapapi/a;->E:I

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    sget-object v0, Lcom/baidu/mapapi/a;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/baidu/mapapi/a;->f:I

    sget-object v0, Lcom/baidu/mapapi/a;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/baidu/mapapi/a;->g:I

    :goto_0
    const/4 v0, 0x1

    sput v0, Lcom/baidu/mapapi/Mj;->p:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_0
    iput p2, p0, Lcom/baidu/mapapi/a;->f:I

    iput p3, p0, Lcom/baidu/mapapi/a;->g:I

    goto :goto_0
.end method

.method public a(IIII)V
    .locals 4

    if-lez p4, :cond_0

    if-gtz p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    add-int/lit8 v0, p3, 0x3

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v0, p4, 0x3

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v2, v0, 0x4

    sget v0, Lcom/baidu/mapapi/a;->l:I

    if-ne v0, v1, :cond_2

    sget v0, Lcom/baidu/mapapi/a;->m:I

    if-eq v0, v2, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/baidu/mapapi/a;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/Overlay;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/baidu/mapapi/Overlay;->a(IIII)V

    goto :goto_1

    :cond_3
    mul-int v0, v1, v2

    mul-int/lit8 v0, v0, 0x2

    sget v3, Lcom/baidu/mapapi/a;->k:I

    if-le v0, v3, :cond_4

    new-array v3, v0, [S

    sput-object v3, Lcom/baidu/mapapi/a;->j:[S

    invoke-static {v0}, Ljava/nio/ShortBuffer;->allocate(I)Ljava/nio/ShortBuffer;

    move-result-object v3

    sput-object v3, Lcom/baidu/mapapi/a;->i:Ljava/nio/ShortBuffer;

    sput v0, Lcom/baidu/mapapi/a;->k:I

    :cond_4
    sget-object v0, Lcom/baidu/mapapi/a;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/baidu/mapapi/a;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/baidu/mapapi/a;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapapi/a;->h:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_2
    const/4 v0, 0x1

    sput v0, Lcom/baidu/mapapi/Mj;->p:I

    sget-object v0, Lcom/baidu/mapapi/a;->j:[S

    invoke-static {v0, v1, v2}, Lcom/baidu/mapapi/Mj;->renderUpdateScreen([SII)V

    sput v1, Lcom/baidu/mapapi/a;->l:I

    sput v2, Lcom/baidu/mapapi/a;->m:I

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/System;->gc()V

    sget-object v0, Lcom/baidu/mapapi/a;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/baidu/mapapi/a;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/baidu/mapapi/a;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v5, 0x0

    const/16 v0, 0xc0

    invoke-virtual {p1, v0, v0, v0}, Landroid/graphics/Canvas;->drawRGB(III)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget v1, p0, Lcom/baidu/mapapi/a;->H:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-wide v1, p0, Lcom/baidu/mapapi/a;->e:D

    const-wide/high16 v3, 0x3ff0

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/baidu/mapapi/a;->e:D

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    double-to-float v3, v1

    double-to-float v1, v1

    iget v2, p0, Lcom/baidu/mapapi/a;->f:I

    int-to-float v2, v2

    iget v4, p0, Lcom/baidu/mapapi/a;->g:I

    int-to-float v4, v4

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget v1, p0, Lcom/baidu/mapapi/a;->c:I

    int-to-float v1, v1

    iget v2, p0, Lcom/baidu/mapapi/a;->d:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    sget-object v1, Lcom/baidu/mapapi/a;->h:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v0, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/baidu/mapapi/a;->h:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/baidu/mapapi/a;->c:I

    int-to-float v1, v1

    iget v2, p0, Lcom/baidu/mapapi/a;->d:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/mapapi/a;->u:Z

    return-void
.end method

.method a(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method a(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/mapapi/a;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v0, v1

    move v1, v3

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/a;->s:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/Overlay;

    iget-object v2, p0, Lcom/baidu/mapapi/a;->r:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0, p1, p2, v2}, Lcom/baidu/mapapi/Overlay;->onKeyDown(ILandroid/view/KeyEvent;Lcom/baidu/mapapi/MapView;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method a(Landroid/view/MotionEvent;)Z
    .locals 12

    const-wide/high16 v10, 0x3fe0

    const/high16 v7, 0x4000

    const-wide/16 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x4

    if-gt v0, v3, :cond_1

    move v0, v2

    :goto_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    :try_start_0
    sget-object v0, Lcom/baidu/mapapi/a;->L:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/a;->y:F

    sget-object v0, Lcom/baidu/mapapi/a;->K:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/a;->z:F

    sget-object v0, Lcom/baidu/mapapi/a;->L:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/a;->A:F

    sget-object v0, Lcom/baidu/mapapi/a;->K:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/a;->B:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    iget v0, p0, Lcom/baidu/mapapi/a;->y:F

    iget v3, p0, Lcom/baidu/mapapi/a;->A:F

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/baidu/mapapi/a;->y:F

    iget v4, p0, Lcom/baidu/mapapi/a;->A:F

    sub-float/2addr v3, v4

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/baidu/mapapi/a;->z:F

    iget v4, p0, Lcom/baidu/mapapi/a;->B:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/baidu/mapapi/a;->z:F

    iget v5, p0, Lcom/baidu/mapapi/a;->B:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v0, v3

    div-float/2addr v0, v7

    iput v0, p0, Lcom/baidu/mapapi/a;->D:F

    iget v0, p0, Lcom/baidu/mapapi/a;->E:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/baidu/mapapi/a;->D:F

    sget v3, Lcom/baidu/mapapi/Mj;->j:F

    const/high16 v4, 0x41f0

    mul-float/2addr v3, v4

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    iput-boolean v1, p0, Lcom/baidu/mapapi/a;->t:Z

    iget v0, p0, Lcom/baidu/mapapi/a;->y:F

    iget v3, p0, Lcom/baidu/mapapi/a;->A:F

    add-float/2addr v0, v3

    div-float/2addr v0, v7

    iget v3, p0, Lcom/baidu/mapapi/a;->c:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/baidu/mapapi/a;->f:I

    iget v0, p0, Lcom/baidu/mapapi/a;->z:F

    iget v3, p0, Lcom/baidu/mapapi/a;->B:F

    add-float/2addr v0, v3

    div-float/2addr v0, v7

    iget v3, p0, Lcom/baidu/mapapi/a;->d:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/baidu/mapapi/a;->g:I

    iget v0, p0, Lcom/baidu/mapapi/a;->D:F

    iput v0, p0, Lcom/baidu/mapapi/a;->C:F

    iput v2, p0, Lcom/baidu/mapapi/a;->E:I

    :cond_0
    :goto_2
    iget v0, p0, Lcom/baidu/mapapi/a;->E:I

    if-eqz v0, :cond_7

    move v0, v1

    :goto_3
    return v0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/baidu/mapapi/a;->J:Ljava/lang/reflect/Method;

    if-nez v0, :cond_2

    const-string v0, "android.view.MotionEvent"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getPointerCount"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapapi/a;->J:Ljava/lang/reflect/Method;

    const-string v0, "getX"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapapi/a;->L:Ljava/lang/reflect/Method;

    const-string v0, "getY"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/baidu/mapapi/a;->K:Ljava/lang/reflect/Method;

    :cond_2
    sget-object v0, Lcom/baidu/mapapi/a;->J:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    :cond_3
    iget v0, p0, Lcom/baidu/mapapi/a;->H:I

    if-ne v0, v2, :cond_5

    iget v0, p0, Lcom/baidu/mapapi/a;->D:F

    iget v3, p0, Lcom/baidu/mapapi/a;->C:F

    div-float/2addr v0, v3

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4008

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    div-double/2addr v3, v5

    const-wide/16 v5, 0x0

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_4

    add-double/2addr v3, v10

    double-to-int v0, v3

    :goto_4
    if-eqz v0, :cond_0

    iget v3, p0, Lcom/baidu/mapapi/a;->D:F

    iput v3, p0, Lcom/baidu/mapapi/a;->C:F

    iget v3, p0, Lcom/baidu/mapapi/a;->f:I

    iget v4, p0, Lcom/baidu/mapapi/a;->c:I

    add-int/2addr v3, v4

    sget v4, Lcom/baidu/mapapi/a;->l:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/baidu/mapapi/a;->g:I

    iget v5, p0, Lcom/baidu/mapapi/a;->d:I

    add-int/2addr v4, v5

    sget v5, Lcom/baidu/mapapi/a;->m:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {p0, v0, v3, v4}, Lcom/baidu/mapapi/a;->b(III)V

    goto/16 :goto_2

    :cond_4
    sub-double/2addr v3, v10

    double-to-int v0, v3

    goto :goto_4

    :cond_5
    iget v0, p0, Lcom/baidu/mapapi/a;->D:F

    iget v3, p0, Lcom/baidu/mapapi/a;->C:F

    div-float/2addr v0, v3

    float-to-double v3, v0

    iput-wide v3, p0, Lcom/baidu/mapapi/a;->e:D

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_2

    :cond_6
    iget v0, p0, Lcom/baidu/mapapi/a;->E:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/baidu/mapapi/a;->E:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_2

    :cond_7
    iget-object v0, p0, Lcom/baidu/mapapi/a;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_5
    if-ltz v3, :cond_9

    iget-object v0, p0, Lcom/baidu/mapapi/a;->s:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/Overlay;

    iget-object v4, p0, Lcom/baidu/mapapi/a;->r:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0, p1, v4}, Lcom/baidu/mapapi/Overlay;->onTouchEvent(Landroid/view/MotionEvent;Lcom/baidu/mapapi/MapView;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    goto/16 :goto_3

    :cond_8
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_5

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    goto/16 :goto_3

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/baidu/mapapi/a;->n:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/baidu/mapapi/a;->o:I

    iput v1, p0, Lcom/baidu/mapapi/a;->c:I

    iput v1, p0, Lcom/baidu/mapapi/a;->d:I

    iput-boolean v2, p0, Lcom/baidu/mapapi/a;->t:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/baidu/mapapi/Mj;->l:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/baidu/mapapi/Mj;->m:I

    const/4 v0, 0x4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v0, v1, v3}, Lcom/baidu/mapapi/Mj;->MapProc(III)I

    :cond_a
    :goto_6
    move v0, v2

    goto/16 :goto_3

    :pswitch_1
    iget-boolean v0, p0, Lcom/baidu/mapapi/a;->t:Z

    if-nez v0, :cond_b

    move v0, v2

    goto/16 :goto_3

    :cond_b
    iput-boolean v1, p0, Lcom/baidu/mapapi/a;->t:Z

    iget v0, p0, Lcom/baidu/mapapi/a;->c:I

    if-nez v0, :cond_c

    iget v0, p0, Lcom/baidu/mapapi/a;->d:I

    if-eqz v0, :cond_d

    :cond_c
    iput v1, p0, Lcom/baidu/mapapi/a;->c:I

    iput v1, p0, Lcom/baidu/mapapi/a;->d:I

    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v1, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget-boolean v3, p0, Lcom/baidu/mapapi/a;->u:Z

    if-eqz v3, :cond_f

    const/high16 v3, 0x4248

    sget v4, Lcom/baidu/mapapi/Mj;->j:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget-wide v4, p0, Lcom/baidu/mapapi/a;->x:J

    iget-wide v6, p0, Lcom/baidu/mapapi/a;->w:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-gez v4, :cond_e

    iget v4, p0, Lcom/baidu/mapapi/a;->n:I

    sub-int v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v3, :cond_e

    iget v4, p0, Lcom/baidu/mapapi/a;->o:I

    sub-int v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v3, :cond_e

    iget-wide v4, p0, Lcom/baidu/mapapi/a;->v:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/baidu/mapapi/a;->v:J

    :cond_e
    iget-wide v4, p0, Lcom/baidu/mapapi/a;->v:J

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/baidu/mapapi/a;->w:J

    :cond_f
    :goto_7
    const/high16 v3, 0x4120

    sget v4, Lcom/baidu/mapapi/Mj;->j:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lcom/baidu/mapapi/a;->n:I

    sub-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v3, :cond_10

    iget v4, p0, Lcom/baidu/mapapi/a;->o:I

    sub-int/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v3, :cond_10

    iget v1, p0, Lcom/baidu/mapapi/a;->n:I

    iget v0, p0, Lcom/baidu/mapapi/a;->o:I

    :cond_10
    iput v1, p0, Lcom/baidu/mapapi/a;->p:I

    iput v0, p0, Lcom/baidu/mapapi/a;->q:I

    sput v1, Lcom/baidu/mapapi/Mj;->n:I

    sput v0, Lcom/baidu/mapapi/Mj;->o:I

    const/4 v3, 0x5

    invoke-static {v3, v1, v0}, Lcom/baidu/mapapi/Mj;->MapProc(III)I

    iget v3, p0, Lcom/baidu/mapapi/a;->n:I

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v3, 0x14

    if-ge v1, v3, :cond_a

    iget v1, p0, Lcom/baidu/mapapi/a;->o:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_a

    iget-object v0, p0, Lcom/baidu/mapapi/a;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_8
    if-ltz v1, :cond_a

    iget-object v0, p0, Lcom/baidu/mapapi/a;->s:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/Overlay;

    iget-object v3, p0, Lcom/baidu/mapapi/a;->r:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v3}, Lcom/baidu/mapapi/MapView;->getProjection()Lcom/baidu/mapapi/Projection;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-interface {v3, v4, v5}, Lcom/baidu/mapapi/Projection;->fromPixels(II)Lcom/baidu/mapapi/GeoPoint;

    move-result-object v3

    instance-of v4, v0, Lcom/baidu/mapapi/ItemizedOverlay;

    if-eqz v4, :cond_14

    check-cast v0, Lcom/baidu/mapapi/ItemizedOverlay;

    iget-object v4, p0, Lcom/baidu/mapapi/a;->r:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0, v3, v4}, Lcom/baidu/mapapi/ItemizedOverlay;->onTap(Lcom/baidu/mapapi/GeoPoint;Lcom/baidu/mapapi/MapView;)Z

    move-result v0

    :goto_9
    if-eqz v0, :cond_15

    move v0, v2

    goto/16 :goto_3

    :cond_11
    iget-wide v4, p0, Lcom/baidu/mapapi/a;->v:J

    const-wide/16 v6, 0x2

    cmp-long v4, v4, v6

    if-ltz v4, :cond_f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/baidu/mapapi/a;->x:J

    iget-wide v4, p0, Lcom/baidu/mapapi/a;->x:J

    iget-wide v6, p0, Lcom/baidu/mapapi/a;->w:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-gez v4, :cond_13

    iget v4, p0, Lcom/baidu/mapapi/a;->p:I

    sub-int/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v3, :cond_13

    iget v4, p0, Lcom/baidu/mapapi/a;->q:I

    sub-int/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v3, :cond_13

    iget-object v3, p0, Lcom/baidu/mapapi/a;->r:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v3}, Lcom/baidu/mapapi/MapView;->getZoomLevel()I

    move-result v3

    const/16 v4, 0x12

    if-ge v3, v4, :cond_12

    invoke-virtual {p0, v2, v1, v0}, Lcom/baidu/mapapi/a;->a(III)V

    :cond_12
    iput-wide v8, p0, Lcom/baidu/mapapi/a;->v:J

    iput-wide v8, p0, Lcom/baidu/mapapi/a;->w:J

    iput-wide v8, p0, Lcom/baidu/mapapi/a;->x:J

    goto/16 :goto_6

    :cond_13
    iput-wide v8, p0, Lcom/baidu/mapapi/a;->v:J

    iput-wide v8, p0, Lcom/baidu/mapapi/a;->w:J

    iput-wide v8, p0, Lcom/baidu/mapapi/a;->x:J

    goto/16 :goto_7

    :cond_14
    iget-object v4, p0, Lcom/baidu/mapapi/a;->r:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0, v3, v4}, Lcom/baidu/mapapi/Overlay;->onTap(Lcom/baidu/mapapi/GeoPoint;Lcom/baidu/mapapi/MapView;)Z

    move-result v0

    goto :goto_9

    :cond_15
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto/16 :goto_8

    :pswitch_2
    iget-boolean v0, p0, Lcom/baidu/mapapi/a;->t:Z

    if-ne v0, v2, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/baidu/mapapi/a;->n:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/mapapi/a;->c:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/baidu/mapapi/a;->o:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/mapapi/a;->d:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 v0, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v0, v1, v3}, Lcom/baidu/mapapi/Mj;->MapProc(III)I

    goto/16 :goto_6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method b(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/mapapi/a;->H:I

    return-void
.end method

.method b(III)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/mapapi/a;->r:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MapView;->getMinZoomLevel()I

    move-result v0

    iget-object v1, p0, Lcom/baidu/mapapi/a;->r:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v1}, Lcom/baidu/mapapi/MapView;->getMaxZoomLevel()I

    move-result v1

    iget-object v2, p0, Lcom/baidu/mapapi/a;->r:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v2}, Lcom/baidu/mapapi/MapView;->getZoomLevel()I

    move-result v2

    add-int/2addr v2, p1

    if-gt v0, v2, :cond_0

    if-gt v2, v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "act"

    const/16 v2, 0x3e9

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "opt"

    const v2, 0x98e6f8

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "level"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "x"

    iget v2, p0, Lcom/baidu/mapapi/a;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "y"

    iget v2, p0, Lcom/baidu/mapapi/a;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "dx"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "dy"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/baidu/mapapi/Mj;->sendBundle(Landroid/os/Bundle;)I

    :cond_0
    return-void
.end method

.method protected b(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/a;->a(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/baidu/mapapi/a;->G:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/baidu/mapapi/a;->e:D

    const-wide/high16 v2, 0x3ff0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/baidu/mapapi/a$1;->a:[I

    iget-object v1, p0, Lcom/baidu/mapapi/a;->M:Lcom/baidu/mapapi/MapView$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/a;->c(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/a;->d(Landroid/graphics/Canvas;)V

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/a;->d(Landroid/graphics/Canvas;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/a;->d(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/a;->c(Landroid/graphics/Canvas;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/baidu/mapapi/a;->c(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/a;->d(Landroid/graphics/Canvas;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/mapapi/a;->G:Z

    return-void
.end method

.method b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/mapapi/a;->u:Z

    return v0
.end method

.method b(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/mapapi/a;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v0, v1

    move v1, v3

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/a;->s:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/Overlay;

    iget-object v2, p0, Lcom/baidu/mapapi/a;->r:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0, p1, p2, v2}, Lcom/baidu/mapapi/Overlay;->onKeyUp(ILandroid/view/KeyEvent;Lcom/baidu/mapapi/MapView;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method b(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/mapapi/a;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v0, v1

    move v1, v3

    :goto_0
    if-ltz v1, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/a;->s:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/Overlay;

    iget-object v2, p0, Lcom/baidu/mapapi/a;->r:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0, p1, v2}, Lcom/baidu/mapapi/Overlay;->onTrackballEvent(Landroid/view/MotionEvent;Lcom/baidu/mapapi/MapView;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mapapi/Overlay;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/mapapi/a;->s:Ljava/util/List;

    return-object v0
.end method

.method d()Z
    .locals 2

    iget-object v0, p0, Lcom/baidu/mapapi/a;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/a;->s:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/Overlay;

    instance-of v0, v0, Lcom/baidu/mapapi/MyLocationOverlay;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    const-wide v12, 0x3fb999999999999aL

    const-wide/16 v10, 0x0

    const/4 v1, 0x1

    const-wide/high16 v8, 0x4000

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/baidu/mapapi/a;->r:Lcom/baidu/mapapi/MapView;

    invoke-virtual {v0}, Lcom/baidu/mapapi/MapView;->e()V

    iget v0, p0, Lcom/baidu/mapapi/a;->E:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/a;->b(Landroid/graphics/Canvas;)V

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/baidu/mapapi/a;->j:[S

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/mapapi/a;->a:Z

    if-ne v0, v1, :cond_0

    iput v7, p0, Lcom/baidu/mapapi/a;->c:I

    iput v7, p0, Lcom/baidu/mapapi/a;->d:I

    sget-object v0, Lcom/baidu/mapapi/a;->i:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    sget-object v0, Lcom/baidu/mapapi/a;->i:Ljava/nio/ShortBuffer;

    sget-object v1, Lcom/baidu/mapapi/a;->j:[S

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    sget-object v0, Lcom/baidu/mapapi/a;->i:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    sget-object v0, Lcom/baidu/mapapi/a;->h:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/baidu/mapapi/a;->i:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    iput-boolean v7, p0, Lcom/baidu/mapapi/a;->a:Z

    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/baidu/mapapi/a;->e:D

    :cond_0
    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/a;->b(Landroid/graphics/Canvas;)V

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/baidu/mapapi/a;->H:I

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/baidu/mapapi/a;->j:[S

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/baidu/mapapi/a;->a:Z

    if-ne v0, v1, :cond_1

    iput v7, p0, Lcom/baidu/mapapi/a;->c:I

    iput v7, p0, Lcom/baidu/mapapi/a;->d:I

    sget-object v0, Lcom/baidu/mapapi/a;->i:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    sget-object v0, Lcom/baidu/mapapi/a;->i:Ljava/nio/ShortBuffer;

    sget-object v1, Lcom/baidu/mapapi/a;->j:[S

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    sget-object v0, Lcom/baidu/mapapi/a;->i:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    sget-object v0, Lcom/baidu/mapapi/a;->h:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/baidu/mapapi/a;->i:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    iput-boolean v7, p0, Lcom/baidu/mapapi/a;->a:Z

    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/baidu/mapapi/a;->e:D

    :cond_1
    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/a;->b(Landroid/graphics/Canvas;)V

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/baidu/mapapi/a;->H:I

    if-ne v0, v1, :cond_2

    iput v7, p0, Lcom/baidu/mapapi/a;->E:I

    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/a;->b(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lcom/baidu/mapapi/a;->e:D

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double v1, v0, v2

    cmpl-double v0, v1, v10

    if-ltz v0, :cond_3

    const-wide/high16 v3, 0x3fe0

    add-double/2addr v3, v1

    double-to-int v0, v3

    :goto_1
    int-to-double v3, v0

    sub-double/2addr v3, v1

    const-wide/high16 v5, 0x4024

    mul-double/2addr v3, v5

    double-to-int v3, v3

    if-eqz v3, :cond_5

    if-lez v3, :cond_4

    add-double v0, v1, v12

    add-int/lit8 v2, v3, -0x1

    :goto_2
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/mapapi/a;->e:D

    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/a;->b(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto/16 :goto_0

    :cond_3
    const-wide/high16 v3, 0x3fe0

    sub-double v3, v1, v3

    double-to-int v0, v3

    goto :goto_1

    :cond_4
    sub-double v0, v1, v12

    add-int/lit8 v2, v3, 0x1

    goto :goto_2

    :cond_5
    int-to-double v3, v0

    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    iput-wide v3, p0, Lcom/baidu/mapapi/a;->e:D

    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/a;->b(Landroid/graphics/Canvas;)V

    cmpl-double v1, v1, v10

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/baidu/mapapi/a;->f:I

    iget v2, p0, Lcom/baidu/mapapi/a;->c:I

    add-int/2addr v1, v2

    sget v2, Lcom/baidu/mapapi/a;->l:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/baidu/mapapi/a;->g:I

    iget v3, p0, Lcom/baidu/mapapi/a;->d:I

    add-int/2addr v2, v3

    sget v3, Lcom/baidu/mapapi/a;->m:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/baidu/mapapi/a;->b(III)V

    :cond_6
    iput v7, p0, Lcom/baidu/mapapi/a;->E:I

    goto/16 :goto_0

    :pswitch_3
    iget v0, p0, Lcom/baidu/mapapi/a;->H:I

    if-ne v0, v1, :cond_7

    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/a;->b(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/baidu/mapapi/a;->F:I

    invoke-virtual {p0, v0, v7, v7}, Lcom/baidu/mapapi/a;->b(III)V

    iput v7, p0, Lcom/baidu/mapapi/a;->E:I

    iput v7, p0, Lcom/baidu/mapapi/a;->F:I

    goto/16 :goto_0

    :cond_7
    iget-wide v0, p0, Lcom/baidu/mapapi/a;->e:D

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    iget v2, p0, Lcom/baidu/mapapi/a;->F:I

    if-lez v2, :cond_b

    iget-wide v2, p0, Lcom/baidu/mapapi/a;->e:D

    double-to-int v0, v0

    int-to-double v0, v0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v4, 0x4024

    div-double/2addr v0, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/baidu/mapapi/a;->e:D

    :cond_8
    :goto_3
    iget-wide v0, p0, Lcom/baidu/mapapi/a;->e:D

    iget v2, p0, Lcom/baidu/mapapi/a;->F:I

    mul-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_9

    iget-wide v0, p0, Lcom/baidu/mapapi/a;->e:D

    cmpl-double v0, v0, v10

    if-gtz v0, :cond_a

    :cond_9
    iget v0, p0, Lcom/baidu/mapapi/a;->F:I

    if-gez v0, :cond_c

    iget-wide v0, p0, Lcom/baidu/mapapi/a;->e:D

    const/high16 v2, -0x4080

    iget v3, p0, Lcom/baidu/mapapi/a;->F:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_c

    :cond_a
    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/a;->b(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto/16 :goto_0

    :cond_b
    iget v2, p0, Lcom/baidu/mapapi/a;->F:I

    if-gez v2, :cond_8

    iget-wide v2, p0, Lcom/baidu/mapapi/a;->e:D

    double-to-int v0, v0

    int-to-double v0, v0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v4, 0x4034

    div-double/2addr v0, v4

    sub-double v0, v2, v0

    iput-wide v0, p0, Lcom/baidu/mapapi/a;->e:D

    goto :goto_3

    :cond_c
    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/a;->b(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/baidu/mapapi/a;->F:I

    invoke-virtual {p0, v0, v7, v7}, Lcom/baidu/mapapi/a;->b(III)V

    iput v7, p0, Lcom/baidu/mapapi/a;->E:I

    iput v7, p0, Lcom/baidu/mapapi/a;->F:I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    sub-int v0, p4, p2

    sub-int v1, p5, p3

    invoke-virtual {p0, p2, p3, v0, v1}, Lcom/baidu/mapapi/a;->a(IIII)V

    return-void
.end method
