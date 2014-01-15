.class public abstract Lcom/baidu/mapapi/ItemizedOverlay;
.super Lcom/baidu/mapapi/Overlay;

# interfaces
.implements Lcom/baidu/mapapi/Overlay$Snappable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/ItemizedOverlay$OnFocusChangeListener;,
        Lcom/baidu/mapapi/ItemizedOverlay$a;,
        Lcom/baidu/mapapi/ItemizedOverlay$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Lcom/baidu/mapapi/OverlayItem;",
        ">",
        "Lcom/baidu/mapapi/Overlay;",
        "Lcom/baidu/mapapi/Overlay$Snappable;"
    }
.end annotation


# static fields
.field private static d:I


# instance fields
.field private a:Z

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/graphics/drawable/Drawable;

.field private e:Lcom/baidu/mapapi/ItemizedOverlay$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/mapapi/ItemizedOverlay",
            "<TItem;>.a;"
        }
    .end annotation
.end field

.field private f:Lcom/baidu/mapapi/ItemizedOverlay$OnFocusChangeListener;

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/baidu/mapapi/ItemizedOverlay;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/baidu/mapapi/Overlay;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mapapi/ItemizedOverlay;->a:Z

    iput-object v2, p0, Lcom/baidu/mapapi/ItemizedOverlay;->e:Lcom/baidu/mapapi/ItemizedOverlay$a;

    iput-object v2, p0, Lcom/baidu/mapapi/ItemizedOverlay;->f:Lcom/baidu/mapapi/ItemizedOverlay$OnFocusChangeListener;

    iput v1, p0, Lcom/baidu/mapapi/ItemizedOverlay;->g:I

    iput v1, p0, Lcom/baidu/mapapi/ItemizedOverlay;->h:I

    iput-object p1, p0, Lcom/baidu/mapapi/ItemizedOverlay;->b:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/baidu/mapapi/ItemizedOverlay;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/baidu/mapapi/r;

    invoke-direct {v0}, Lcom/baidu/mapapi/r;-><init>()V

    iget-object v1, p0, Lcom/baidu/mapapi/ItemizedOverlay;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/r;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mapapi/ItemizedOverlay;->c:Landroid/graphics/drawable/Drawable;

    sget v0, Lcom/baidu/mapapi/ItemizedOverlay;->d:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/ItemizedOverlay;->b:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/baidu/mapapi/ItemizedOverlay$b;->c:Lcom/baidu/mapapi/ItemizedOverlay$b;

    invoke-static {v0, v1}, Lcom/baidu/mapapi/ItemizedOverlay;->a(Landroid/graphics/drawable/Drawable;Lcom/baidu/mapapi/ItemizedOverlay$b;)Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method private static a(Landroid/graphics/drawable/Drawable;Lcom/baidu/mapapi/ItemizedOverlay$b;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    sget-object v1, Lcom/baidu/mapapi/ItemizedOverlay$b;->a:Lcom/baidu/mapapi/ItemizedOverlay$b;

    if-ne v1, p1, :cond_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p0, v0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    neg-int v1, v1

    sget-object v3, Lcom/baidu/mapapi/ItemizedOverlay$b;->b:Lcom/baidu/mapapi/ItemizedOverlay$b;

    if-ne p1, v3, :cond_4

    div-int/lit8 v1, v1, 0x2

    neg-int v0, v1

    :cond_4
    neg-int v3, v2

    invoke-virtual {p0, v3, v1, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method static a(Lcom/baidu/mapapi/ItemizedOverlay;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/mapapi/ItemizedOverlay",
            "<*>;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/mapapi/ItemizedOverlay;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private a(Landroid/graphics/Canvas;Lcom/baidu/mapapi/MapView;ZLcom/baidu/mapapi/OverlayItem;I)V
    .locals 5

    invoke-virtual {p4, p5}, Lcom/baidu/mapapi/OverlayItem;->getMarker(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/baidu/mapapi/ItemizedOverlay;->b:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/baidu/mapapi/ItemizedOverlay;->b:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_1

    if-eqz p3, :cond_4

    iget-object v0, p0, Lcom/baidu/mapapi/ItemizedOverlay;->c:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/baidu/mapapi/ItemizedOverlay;->c:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/baidu/mapapi/ItemizedOverlay;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/baidu/mapapi/ItemizedOverlay;->c:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/baidu/mapapi/ItemizedOverlay;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v3}, Lcom/baidu/mapapi/r;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_2
    invoke-virtual {p2}, Lcom/baidu/mapapi/MapView;->getProjection()Lcom/baidu/mapapi/Projection;

    move-result-object v2

    invoke-virtual {p4}, Lcom/baidu/mapapi/OverlayItem;->getPoint()Lcom/baidu/mapapi/GeoPoint;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/baidu/mapapi/Projection;->toPixels(Lcom/baidu/mapapi/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v2

    if-eqz v1, :cond_5

    iget v1, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {p1, v0, v1, v2}, Lcom/baidu/mapapi/Overlay;->a(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/baidu/mapapi/ItemizedOverlay;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/baidu/mapapi/ItemizedOverlay;->b:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_5
    iget v1, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {p1, v0, v1, v2, p3}, Lcom/baidu/mapapi/Overlay;->drawAt(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIZ)V

    goto :goto_0
.end method

.method protected static boundCenter(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x2

    sput v0, Lcom/baidu/mapapi/ItemizedOverlay;->d:I

    sget-object v0, Lcom/baidu/mapapi/ItemizedOverlay$b;->b:Lcom/baidu/mapapi/ItemizedOverlay$b;

    invoke-static {p0, v0}, Lcom/baidu/mapapi/ItemizedOverlay;->a(Landroid/graphics/drawable/Drawable;Lcom/baidu/mapapi/ItemizedOverlay$b;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected static boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/baidu/mapapi/ItemizedOverlay;->d:I

    sget-object v0, Lcom/baidu/mapapi/ItemizedOverlay$b;->c:Lcom/baidu/mapapi/ItemizedOverlay$b;

    invoke-static {p0, v0}, Lcom/baidu/mapapi/ItemizedOverlay;->a(Landroid/graphics/drawable/Drawable;Lcom/baidu/mapapi/ItemizedOverlay$b;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract createItem(I)Lcom/baidu/mapapi/OverlayItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/baidu/mapapi/MapView;Z)V
    .locals 10

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/baidu/mapapi/ItemizedOverlay;->e:Lcom/baidu/mapapi/ItemizedOverlay$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/ItemizedOverlay;->e:Lcom/baidu/mapapi/ItemizedOverlay$a;

    invoke-virtual {v0}, Lcom/baidu/mapapi/ItemizedOverlay$a;->a()I

    move-result v7

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_1

    invoke-virtual {p0, v6}, Lcom/baidu/mapapi/ItemizedOverlay;->getIndexToDraw(I)I

    move-result v0

    iget v1, p0, Lcom/baidu/mapapi/ItemizedOverlay;->h:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/ItemizedOverlay;->getItem(I)Lcom/baidu/mapapi/OverlayItem;

    move-result-object v4

    invoke-virtual {p2}, Lcom/baidu/mapapi/MapView;->getProjection()Lcom/baidu/mapapi/Projection;

    move-result-object v0

    invoke-virtual {v4}, Lcom/baidu/mapapi/OverlayItem;->getPoint()Lcom/baidu/mapapi/GeoPoint;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/baidu/mapapi/Projection;->toPixels(Lcom/baidu/mapapi/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v8

    iget v9, v0, Landroid/graphics/Point;->x:I

    add-int/2addr v9, v1

    iput v9, v0, Landroid/graphics/Point;->x:I

    iget v9, v0, Landroid/graphics/Point;->y:I

    add-int/2addr v9, v3

    iput v9, v0, Landroid/graphics/Point;->y:I

    iget v9, v0, Landroid/graphics/Point;->x:I

    if-lt v9, v1, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-lt v1, v3, :cond_0

    iget v1, v0, Landroid/graphics/Point;->x:I

    if-gt v1, v2, :cond_0

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-gt v0, v8, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mapapi/ItemizedOverlay;->a(Landroid/graphics/Canvas;Lcom/baidu/mapapi/MapView;ZLcom/baidu/mapapi/OverlayItem;I)V

    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/baidu/mapapi/ItemizedOverlay;->a:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/baidu/mapapi/ItemizedOverlay;->getFocus()Lcom/baidu/mapapi/OverlayItem;

    move-result-object v6

    if-eqz v6, :cond_2

    const/4 v7, 0x4

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/baidu/mapapi/ItemizedOverlay;->a(Landroid/graphics/Canvas;Lcom/baidu/mapapi/MapView;ZLcom/baidu/mapapi/OverlayItem;I)V

    :cond_2
    return-void
.end method

.method public getCenter()Lcom/baidu/mapapi/GeoPoint;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/ItemizedOverlay;->getIndexToDraw(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/ItemizedOverlay;->getItem(I)Lcom/baidu/mapapi/OverlayItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapapi/OverlayItem;->getPoint()Lcom/baidu/mapapi/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public getFocus()Lcom/baidu/mapapi/OverlayItem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TItem;"
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p0, Lcom/baidu/mapapi/ItemizedOverlay;->h:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/ItemizedOverlay;->e:Lcom/baidu/mapapi/ItemizedOverlay$a;

    iget v1, p0, Lcom/baidu/mapapi/ItemizedOverlay;->h:I

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/ItemizedOverlay$a;->a(I)Lcom/baidu/mapapi/OverlayItem;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected getIndexToDraw(I)I
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/ItemizedOverlay;->e:Lcom/baidu/mapapi/ItemizedOverlay$a;

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/ItemizedOverlay$a;->b(I)I

    move-result v0

    return v0
.end method

.method public final getItem(I)Lcom/baidu/mapapi/OverlayItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    iget-object v0, p0, Lcom/baidu/mapapi/ItemizedOverlay;->e:Lcom/baidu/mapapi/ItemizedOverlay$a;

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/ItemizedOverlay$a;->a(I)Lcom/baidu/mapapi/OverlayItem;

    move-result-object v0

    return-object v0
.end method

.method public final getLastFocusedIndex()I
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/ItemizedOverlay;->g:I

    return v0
.end method

.method public getLatSpanE6()I
    .locals 2

    iget-object v0, p0, Lcom/baidu/mapapi/ItemizedOverlay;->e:Lcom/baidu/mapapi/ItemizedOverlay$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/ItemizedOverlay$a;->a(Z)I

    move-result v0

    return v0
.end method

.method public getLonSpanE6()I
    .locals 2

    iget-object v0, p0, Lcom/baidu/mapapi/ItemizedOverlay;->e:Lcom/baidu/mapapi/ItemizedOverlay$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/ItemizedOverlay$a;->a(Z)I

    move-result v0

    return v0
.end method

.method protected hitTest(Lcom/baidu/mapapi/OverlayItem;Landroid/graphics/drawable/Drawable;II)Z
    .locals 4

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    const/16 v1, 0xa

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, p3, p4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    return v2
.end method

.method public nextFocus(Z)Lcom/baidu/mapapi/OverlayItem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TItem;"
        }
    .end annotation

    const/4 v2, -0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/mapapi/ItemizedOverlay;->e:Lcom/baidu/mapapi/ItemizedOverlay$a;

    invoke-virtual {v1}, Lcom/baidu/mapapi/ItemizedOverlay$a;->a()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v1, p0, Lcom/baidu/mapapi/ItemizedOverlay;->g:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/baidu/mapapi/ItemizedOverlay;->h:I

    if-eq v1, v2, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/ItemizedOverlay;->e:Lcom/baidu/mapapi/ItemizedOverlay$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/ItemizedOverlay$a;->a(I)Lcom/baidu/mapapi/OverlayItem;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/baidu/mapapi/ItemizedOverlay;->h:I

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/baidu/mapapi/ItemizedOverlay;->h:I

    :goto_1
    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/baidu/mapapi/ItemizedOverlay;->e:Lcom/baidu/mapapi/ItemizedOverlay$a;

    invoke-virtual {v2}, Lcom/baidu/mapapi/ItemizedOverlay$a;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/ItemizedOverlay;->e:Lcom/baidu/mapapi/ItemizedOverlay$a;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/ItemizedOverlay$a;->a(I)Lcom/baidu/mapapi/OverlayItem;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/baidu/mapapi/ItemizedOverlay;->g:I

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/ItemizedOverlay;->e:Lcom/baidu/mapapi/ItemizedOverlay$a;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/baidu/mapapi/ItemizedOverlay$a;->a(I)Lcom/baidu/mapapi/OverlayItem;

    move-result-object v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;Lcom/baidu/mapapi/MapView;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onSnapToItem(IILandroid/graphics/Point;Lcom/baidu/mapapi/MapView;)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/mapapi/ItemizedOverlay;->e:Lcom/baidu/mapapi/ItemizedOverlay$a;

    invoke-virtual {v1}, Lcom/baidu/mapapi/ItemizedOverlay$a;->a()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object v2, p0, Lcom/baidu/mapapi/ItemizedOverlay;->e:Lcom/baidu/mapapi/ItemizedOverlay$a;

    invoke-virtual {v2, v0}, Lcom/baidu/mapapi/ItemizedOverlay$a;->a(I)Lcom/baidu/mapapi/OverlayItem;

    move-result-object v2

    invoke-virtual {p4}, Lcom/baidu/mapapi/MapView;->getProjection()Lcom/baidu/mapapi/Projection;

    move-result-object v3

    invoke-virtual {v2}, Lcom/baidu/mapapi/OverlayItem;->getPoint()Lcom/baidu/mapapi/GeoPoint;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lcom/baidu/mapapi/Projection;->toPixels(Lcom/baidu/mapapi/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget-object v3, v2, Lcom/baidu/mapapi/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    iget v4, v1, Landroid/graphics/Point;->x:I

    sub-int v4, p1, v4

    iget v5, v1, Landroid/graphics/Point;->y:I

    sub-int v5, p2, v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/baidu/mapapi/ItemizedOverlay;->hitTest(Lcom/baidu/mapapi/OverlayItem;Landroid/graphics/drawable/Drawable;II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v0, v1, Landroid/graphics/Point;->x:I

    iput v0, p3, Landroid/graphics/Point;->x:I

    iget v0, v1, Landroid/graphics/Point;->y:I

    iput v0, p3, Landroid/graphics/Point;->y:I

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected onTap(I)Z
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/ItemizedOverlay;->h:I

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/ItemizedOverlay;->getItem(I)Lcom/baidu/mapapi/OverlayItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/ItemizedOverlay;->setFocus(Lcom/baidu/mapapi/OverlayItem;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTap(Lcom/baidu/mapapi/GeoPoint;Lcom/baidu/mapapi/MapView;)Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/ItemizedOverlay;->e:Lcom/baidu/mapapi/ItemizedOverlay$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/ItemizedOverlay;->e:Lcom/baidu/mapapi/ItemizedOverlay$a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mapapi/ItemizedOverlay$a;->a(Lcom/baidu/mapapi/GeoPoint;Lcom/baidu/mapapi/MapView;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lcom/baidu/mapapi/MapView;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;Lcom/baidu/mapapi/MapView;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final populate()V
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Lcom/baidu/mapapi/ItemizedOverlay$a;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/ItemizedOverlay$a;-><init>(Lcom/baidu/mapapi/ItemizedOverlay;)V

    iput-object v0, p0, Lcom/baidu/mapapi/ItemizedOverlay;->e:Lcom/baidu/mapapi/ItemizedOverlay$a;

    iput v1, p0, Lcom/baidu/mapapi/ItemizedOverlay;->g:I

    iput v1, p0, Lcom/baidu/mapapi/ItemizedOverlay;->h:I

    return-void
.end method

.method public setDrawFocusedItem(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/mapapi/ItemizedOverlay;->a:Z

    return-void
.end method

.method public setFocus(Lcom/baidu/mapapi/OverlayItem;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)V"
        }
    .end annotation

    const/4 v2, -0x1

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/baidu/mapapi/ItemizedOverlay;->h:I

    iget-object v1, p0, Lcom/baidu/mapapi/ItemizedOverlay;->e:Lcom/baidu/mapapi/ItemizedOverlay$a;

    invoke-virtual {v1, p1}, Lcom/baidu/mapapi/ItemizedOverlay$a;->a(Lcom/baidu/mapapi/OverlayItem;)I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_3

    iget v0, p0, Lcom/baidu/mapapi/ItemizedOverlay;->h:I

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/baidu/mapapi/ItemizedOverlay;->f:Lcom/baidu/mapapi/ItemizedOverlay$OnFocusChangeListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mapapi/ItemizedOverlay;->f:Lcom/baidu/mapapi/ItemizedOverlay$OnFocusChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/baidu/mapapi/ItemizedOverlay$OnFocusChangeListener;->onFocusChanged(Lcom/baidu/mapapi/ItemizedOverlay;Lcom/baidu/mapapi/OverlayItem;)V

    :cond_2
    iput v2, p0, Lcom/baidu/mapapi/ItemizedOverlay;->h:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/baidu/mapapi/ItemizedOverlay;->e:Lcom/baidu/mapapi/ItemizedOverlay$a;

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/ItemizedOverlay$a;->a(Lcom/baidu/mapapi/OverlayItem;)I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/ItemizedOverlay;->h:I

    iget v0, p0, Lcom/baidu/mapapi/ItemizedOverlay;->h:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/baidu/mapapi/ItemizedOverlay;->h:I

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/ItemizedOverlay;->setLastFocusedIndex(I)V

    iget-object v0, p0, Lcom/baidu/mapapi/ItemizedOverlay;->f:Lcom/baidu/mapapi/ItemizedOverlay$OnFocusChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/ItemizedOverlay;->f:Lcom/baidu/mapapi/ItemizedOverlay$OnFocusChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/baidu/mapapi/ItemizedOverlay$OnFocusChangeListener;->onFocusChanged(Lcom/baidu/mapapi/ItemizedOverlay;Lcom/baidu/mapapi/OverlayItem;)V

    goto :goto_0
.end method

.method protected setLastFocusedIndex(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/mapapi/ItemizedOverlay;->g:I

    return-void
.end method

.method public setOnFocusChangeListener(Lcom/baidu/mapapi/ItemizedOverlay$OnFocusChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mapapi/ItemizedOverlay;->f:Lcom/baidu/mapapi/ItemizedOverlay$OnFocusChangeListener;

    return-void
.end method

.method public abstract size()I
.end method
