.class public Lcom/baidu/mapapi/MapView;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mapapi/MapView$LayoutParams;,
        Lcom/baidu/mapapi/MapView$a;
    }
.end annotation


# static fields
.field public static final DRAG_MODE_NONE:I = 0x1

.field public static final DRAG_MODE_SCALE:I

.field private static g:I


# instance fields
.field a:Lcom/baidu/mapapi/e;

.field b:Lcom/baidu/mapapi/a;

.field private c:Lcom/baidu/mapapi/GeoPoint;

.field private d:I

.field private e:I

.field private f:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Landroid/os/Message;

.field private m:Ljava/lang/Runnable;

.field private n:Lcom/baidu/mapapi/MapActivity;

.field private o:Lcom/baidu/mapapi/MapController;

.field private p:Landroid/widget/ZoomControls;

.field private q:Landroid/widget/ImageView;

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/baidu/mapapi/MapView;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/baidu/mapapi/GeoPoint;

    invoke-direct {v0, v2, v2}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    iput-object v0, p0, Lcom/baidu/mapapi/MapView;->c:Lcom/baidu/mapapi/GeoPoint;

    const/16 v0, 0xc

    iput v0, p0, Lcom/baidu/mapapi/MapView;->d:I

    iput v2, p0, Lcom/baidu/mapapi/MapView;->e:I

    iput v2, p0, Lcom/baidu/mapapi/MapView;->f:I

    const/16 v0, 0x12

    iput v0, p0, Lcom/baidu/mapapi/MapView;->h:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/mapapi/MapView;->i:I

    iput-boolean v2, p0, Lcom/baidu/mapapi/MapView;->j:Z

    iput-boolean v2, p0, Lcom/baidu/mapapi/MapView;->k:Z

    iput-object v3, p0, Lcom/baidu/mapapi/MapView;->l:Landroid/os/Message;

    iput-object v3, p0, Lcom/baidu/mapapi/MapView;->m:Ljava/lang/Runnable;

    iput-object v3, p0, Lcom/baidu/mapapi/MapView;->n:Lcom/baidu/mapapi/MapActivity;

    new-instance v0, Lcom/baidu/mapapi/e;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/e;-><init>(Lcom/baidu/mapapi/MapView;)V

    iput-object v0, p0, Lcom/baidu/mapapi/MapView;->a:Lcom/baidu/mapapi/e;

    new-instance v0, Landroid/widget/ZoomControls;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ZoomControls;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/mapapi/MapView;->p:Landroid/widget/ZoomControls;

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/mapapi/MapView;->q:Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    iput-boolean v2, p0, Lcom/baidu/mapapi/MapView;->r:Z

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/MapView;->a(Landroid/content/Context;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/baidu/mapapi/GeoPoint;

    invoke-direct {v0, v2, v2}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    iput-object v0, p0, Lcom/baidu/mapapi/MapView;->c:Lcom/baidu/mapapi/GeoPoint;

    const/16 v0, 0xc

    iput v0, p0, Lcom/baidu/mapapi/MapView;->d:I

    iput v2, p0, Lcom/baidu/mapapi/MapView;->e:I

    iput v2, p0, Lcom/baidu/mapapi/MapView;->f:I

    const/16 v0, 0x12

    iput v0, p0, Lcom/baidu/mapapi/MapView;->h:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/mapapi/MapView;->i:I

    iput-boolean v2, p0, Lcom/baidu/mapapi/MapView;->j:Z

    iput-boolean v2, p0, Lcom/baidu/mapapi/MapView;->k:Z

    iput-object v3, p0, Lcom/baidu/mapapi/MapView;->l:Landroid/os/Message;

    iput-object v3, p0, Lcom/baidu/mapapi/MapView;->m:Ljava/lang/Runnable;

    iput-object v3, p0, Lcom/baidu/mapapi/MapView;->n:Lcom/baidu/mapapi/MapActivity;

    new-instance v0, Lcom/baidu/mapapi/e;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/e;-><init>(Lcom/baidu/mapapi/MapView;)V

    iput-object v0, p0, Lcom/baidu/mapapi/MapView;->a:Lcom/baidu/mapapi/e;

    new-instance v0, Landroid/widget/ZoomControls;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ZoomControls;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/mapapi/MapView;->p:Landroid/widget/ZoomControls;

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/mapapi/MapView;->q:Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    iput-boolean v2, p0, Lcom/baidu/mapapi/MapView;->r:Z

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/MapView;->a(Landroid/content/Context;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/baidu/mapapi/GeoPoint;

    invoke-direct {v0, v2, v2}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    iput-object v0, p0, Lcom/baidu/mapapi/MapView;->c:Lcom/baidu/mapapi/GeoPoint;

    const/16 v0, 0xc

    iput v0, p0, Lcom/baidu/mapapi/MapView;->d:I

    iput v2, p0, Lcom/baidu/mapapi/MapView;->e:I

    iput v2, p0, Lcom/baidu/mapapi/MapView;->f:I

    const/16 v0, 0x12

    iput v0, p0, Lcom/baidu/mapapi/MapView;->h:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/baidu/mapapi/MapView;->i:I

    iput-boolean v2, p0, Lcom/baidu/mapapi/MapView;->j:Z

    iput-boolean v2, p0, Lcom/baidu/mapapi/MapView;->k:Z

    iput-object v3, p0, Lcom/baidu/mapapi/MapView;->l:Landroid/os/Message;

    iput-object v3, p0, Lcom/baidu/mapapi/MapView;->m:Ljava/lang/Runnable;

    iput-object v3, p0, Lcom/baidu/mapapi/MapView;->n:Lcom/baidu/mapapi/MapActivity;

    new-instance v0, Lcom/baidu/mapapi/e;

    invoke-direct {v0, p0}, Lcom/baidu/mapapi/e;-><init>(Lcom/baidu/mapapi/MapView;)V

    iput-object v0, p0, Lcom/baidu/mapapi/MapView;->a:Lcom/baidu/mapapi/e;

    new-instance v0, Landroid/widget/ZoomControls;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ZoomControls;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/mapapi/MapView;->p:Landroid/widget/ZoomControls;

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/mapapi/MapView;->q:Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    iput-boolean v2, p0, Lcom/baidu/mapapi/MapView;->r:Z

    invoke-direct {p0, p1}, Lcom/baidu/mapapi/MapView;->a(Landroid/content/Context;)Z

    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v2, -0x2

    iget v0, p0, Lcom/baidu/mapapi/MapView;->e:I

    iget v1, p0, Lcom/baidu/mapapi/MapView;->f:I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    iget v1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v1, v4, :cond_2

    iget v1, p0, Lcom/baidu/mapapi/MapView;->e:I

    move v3, v1

    :goto_0
    if-ne v0, v4, :cond_3

    iget v0, p0, Lcom/baidu/mapapi/MapView;->f:I

    :cond_0
    :goto_1
    invoke-virtual {p0, p2}, Lcom/baidu/mapapi/MapView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_4

    check-cast p2, Lcom/baidu/mapapi/MapView$LayoutParams;

    iget v2, p2, Lcom/baidu/mapapi/MapView$LayoutParams;->x:I

    iget v1, p2, Lcom/baidu/mapapi/MapView$LayoutParams;->y:I

    iget v4, p2, Lcom/baidu/mapapi/MapView$LayoutParams;->mode:I

    if-nez v4, :cond_1

    iget-object v4, p2, Lcom/baidu/mapapi/MapView$LayoutParams;->point:Lcom/baidu/mapapi/GeoPoint;

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/baidu/mapapi/MapView;->getProjection()Lcom/baidu/mapapi/Projection;

    move-result-object v1

    iget-object v2, p2, Lcom/baidu/mapapi/MapView$LayoutParams;->point:Lcom/baidu/mapapi/GeoPoint;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4}, Lcom/baidu/mapapi/Projection;->toPixels(Lcom/baidu/mapapi/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v4, p2, Lcom/baidu/mapapi/MapView$LayoutParams;->x:I

    add-int/2addr v2, v4

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v4, p2, Lcom/baidu/mapapi/MapView$LayoutParams;->y:I

    add-int/2addr v1, v4

    :cond_1
    iget v4, p2, Lcom/baidu/mapapi/MapView$LayoutParams;->alignment:I

    sparse-switch v4, :sswitch_data_0

    :goto_2
    :sswitch_0
    add-int/2addr v3, v2

    add-int/2addr v0, v1

    invoke-virtual {p1, v2, v1, v3, v0}, Landroid/view/View;->layout(IIII)V

    :goto_3
    return-void

    :cond_2
    if-ne v1, v2, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    move v3, v1

    goto :goto_0

    :cond_3
    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_1

    :sswitch_1
    sub-int/2addr v1, v0

    goto :goto_2

    :sswitch_2
    sub-int/2addr v2, v3

    goto :goto_2

    :sswitch_3
    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    sub-int/2addr v1, v0

    goto :goto_2

    :sswitch_4
    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v1, v4

    goto :goto_2

    :sswitch_5
    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    goto :goto_2

    :sswitch_6
    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v1, v4

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v5, v5, v3, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_3

    :cond_5
    move v3, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x3 -> :sswitch_0
        0x5 -> :sswitch_2
        0x10 -> :sswitch_6
        0x11 -> :sswitch_4
        0x30 -> :sswitch_0
        0x33 -> :sswitch_0
        0x50 -> :sswitch_1
        0x51 -> :sswitch_3
    .end sparse-switch
.end method

.method private a(Landroid/content/Context;)Z
    .locals 1

    check-cast p1, Lcom/baidu/mapapi/MapActivity;

    sget v0, Lcom/baidu/mapapi/Mj;->g:I

    iput v0, p0, Lcom/baidu/mapapi/MapView;->e:I

    sget v0, Lcom/baidu/mapapi/Mj;->h:I

    iput v0, p0, Lcom/baidu/mapapi/MapView;->f:I

    iput-object p1, p0, Lcom/baidu/mapapi/MapView;->n:Lcom/baidu/mapapi/MapActivity;

    sget v0, Lcom/baidu/mapapi/MapView;->g:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/baidu/mapapi/MapView;->g:I

    invoke-virtual {p1, p0}, Lcom/baidu/mapapi/MapActivity;->a(Lcom/baidu/mapapi/MapView;)Z

    move-result v0

    return v0
.end method

.method private d(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/mapapi/MapView;->d:I

    invoke-virtual {p0}, Lcom/baidu/mapapi/MapView;->c()V

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 1

    iput p1, p0, Lcom/baidu/mapapi/MapView;->h:I

    iget v0, p0, Lcom/baidu/mapapi/MapView;->d:I

    if-le v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/MapView;->c(I)Z

    :cond_0
    return-void
.end method

.method a(II)V
    .locals 1

    const/16 v0, 0x1102

    invoke-static {v0, p1, p2}, Lcom/baidu/mapapi/Mj;->MapProc(III)I

    return-void
.end method

.method a(Lcom/baidu/mapapi/GeoPoint;)V
    .locals 3

    const/16 v0, 0x1006

    invoke-virtual {p1}, Lcom/baidu/mapapi/GeoPoint;->getLongitudeE6()I

    move-result v1

    invoke-virtual {p1}, Lcom/baidu/mapapi/GeoPoint;->getLatitudeE6()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/baidu/mapapi/Mj;->MapProc(III)I

    return-void
.end method

.method a(Lcom/baidu/mapapi/GeoPoint;Landroid/os/Message;Ljava/lang/Runnable;)V
    .locals 3

    const/16 v0, 0x1101

    invoke-virtual {p1}, Lcom/baidu/mapapi/GeoPoint;->getLongitudeE6()I

    move-result v1

    invoke-virtual {p1}, Lcom/baidu/mapapi/GeoPoint;->getLatitudeE6()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/baidu/mapapi/Mj;->MapProc(III)I

    iput-object p2, p0, Lcom/baidu/mapapi/MapView;->l:Landroid/os/Message;

    iput-object p3, p0, Lcom/baidu/mapapi/MapView;->m:Ljava/lang/Runnable;

    return-void
.end method

.method a(Z)V
    .locals 3

    const/16 v2, 0x1103

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-static {v2, v0, v1}, Lcom/baidu/mapapi/Mj;->MapProc(III)I

    :goto_0
    return-void

    :cond_0
    invoke-static {v2, v1, v1}, Lcom/baidu/mapapi/Mj;->MapProc(III)I

    goto :goto_0
.end method

.method a()Z
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/baidu/mapapi/a;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4, p0}, Lcom/baidu/mapapi/a;-><init>(Landroid/content/Context;Lcom/baidu/mapapi/MapView;)V

    iput-object v1, p0, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    :cond_0
    iget-object v1, p0, Lcom/baidu/mapapi/MapView;->o:Lcom/baidu/mapapi/MapController;

    if-nez v1, :cond_1

    new-instance v1, Lcom/baidu/mapapi/MapController;

    invoke-direct {v1, p0}, Lcom/baidu/mapapi/MapController;-><init>(Lcom/baidu/mapapi/MapView;)V

    iput-object v1, p0, Lcom/baidu/mapapi/MapView;->o:Lcom/baidu/mapapi/MapController;

    :cond_1
    iget-object v1, p0, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    iget-object v1, p0, Lcom/baidu/mapapi/MapView;->p:Landroid/widget/ZoomControls;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/baidu/mapapi/MapView;->p:Landroid/widget/ZoomControls;

    new-instance v4, Lcom/baidu/mapapi/MapView$1;

    invoke-direct {v4, p0}, Lcom/baidu/mapapi/MapView$1;-><init>(Lcom/baidu/mapapi/MapView;)V

    invoke-virtual {v1, v4}, Landroid/widget/ZoomControls;->setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/baidu/mapapi/MapView;->p:Landroid/widget/ZoomControls;

    new-instance v4, Lcom/baidu/mapapi/MapView$2;

    invoke-direct {v4, p0}, Lcom/baidu/mapapi/MapView$2;-><init>(Lcom/baidu/mapapi/MapView;)V

    invoke-virtual {v1, v4}, Landroid/widget/ZoomControls;->setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/baidu/mapapi/MapView;->p:Landroid/widget/ZoomControls;

    invoke-virtual {v1, v3}, Landroid/view/View;->setFocusable(Z)V

    iget-object v1, p0, Lcom/baidu/mapapi/MapView;->p:Landroid/widget/ZoomControls;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/baidu/mapapi/MapView;->p:Landroid/widget/ZoomControls;

    invoke-virtual {v1, v0, v0}, Landroid/view/View;->measure(II)V

    :cond_3
    iget-object v1, p0, Lcom/baidu/mapapi/MapView;->q:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_4

    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sget v4, Lcom/baidu/mapapi/Mj;->i:I

    const/16 v5, 0xb4

    if-gt v4, v5, :cond_5

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "baidumap_logo_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-char v0, v1, v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :try_start_1
    iget-object v1, p0, Lcom/baidu/mapapi/MapView;->n:Lcom/baidu/mapapi/MapActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :try_start_2
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :goto_1
    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->q:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->q:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->q:Landroid/widget/ImageView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->q:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->q:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lcom/baidu/mapapi/MapView;->d()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/MapView;->d:I

    return v3

    :cond_5
    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "MapView()"

    const-string v2, "initMapView() error!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MapView()"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_4
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    nop

    :array_0
    .array-data 0x2
        0x6ct 0x0t
        0x68t 0x0t
    .end array-data
.end method

.method a(III)Z
    .locals 3

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    iget-object v1, p0, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    iput-boolean v0, v1, Lcom/baidu/mapapi/a;->a:Z

    iget-object v1, p0, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, p2}, Lcom/baidu/mapapi/MapView;->d(I)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/baidu/mapapi/MapView;->l:Landroid/os/Message;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/baidu/mapapi/MapView;->l:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/mapapi/MapView;->l:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/mapapi/MapView;->l:Landroid/os/Message;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/mapapi/MapView;->l:Landroid/os/Message;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/baidu/mapapi/MapView;->m:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/mapapi/MapView;->m:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x1f9 -> :sswitch_1
        0x1f54 -> :sswitch_2
    .end sparse-switch
.end method

.method b()V
    .locals 1

    sget v0, Lcom/baidu/mapapi/MapView;->g:I

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/baidu/mapapi/MapView;->g:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/baidu/mapapi/MapView;->g:I

    sget v0, Lcom/baidu/mapapi/MapView;->g:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    invoke-virtual {v0}, Lcom/baidu/mapapi/a;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    goto :goto_0
.end method

.method b(I)V
    .locals 1

    iput p1, p0, Lcom/baidu/mapapi/MapView;->i:I

    iget v0, p0, Lcom/baidu/mapapi/MapView;->d:I

    if-ge v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/baidu/mapapi/MapView;->c(I)Z

    :cond_0
    return-void
.end method

.method b(II)V
    .locals 3

    iget v0, p0, Lcom/baidu/mapapi/MapView;->e:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    iget v1, p0, Lcom/baidu/mapapi/MapView;->f:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    const/16 v2, 0x1007

    invoke-static {v2, v0, v1}, Lcom/baidu/mapapi/Mj;->MapProc(III)I

    return-void
.end method

.method c()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/baidu/mapapi/MapView;->p:Landroid/widget/ZoomControls;

    iget v0, p0, Lcom/baidu/mapapi/MapView;->d:I

    invoke-virtual {p0}, Lcom/baidu/mapapi/MapView;->getMinZoomLevel()I

    move-result v4

    if-le v0, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ZoomControls;->setIsZoomOutEnabled(Z)V

    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->p:Landroid/widget/ZoomControls;

    iget v3, p0, Lcom/baidu/mapapi/MapView;->d:I

    invoke-virtual {p0}, Lcom/baidu/mapapi/MapView;->getMaxZoomLevel()I

    move-result v4

    if-ge v3, v4, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ZoomControls;->setIsZoomInEnabled(Z)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method c(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/baidu/mapapi/MapView;->getZoomLevel()I

    move-result v0

    iput v0, p0, Lcom/baidu/mapapi/MapView;->d:I

    iget v0, p0, Lcom/baidu/mapapi/MapView;->i:I

    if-ge p1, v0, :cond_1

    iget p1, p0, Lcom/baidu/mapapi/MapView;->i:I

    :cond_0
    :goto_0
    iget v0, p0, Lcom/baidu/mapapi/MapView;->d:I

    if-eq v0, p1, :cond_2

    iput p1, p0, Lcom/baidu/mapapi/MapView;->d:I

    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/a;->a(I)V

    invoke-virtual {p0}, Lcom/baidu/mapapi/MapView;->c()V

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    iget v0, p0, Lcom/baidu/mapapi/MapView;->h:I

    if-le p1, v0, :cond_0

    iget p1, p0, Lcom/baidu/mapapi/MapView;->h:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public canCoverCenter()Z
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "act"

    const v2, 0xe508d1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/baidu/mapapi/Mj;->sendBundle(Landroid/os/Bundle;)I

    const-string v1, "r"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/baidu/mapapi/MapView$LayoutParams;

    return v0
.end method

.method public computeScroll()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    return-void
.end method

.method d()I
    .locals 2

    const/4 v0, 0x0

    const v1, 0x990cdc

    invoke-static {v1, v0, v0}, Lcom/baidu/mapapi/Mj;->getNewBundle(III)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "mapLevel"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public displayZoomControls(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/baidu/mapapi/MapView;->r:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->p:Landroid/widget/ZoomControls;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->p:Landroid/widget/ZoomControls;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->p:Landroid/widget/ZoomControls;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mapapi/MapView;->r:Z

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->p:Landroid/widget/ZoomControls;

    iget-object v1, p0, Lcom/baidu/mapapi/MapView;->p:Landroid/widget/ZoomControls;

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method e()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_2

    invoke-super {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->q:Landroid/widget/ImageView;

    if-eq v4, v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->p:Landroid/widget/ZoomControls;

    if-eq v4, v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    if-ne v4, v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v0, v1, Lcom/baidu/mapapi/MapView$LayoutParams;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/baidu/mapapi/MapView$LayoutParams;

    iget v0, v0, Lcom/baidu/mapapi/MapView$LayoutParams;->mode:I

    if-nez v0, :cond_0

    invoke-direct {p0, v4, v1}, Lcom/baidu/mapapi/MapView;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method f()Z
    .locals 4

    const/4 v0, 0x1

    iget v1, p0, Lcom/baidu/mapapi/MapView;->d:I

    iget v2, p0, Lcom/baidu/mapapi/MapView;->h:I

    if-lt v1, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    iget v2, p0, Lcom/baidu/mapapi/MapView;->e:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/baidu/mapapi/MapView;->f:I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v0, v2, v3}, Lcom/baidu/mapapi/a;->a(III)V

    goto :goto_0
.end method

.method g()Z
    .locals 4

    iget v0, p0, Lcom/baidu/mapapi/MapView;->d:I

    iget v1, p0, Lcom/baidu/mapapi/MapView;->i:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    const/4 v1, -0x1

    iget v2, p0, Lcom/baidu/mapapi/MapView;->e:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/baidu/mapapi/MapView;->f:I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/mapapi/a;->a(III)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Lcom/baidu/mapapi/MapView$LayoutParams;

    iget-object v1, p0, Lcom/baidu/mapapi/MapView;->n:Lcom/baidu/mapapi/MapActivity;

    invoke-direct {v0, v1, p1}, Lcom/baidu/mapapi/MapView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/baidu/mapapi/MapView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/baidu/mapapi/MapView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getController()Lcom/baidu/mapapi/MapController;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->o:Lcom/baidu/mapapi/MapController;

    return-object v0
.end method

.method public getLatitudeSpan()I
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/baidu/mapapi/MapView;->getProjection()Lcom/baidu/mapapi/Projection;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/e;

    invoke-virtual {v0, v1, v1}, Lcom/baidu/mapapi/e;->fromPixels(II)Lcom/baidu/mapapi/GeoPoint;

    move-result-object v1

    iget v2, p0, Lcom/baidu/mapapi/MapView;->e:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/baidu/mapapi/MapView;->f:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/baidu/mapapi/e;->fromPixels(II)Lcom/baidu/mapapi/GeoPoint;

    move-result-object v0

    invoke-virtual {v1}, Lcom/baidu/mapapi/GeoPoint;->getLatitudeE6()I

    move-result v1

    invoke-virtual {v0}, Lcom/baidu/mapapi/GeoPoint;->getLatitudeE6()I

    move-result v0

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public getLongitudeSpan()I
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/baidu/mapapi/MapView;->getProjection()Lcom/baidu/mapapi/Projection;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/e;

    invoke-virtual {v0, v1, v1}, Lcom/baidu/mapapi/e;->fromPixels(II)Lcom/baidu/mapapi/GeoPoint;

    move-result-object v1

    iget v2, p0, Lcom/baidu/mapapi/MapView;->e:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/baidu/mapapi/MapView;->f:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/baidu/mapapi/e;->fromPixels(II)Lcom/baidu/mapapi/GeoPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mapapi/GeoPoint;->getLongitudeE6()I

    move-result v0

    invoke-virtual {v1}, Lcom/baidu/mapapi/GeoPoint;->getLongitudeE6()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public getMapCenter()Lcom/baidu/mapapi/GeoPoint;
    .locals 3

    invoke-static {}, Lcom/baidu/mapapi/Mj;->GetMapStatus()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "y"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/baidu/mapapi/MapView;->c:Lcom/baidu/mapapi/GeoPoint;

    invoke-virtual {v2, v1}, Lcom/baidu/mapapi/GeoPoint;->setLongitudeE6(I)V

    iget-object v1, p0, Lcom/baidu/mapapi/MapView;->c:Lcom/baidu/mapapi/GeoPoint;

    invoke-virtual {v1, v0}, Lcom/baidu/mapapi/GeoPoint;->setLatitudeE6(I)V

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->c:Lcom/baidu/mapapi/GeoPoint;

    return-object v0
.end method

.method public getMaxZoomLevel()I
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/MapView;->h:I

    return v0
.end method

.method public getMinZoomLevel()I
    .locals 1

    iget v0, p0, Lcom/baidu/mapapi/MapView;->i:I

    return v0
.end method

.method public final getOverlays()Ljava/util/List;
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

    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    invoke-virtual {v0}, Lcom/baidu/mapapi/a;->c()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getProjection()Lcom/baidu/mapapi/Projection;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->a:Lcom/baidu/mapapi/e;

    return-object v0
.end method

.method public getZoomControls()Landroid/view/View;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->p:Landroid/widget/ZoomControls;

    return-object v0
.end method

.method public getZoomLevel()I
    .locals 2

    invoke-virtual {p0}, Lcom/baidu/mapapi/MapView;->d()I

    move-result v0

    iget v1, p0, Lcom/baidu/mapapi/MapView;->d:I

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/baidu/mapapi/MapView;->d:I

    :cond_0
    iget v0, p0, Lcom/baidu/mapapi/MapView;->d:I

    return v0
.end method

.method h()D
    .locals 4

    const-wide/high16 v0, 0x4000

    iget v2, p0, Lcom/baidu/mapapi/MapView;->d:I

    rsub-int/lit8 v2, v2, 0x12

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public invalidate()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->p:Landroid/widget/ZoomControls;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->p:Landroid/widget/ZoomControls;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public isDoubleClickZooming()Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    invoke-virtual {v0}, Lcom/baidu/mapapi/a;->b()Z

    move-result v0

    return v0
.end method

.method public isSatellite()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/mapapi/MapView;->k:Z

    return v0
.end method

.method public isStreetView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTraffic()Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/mapapi/MapView;->j:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-virtual {p0}, Lcom/baidu/mapapi/MapView;->a()Z

    iget-boolean v0, p0, Lcom/baidu/mapapi/MapView;->r:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/MapView;->setBuiltInZoomControls(Z)V

    :cond_0
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/mapapi/MapView;->r:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->p:Landroid/widget/ZoomControls;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->p:Landroid/widget/ZoomControls;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->q:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/mapapi/a;->a(ZILandroid/graphics/Rect;)V

    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mapapi/a;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/mapapi/a;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    const/4 v2, 0x0

    sub-int v0, p4, p2

    iput v0, p0, Lcom/baidu/mapapi/MapView;->e:I

    sub-int v0, p5, p3

    iput v0, p0, Lcom/baidu/mapapi/MapView;->f:I

    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v3, p0, Lcom/baidu/mapapi/MapView;->e:I

    iget v4, p0, Lcom/baidu/mapapi/MapView;->f:I

    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    iget v1, p0, Lcom/baidu/mapapi/MapView;->e:I

    iget v3, p0, Lcom/baidu/mapapi/MapView;->f:I

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/view/View;->layout(IIII)V

    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->p:Landroid/widget/ZoomControls;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v3, p0, Lcom/baidu/mapapi/MapView;->e:I

    iget v4, p0, Lcom/baidu/mapapi/MapView;->f:I

    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->p:Landroid/widget/ZoomControls;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->p:Landroid/widget/ZoomControls;

    sub-int v1, p4, p2

    sub-int v3, p5, p3

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->measure(II)V

    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->p:Landroid/widget/ZoomControls;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->p:Landroid/widget/ZoomControls;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v3, p0, Lcom/baidu/mapapi/MapView;->p:Landroid/widget/ZoomControls;

    add-int/lit8 v4, p4, -0xa

    sub-int v1, v4, v1

    add-int/lit8 v4, p5, -0x5

    sub-int/2addr v4, v0

    sub-int/2addr v4, p3

    add-int/lit8 v5, p4, -0xa

    add-int/lit8 v6, p5, -0x5

    sub-int/2addr v6, p3

    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/view/ViewGroup;->layout(IIII)V

    iget-object v1, p0, Lcom/baidu/mapapi/MapView;->q:Landroid/widget/ImageView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    iget v4, p0, Lcom/baidu/mapapi/MapView;->e:I

    iget v5, p0, Lcom/baidu/mapapi/MapView;->f:I

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/baidu/mapapi/MapView;->q:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/baidu/mapapi/MapView;->q:Landroid/widget/ImageView;

    sub-int v3, p4, p2

    sub-int v4, p5, p3

    invoke-virtual {v1, v3, v4}, Landroid/view/View;->measure(II)V

    iget-object v1, p0, Lcom/baidu/mapapi/MapView;->q:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v1, p0, Lcom/baidu/mapapi/MapView;->q:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-le v0, v1, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/baidu/mapapi/MapView;->q:Landroid/widget/ImageView;

    const/16 v4, 0xa

    add-int/lit8 v5, p5, -0x5

    sub-int v0, v5, v0

    sub-int/2addr v0, p3

    add-int/lit8 v3, v3, 0xa

    add-int/lit8 v5, p5, -0x5

    sub-int/2addr v5, p3

    invoke-virtual {v1, v4, v0, v3, v5}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move v0, v2

    :goto_1
    if-ge v0, v1, :cond_3

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/mapapi/MapView;->q:Landroid/widget/ImageView;

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lcom/baidu/mapapi/MapView;->p:Landroid/widget/ZoomControls;

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    if-ne v2, v3, :cond_2

    :cond_0
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/baidu/mapapi/MapView;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "lat"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "lon"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    new-instance v2, Lcom/baidu/mapapi/GeoPoint;

    invoke-direct {v2, v0, v1}, Lcom/baidu/mapapi/GeoPoint;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/baidu/mapapi/MapView;->a(Lcom/baidu/mapapi/GeoPoint;)V

    :cond_0
    const-string v0, "zoom"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/MapView;->c(I)Z

    :cond_1
    const-string v0, "traffic"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/mapapi/MapView;->setTraffic(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/baidu/mapapi/MapView;->getMapCenter()Lcom/baidu/mapapi/GeoPoint;

    move-result-object v0

    const-string v1, "lat"

    invoke-virtual {v0}, Lcom/baidu/mapapi/GeoPoint;->getLatitudeE6()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "lon"

    invoke-virtual {v0}, Lcom/baidu/mapapi/GeoPoint;->getLongitudeE6()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "zoom"

    invoke-virtual {p0}, Lcom/baidu/mapapi/MapView;->getZoomLevel()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "traffic"

    invoke-virtual {p0}, Lcom/baidu/mapapi/MapView;->isTraffic()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iput p1, p0, Lcom/baidu/mapapi/MapView;->e:I

    iput p2, p0, Lcom/baidu/mapapi/MapView;->f:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/a;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/a;->b(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public preLoad()V
    .locals 0

    return-void
.end method

.method public regMapViewListener(Lcom/baidu/mapapi/BMapManager;Lcom/baidu/mapapi/MKMapViewListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/baidu/mapapi/BMapManager;->a:Lcom/baidu/mapapi/Mj;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/baidu/mapapi/BMapManager;->a:Lcom/baidu/mapapi/Mj;

    invoke-virtual {v0, p2}, Lcom/baidu/mapapi/Mj;->a(Lcom/baidu/mapapi/MKMapViewListener;)V

    goto :goto_0
.end method

.method public setBuiltInZoomControls(Z)V
    .locals 1

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/baidu/mapapi/MapView;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->p:Landroid/widget/ZoomControls;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->p:Landroid/widget/ZoomControls;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->p:Landroid/widget/ZoomControls;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mapapi/MapView;->r:Z

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->p:Landroid/widget/ZoomControls;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setDoubleClickZooming(Z)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/a;->a(Z)V

    return-void
.end method

.method public setDragMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/a;->b(I)V

    return-void
.end method

.method public setDrawOverlayWhenZooming(Z)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/MapView;->b:Lcom/baidu/mapapi/a;

    invoke-virtual {v0, p1}, Lcom/baidu/mapapi/a;->b(Z)V

    return-void
.end method

.method public setReticleDrawMode(Lcom/baidu/mapapi/MapView$a;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "this feature is not implemented!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSatellite(Z)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "act"

    const/16 v2, 0x3e9

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "opt"

    const v2, 0x98e7c3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p1, :cond_0

    const-string v1, "on"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    invoke-static {v0}, Lcom/baidu/mapapi/Mj;->sendBundle(Landroid/os/Bundle;)I

    iput-boolean p1, p0, Lcom/baidu/mapapi/MapView;->k:Z

    return-void

    :cond_0
    const-string v1, "on"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setStreetView(Z)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "this feature is not implemented!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTraffic(Z)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "act"

    const/16 v2, 0x3e9

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "opt"

    const v2, 0x98e630

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p1, :cond_0

    const-string v1, "on"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    invoke-static {v0}, Lcom/baidu/mapapi/Mj;->sendBundle(Landroid/os/Bundle;)I

    iput-boolean p1, p0, Lcom/baidu/mapapi/MapView;->j:Z

    return-void

    :cond_0
    const-string v1, "on"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method
