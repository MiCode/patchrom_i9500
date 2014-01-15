.class final Lcom/baidu/mapapi/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/mapapi/p;


# instance fields
.field private a:Lcom/baidu/mapapi/o;

.field private b:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/baidu/mapapi/o;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-direct {v0, v1}, Lcom/baidu/mapapi/o;-><init>(Landroid/graphics/Bitmap$Config;)V

    iput-object v0, p0, Lcom/baidu/mapapi/r;->a:Lcom/baidu/mapapi/o;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapapi/r;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public static a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 6

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f00

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f666666

    mul-float/2addr v2, v3

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v2

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v5

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v3, v4, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3

    iput-object p1, p0, Lcom/baidu/mapapi/r;->b:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/baidu/mapapi/r;->a:Lcom/baidu/mapapi/o;

    iget-object v1, p0, Lcom/baidu/mapapi/r;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/baidu/mapapi/r;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mapapi/o;->a(II)V

    iget-object v0, p0, Lcom/baidu/mapapi/r;->a:Lcom/baidu/mapapi/o;

    invoke-virtual {v0, p0}, Lcom/baidu/mapapi/o;->a(Lcom/baidu/mapapi/p;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapapi/r;->b:Landroid/graphics/drawable/Drawable;

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/baidu/mapapi/r;->a:Lcom/baidu/mapapi/o;

    invoke-virtual {v1}, Lcom/baidu/mapapi/o;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public final a(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/mapapi/r;->b:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x7f00

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const v0, -0x4099999a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->skew(FF)V

    const/high16 v0, 0x3f80

    const/high16 v1, 0x3f00

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Lcom/baidu/mapapi/r;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/baidu/mapapi/r;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    return-void
.end method
