.class final Lcom/baidu/mapapi/o;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Canvas;

.field private c:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap$Config;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/mapapi/o;->a:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/baidu/mapapi/o;->b:Landroid/graphics/Canvas;

    iput-object p1, p0, Lcom/baidu/mapapi/o;->c:Landroid/graphics/Bitmap$Config;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/mapapi/o;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/o;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    iput-object v1, p0, Lcom/baidu/mapapi/o;->a:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/baidu/mapapi/o;->b:Landroid/graphics/Canvas;

    return-void
.end method

.method public final a(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/baidu/mapapi/o;->a()V

    iget-object v0, p0, Lcom/baidu/mapapi/o;->c:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/o;->a:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/baidu/mapapi/o;->a:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/baidu/mapapi/o;->b:Landroid/graphics/Canvas;

    return-void
.end method

.method public final a(Lcom/baidu/mapapi/p;)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/mapapi/o;->b:Landroid/graphics/Canvas;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    iget-object v0, p0, Lcom/baidu/mapapi/o;->b:Landroid/graphics/Canvas;

    invoke-interface {p1, v0}, Lcom/baidu/mapapi/p;->a(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/baidu/mapapi/o;->b:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public final b()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/o;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method
