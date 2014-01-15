.class public Lcom/baidu/mapapi/OverlayItem;
.super Ljava/lang/Object;


# static fields
.field public static final ITEM_STATE_FOCUSED_MASK:I = 0x4

.field public static final ITEM_STATE_NORMAL_MASK:I = 0x0

.field public static final ITEM_STATE_PRESSED_MASK:I = 0x1

.field public static final ITEM_STATE_SELECTED_MASK:I = 0x2


# instance fields
.field protected mMarker:Landroid/graphics/drawable/Drawable;

.field protected final mPoint:Lcom/baidu/mapapi/GeoPoint;

.field protected final mSnippet:Ljava/lang/String;

.field protected final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/baidu/mapapi/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/mapapi/OverlayItem;->mPoint:Lcom/baidu/mapapi/GeoPoint;

    iput-object p2, p0, Lcom/baidu/mapapi/OverlayItem;->mTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/mapapi/OverlayItem;->mSnippet:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/mapapi/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private static a(I)[I
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x3

    new-array v2, v0, [I

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_3

    const v0, 0x10100a7

    aput v0, v2, v1

    const/4 v0, 0x1

    :goto_0
    and-int/lit8 v3, p0, 0x2

    if-eqz v3, :cond_0

    const v3, 0x10100a1

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    and-int/lit8 v3, p0, 0x4

    if-eqz v3, :cond_1

    const v3, 0x101009c

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_1
    new-array v3, v0, [I

    :goto_1
    if-ge v1, v0, :cond_2

    aget v4, v2, v1

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v3

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static setState(Landroid/graphics/drawable/Drawable;I)V
    .locals 2

    invoke-static {p1}, Lcom/baidu/mapapi/OverlayItem;->a(I)[I

    move-result-object v0

    array-length v1, v0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getMarker(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/baidu/mapapi/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/baidu/mapapi/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    invoke-static {p1}, Lcom/baidu/mapapi/OverlayItem;->a(I)[I

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/mapapi/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v0, p0, Lcom/baidu/mapapi/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/mapapi/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method public getPoint()Lcom/baidu/mapapi/GeoPoint;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/OverlayItem;->mPoint:Lcom/baidu/mapapi/GeoPoint;

    return-object v0
.end method

.method public getSnippet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/OverlayItem;->mSnippet:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mapapi/OverlayItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public routableAddress()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setMarker(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iput-object p1, p0, Lcom/baidu/mapapi/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/baidu/mapapi/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mapapi/OverlayItem;->mMarker:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method
