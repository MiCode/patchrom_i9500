.class public final Landroid/sec/multiwindow/impl/MultiWindowManager;
.super Ljava/lang/Object;
.source "MultiWindowManager.java"


# static fields
.field private static A:Landroid/graphics/Rect; = null

.field private static B:Landroid/graphics/Rect; = null

.field private static C:Landroid/graphics/Rect; = null

.field private static D:Landroid/graphics/Rect; = null

.field private static E:Landroid/graphics/Rect; = null

.field private static F:Landroid/graphics/Rect; = null

.field public static final MW_TOUCH_DETECTED_ACTION:Ljava/lang/String; = "mw_action"

.field public static final MW_TOUCH_DETECTED_INTENT:Ljava/lang/String; = "com.sec.multiwindow.MW_TOUCH_DETECTED"

.field public static final MW_TOUCH_DETECTED_X:Ljava/lang/String; = "mw_x"

.field public static final MW_TOUCH_DETECTED_Y:Ljava/lang/String; = "mw_y"

.field private static sCenterBarDockingMargin:I

.field private static sCenterBarFlingSize:I

.field private static sCenterBarInnerPadding:I

.field private static sHasSystemNavBar:Z

.field private static sIsEnabled:Z

.field private static sIsPhone:Z

.field private static sQueried:Z

.field private static sQueriedType:Z

.field private static sSplitDirection:I

.field private static sSplitRect:Landroid/graphics/Rect;

.field private static sSplitRectLock:Ljava/lang/Object;

.field private static sStatusBarHeight:I

.field private static sStatusBarVisibility:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 22
    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueried:Z

    .line 23
    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueriedType:Z

    .line 24
    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsEnabled:Z

    .line 25
    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsPhone:Z

    .line 26
    sput v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarHeight:I

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRectLock:Ljava/lang/Object;

    .line 28
    sput v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitDirection:I

    .line 29
    const/4 v0, 0x0

    sput-object v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRect:Landroid/graphics/Rect;

    .line 30
    sput-boolean v2, Landroid/sec/multiwindow/impl/MultiWindowManager;->sHasSystemNavBar:Z

    .line 31
    sput-boolean v2, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarVisibility:Z

    .line 32
    sput v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sCenterBarInnerPadding:I

    .line 33
    sput v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sCenterBarFlingSize:I

    .line 34
    sput v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sCenterBarDockingMargin:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyCenterBarDocking(III)I
    .locals 4
    .parameter "orientation"
    .parameter "centerBarSize"
    .parameter "centerBarPos"

    .prologue
    .line 252
    sget v2, Landroid/sec/multiwindow/impl/MultiWindowManager;->sCenterBarDockingMargin:I

    div-int/lit8 v3, p1, 0x2

    add-int v0, v2, v3

    .line 253
    .local v0, dockingRange:I
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 254
    .local v1, fullscreen:Landroid/graphics/Point;
    invoke-static {v1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 256
    const/4 v2, 0x1

    if-eq p0, v2, :cond_3

    .line 257
    sget v2, Landroid/sec/multiwindow/impl/MultiWindowManager;->sCenterBarFlingSize:I

    if-gt p2, v2, :cond_1

    .line 258
    sget p2, Landroid/sec/multiwindow/impl/MultiWindowManager;->sCenterBarFlingSize:I

    .line 275
    :cond_0
    :goto_0
    return p2

    .line 259
    :cond_1
    iget v2, v1, Landroid/graphics/Point;->x:I

    sget v3, Landroid/sec/multiwindow/impl/MultiWindowManager;->sCenterBarFlingSize:I

    sub-int/2addr v2, v3

    if-lt p2, v2, :cond_2

    .line 260
    iget v2, v1, Landroid/graphics/Point;->x:I

    sget v3, Landroid/sec/multiwindow/impl/MultiWindowManager;->sCenterBarFlingSize:I

    sub-int p2, v2, v3

    goto :goto_0

    .line 261
    :cond_2
    iget v2, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v0

    if-lt p2, v2, :cond_0

    iget v2, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    if-gt p2, v2, :cond_0

    .line 263
    iget v2, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 p2, v2, 0x2

    goto :goto_0

    .line 266
    :cond_3
    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getStatusBarHeight()I

    move-result v2

    sget v3, Landroid/sec/multiwindow/impl/MultiWindowManager;->sCenterBarFlingSize:I

    add-int/2addr v2, v3

    if-gt p2, v2, :cond_4

    .line 267
    sget v2, Landroid/sec/multiwindow/impl/MultiWindowManager;->sCenterBarFlingSize:I

    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getStatusBarHeight()I

    move-result v3

    add-int p2, v2, v3

    goto :goto_0

    .line 268
    :cond_4
    iget v2, v1, Landroid/graphics/Point;->y:I

    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getStatusBarHeight()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Landroid/sec/multiwindow/impl/MultiWindowManager;->sCenterBarFlingSize:I

    sub-int/2addr v2, v3

    if-lt p2, v2, :cond_5

    .line 269
    iget v2, v1, Landroid/graphics/Point;->y:I

    sget v3, Landroid/sec/multiwindow/impl/MultiWindowManager;->sCenterBarFlingSize:I

    sub-int/2addr v2, v3

    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getStatusBarHeight()I

    move-result v3

    add-int p2, v2, v3

    goto :goto_0

    .line 270
    :cond_5
    iget v2, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v2, v2, 0x2

    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getStatusBarHeight()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v2, v0

    if-lt p2, v2, :cond_0

    iget v2, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v2, v2, 0x2

    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getStatusBarHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    if-gt p2, v2, :cond_0

    .line 272
    iget v2, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v2, v2, 0x2

    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getStatusBarHeight()I

    move-result v3

    add-int p2, v2, v3

    goto :goto_0
.end method

.method public static calcStatusBarHeight(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 86
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    .line 87
    .local v1, display:Landroid/hardware/display/DisplayManagerGlobal;
    if-nez v1, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v5

    .line 91
    :cond_1
    invoke-virtual {v1, v5}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 92
    .local v0, d:Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 96
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 97
    .local v2, fullscreen:Landroid/graphics/Point;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 99
    iget v5, v2, Landroid/graphics/Point;->x:I

    iget v6, v2, Landroid/graphics/Point;->y:I

    if-le v5, v6, :cond_4

    iget v3, v2, Landroid/graphics/Point;->y:I

    .line 100
    .local v3, shortSize:I
    :goto_1
    mul-int/lit16 v5, v3, 0xa0

    sget v6, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    div-int v4, v5, v6

    .line 102
    .local v4, shortSizeDp:I
    const/16 v5, 0x258

    if-lt v4, v5, :cond_2

    sget v5, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    const/16 v6, 0xd5

    if-eq v5, v6, :cond_2

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_3

    .line 105
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x105000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sput v5, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarHeight:I

    .line 107
    :cond_3
    const/4 v5, 0x1

    goto :goto_0

    .line 99
    .end local v3           #shortSize:I
    .end local v4           #shortSizeDp:I
    :cond_4
    iget v3, v2, Landroid/graphics/Point;->x:I

    goto :goto_1
.end method

.method public static calculateSplitWindowSize(I)Landroid/graphics/Rect;
    .locals 3
    .parameter "splitZone"

    .prologue
    .line 227
    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->updateWindowRects()V

    .line 229
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 230
    .local v0, result:Landroid/graphics/Rect;
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 232
    sget-object v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->C:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 234
    :cond_0
    and-int/lit8 v1, p0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 236
    sget-object v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->D:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 238
    :cond_1
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 240
    sget-object v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->E:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 242
    :cond_2
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 244
    sget-object v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->F:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 247
    :cond_3
    return-object v0
.end method

.method public static findCurrentWindowZone(III)I
    .locals 16
    .parameter "currentLaunchMode"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 279
    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->updateWindowRects()V

    .line 280
    sget-boolean v12, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarVisibility:Z

    if-eqz v12, :cond_0

    sget v4, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarHeight:I

    .line 283
    .local v4, realStatusBarHeight:I
    :goto_0
    const/4 v12, 0x2

    new-array v6, v12, [Landroid/util/Pair;

    const/4 v12, 0x0

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->A:Landroid/graphics/Rect;

    const/4 v15, 0x3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v6, v12

    const/4 v12, 0x1

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->B:Landroid/graphics/Rect;

    const/16 v15, 0xc

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v6, v12

    .line 288
    .local v6, split:[Landroid/util/Pair;
    const/4 v12, 0x3

    new-array v7, v12, [Landroid/util/Pair;

    const/4 v12, 0x0

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->A:Landroid/graphics/Rect;

    const/4 v15, 0x3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v7, v12

    const/4 v12, 0x1

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->E:Landroid/graphics/Rect;

    const/4 v15, 0x4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v7, v12

    const/4 v12, 0x2

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->F:Landroid/graphics/Rect;

    const/16 v15, 0x8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v7, v12

    .line 294
    .local v7, split3L:[Landroid/util/Pair;
    const/4 v12, 0x3

    new-array v8, v12, [Landroid/util/Pair;

    const/4 v12, 0x0

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->C:Landroid/graphics/Rect;

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v8, v12

    const/4 v12, 0x1

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->D:Landroid/graphics/Rect;

    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v8, v12

    const/4 v12, 0x2

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->B:Landroid/graphics/Rect;

    const/16 v15, 0xc

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v8, v12

    .line 300
    .local v8, split3R:[Landroid/util/Pair;
    const/4 v12, 0x4

    new-array v9, v12, [Landroid/util/Pair;

    const/4 v12, 0x0

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->C:Landroid/graphics/Rect;

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v9, v12

    const/4 v12, 0x1

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->D:Landroid/graphics/Rect;

    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v9, v12

    const/4 v12, 0x2

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->E:Landroid/graphics/Rect;

    const/4 v15, 0x4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v9, v12

    const/4 v12, 0x3

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->F:Landroid/graphics/Rect;

    const/16 v15, 0x8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v9, v12

    .line 307
    .local v9, split4:[Landroid/util/Pair;
    const/4 v11, 0x0

    .line 309
    .local v11, zoneInfos:[Landroid/util/Pair;,"[Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    sparse-switch p0, :sswitch_data_0

    .line 328
    :goto_1
    :sswitch_0
    move-object v1, v11

    .local v1, arr$:[Landroid/util/Pair;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_2
    if-ge v2, v3, :cond_2

    aget-object v10, v1, v2

    .line 329
    .local v10, zone:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    iget-object v5, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/Rect;

    .line 330
    .local v5, rect:Landroid/graphics/Rect;
    add-int v12, p2, v4

    move/from16 v0, p1

    invoke-virtual {v5, v0, v12}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 331
    iget-object v12, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 335
    .end local v5           #rect:Landroid/graphics/Rect;
    .end local v10           #zone:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    :goto_3
    return v12

    .line 280
    .end local v1           #arr$:[Landroid/util/Pair;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #realStatusBarHeight:I
    .end local v6           #split:[Landroid/util/Pair;
    .end local v7           #split3L:[Landroid/util/Pair;
    .end local v8           #split3R:[Landroid/util/Pair;
    .end local v9           #split4:[Landroid/util/Pair;
    .end local v11           #zoneInfos:[Landroid/util/Pair;,"[Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    :cond_0
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 315
    .restart local v4       #realStatusBarHeight:I
    .restart local v6       #split:[Landroid/util/Pair;
    .restart local v7       #split3L:[Landroid/util/Pair;
    .restart local v8       #split3R:[Landroid/util/Pair;
    .restart local v9       #split4:[Landroid/util/Pair;
    .restart local v11       #zoneInfos:[Landroid/util/Pair;,"[Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    :sswitch_1
    move-object v11, v6

    .line 316
    goto :goto_1

    .line 318
    :sswitch_2
    move-object v11, v7

    .line 319
    goto :goto_1

    .line 321
    :sswitch_3
    move-object v11, v8

    .line 322
    goto :goto_1

    .line 324
    :sswitch_4
    move-object v11, v9

    goto :goto_1

    .line 328
    .restart local v1       #arr$:[Landroid/util/Pair;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v5       #rect:Landroid/graphics/Rect;
    .restart local v10       #zone:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 335
    .end local v5           #rect:Landroid/graphics/Rect;
    .end local v10           #zone:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    :cond_2
    const/4 v12, 0x0

    goto :goto_3

    .line 309
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getAppDisplaySize(Landroid/graphics/Point;)V
    .locals 5
    .parameter "size"

    .prologue
    const/4 v2, 0x0

    .line 60
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 61
    .local v1, fullscreen:Landroid/graphics/Point;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 62
    .local v0, d:Landroid/view/Display;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 64
    :cond_0
    iget v3, v1, Landroid/graphics/Point;->x:I

    iput v3, p0, Landroid/graphics/Point;->x:I

    .line 65
    iget v3, v1, Landroid/graphics/Point;->y:I

    sget-boolean v4, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarVisibility:Z

    if-eqz v4, :cond_1

    sget v2, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarHeight:I

    :cond_1
    sub-int v2, v3, v2

    iput v2, p0, Landroid/graphics/Point;->y:I

    .line 66
    return-void
.end method

.method public static getCurrentStatusBarVisibility()Z
    .locals 1

    .prologue
    .line 82
    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarVisibility:Z

    return v0
.end method

.method public static getSplitDirection()I
    .locals 2

    .prologue
    .line 140
    sget-object v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 141
    :try_start_0
    sget v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitDirection:I

    monitor-exit v1

    return v0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getSplitRect()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 146
    sget-object v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 147
    :try_start_0
    sget-object v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRect:Landroid/graphics/Rect;

    monitor-exit v1

    return-object v0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getStatusBarHeight()I
    .locals 1

    .prologue
    .line 111
    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarVisibility:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarHeight:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasSystemNavBar()Z
    .locals 1

    .prologue
    .line 74
    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sHasSystemNavBar:Z

    return v0
.end method

.method public static initHasSystemNavBar(Z)V
    .locals 1
    .parameter "hasBar"

    .prologue
    .line 69
    sput-boolean p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sHasSystemNavBar:Z

    .line 70
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarVisibility:Z

    .line 71
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isArrangeMode(IZZ)Z
    .locals 4
    .parameter "windowMode"
    .parameter "bResumed"
    .parameter "bIncludePinup"

    .prologue
    const/4 v2, 0x0

    .line 152
    invoke-static {p0}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v0

    .line 153
    .local v0, mode:I
    invoke-static {p0}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v1

    .line 155
    .local v1, options:I
    const/high16 v3, 0x200

    if-eq v0, v3, :cond_1

    .line 167
    :cond_0
    :goto_0
    return v2

    .line 159
    :cond_1
    const/high16 v3, 0x10

    and-int/2addr v3, v1

    if-nez v3, :cond_0

    .line 163
    if-eqz p1, :cond_0

    if-eqz p2, :cond_2

    .line 164
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 163
    :cond_2
    const/high16 v3, 0x80

    and-int/2addr v3, v1

    if-nez v3, :cond_0

    goto :goto_1
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 37
    sget-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueried:Z

    if-nez v1, :cond_2

    .line 38
    const/4 v1, 0x1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueried:Z

    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, pm:Landroid/content/pm/PackageManager;
    if-eqz p0, :cond_1

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 42
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calcStatusBarHeight(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    const/4 v1, 0x0

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueried:Z

    .line 44
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sCenterBarInnerPadding:I

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sCenterBarFlingSize:I

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sCenterBarDockingMargin:I

    .line 49
    :cond_1
    if-eqz v0, :cond_3

    .line 50
    const-string v1, "com.sec.feature.multiwindow"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsEnabled:Z

    .line 56
    .end local v0           #pm:Landroid/content/pm/PackageManager;
    :cond_2
    :goto_0
    sget-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsEnabled:Z

    return v1

    .line 53
    .restart local v0       #pm:Landroid/content/pm/PackageManager;
    :cond_3
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsEnabled:Z

    goto :goto_0
.end method

.method public static isMinimized(I)Z
    .locals 2
    .parameter "windowMode"

    .prologue
    .line 375
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isMultiWindow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->option(I)I

    move-result v0

    const/high16 v1, 0x20

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMultiWindow(I)Z
    .locals 2
    .parameter "windowMode"

    .prologue
    .line 362
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->mode(I)I

    move-result v0

    const/high16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNormalWindow(I)Z
    .locals 2
    .parameter "windowMode"

    .prologue
    .line 358
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->mode(I)I

    move-result v0

    const/high16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPhone(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 115
    sget-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueriedType:Z

    if-nez v1, :cond_1

    .line 116
    const/4 v1, 0x1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueriedType:Z

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, pm:Landroid/content/pm/PackageManager;
    if-eqz p0, :cond_0

    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 122
    :cond_0
    if-eqz v0, :cond_2

    .line 123
    const-string v1, "com.sec.feature.multiwindow.phone"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsPhone:Z

    .line 129
    .end local v0           #pm:Landroid/content/pm/PackageManager;
    :cond_1
    :goto_0
    sget-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsPhone:Z

    return v1

    .line 126
    .restart local v0       #pm:Landroid/content/pm/PackageManager;
    :cond_2
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.phone.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsPhone:Z

    goto :goto_0
.end method

.method public static isPinup(I)Z
    .locals 2
    .parameter "windowMode"

    .prologue
    .line 370
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isMultiWindow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->option(I)I

    move-result v0

    const/high16 v1, 0x80

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isResizable(I)Z
    .locals 2
    .parameter "windowMode"

    .prologue
    .line 366
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->option(I)I

    move-result v0

    const/high16 v1, 0x40

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static mode(I)I
    .locals 1
    .parameter "windowMode"

    .prologue
    .line 350
    invoke-static {p0}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v0

    return v0
.end method

.method private static option(I)I
    .locals 1
    .parameter "windowMode"

    .prologue
    .line 354
    invoke-static {p0}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v0

    return v0
.end method

.method public static setCurrentStatusBarVisibility(Z)V
    .locals 0
    .parameter "isVisible"

    .prologue
    .line 78
    sput-boolean p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarVisibility:Z

    .line 79
    return-void
.end method

.method public static setSplitRect(ILandroid/graphics/Rect;)V
    .locals 2
    .parameter "direction"
    .parameter "rect"

    .prologue
    .line 133
    sget-object v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 134
    :try_start_0
    sput p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitDirection:I

    .line 135
    sput-object p1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRect:Landroid/graphics/Rect;

    .line 136
    monitor-exit v1

    .line 137
    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static updateWindowRects()V
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 171
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 172
    .local v0, fullscreen:Landroid/graphics/Point;
    invoke-static {v0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 174
    sget-boolean v10, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarVisibility:Z

    if-eqz v10, :cond_1

    sget v6, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarHeight:I

    .line 175
    .local v6, realStatusBarHeight:I
    :goto_0
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 176
    .local v2, iDeviceWidth:I
    iget v1, v0, Landroid/graphics/Point;->y:I

    .line 177
    .local v1, iDeviceHeight:I
    div-int/lit8 v10, v1, 0x2

    add-int v3, v10, v6

    .line 178
    .local v3, iHeightBoundary:I
    div-int/lit8 v4, v2, 0x2

    .line 180
    .local v4, iWidthBoundary:I
    if-le v2, v1, :cond_2

    move v5, v9

    .line 181
    .local v5, landscape:Z
    :goto_1
    const/4 v7, 0x0

    .line 184
    .local v7, splitHalfWidth:I
    sget-object v10, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRectLock:Ljava/lang/Object;

    monitor-enter v10

    .line 185
    :try_start_0
    sget-object v11, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRect:Landroid/graphics/Rect;

    if-eqz v11, :cond_0

    .line 186
    sget v11, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitDirection:I

    if-ne v11, v9, :cond_4

    .line 187
    if-eqz v5, :cond_3

    .line 188
    sget-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    .line 189
    sget-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    div-int/lit8 v7, v9, 0x2

    .line 204
    :cond_0
    :goto_2
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    sget v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->sCenterBarInnerPadding:I

    sub-int/2addr v7, v9

    .line 207
    if-eqz v5, :cond_6

    .line 208
    new-instance v9, Landroid/graphics/Rect;

    sub-int v10, v4, v7

    invoke-direct {v9, v8, v8, v10, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->C:Landroid/graphics/Rect;

    .line 209
    new-instance v9, Landroid/graphics/Rect;

    sub-int v10, v4, v7

    add-int v11, v1, v6

    invoke-direct {v9, v8, v3, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->D:Landroid/graphics/Rect;

    .line 210
    new-instance v9, Landroid/graphics/Rect;

    add-int v10, v4, v7

    invoke-direct {v9, v10, v8, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->E:Landroid/graphics/Rect;

    .line 211
    new-instance v8, Landroid/graphics/Rect;

    add-int v9, v4, v7

    add-int v10, v1, v6

    invoke-direct {v8, v9, v3, v2, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v8, Landroid/sec/multiwindow/impl/MultiWindowManager;->F:Landroid/graphics/Rect;

    .line 219
    :goto_3
    new-instance v8, Landroid/graphics/Rect;

    sget-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->C:Landroid/graphics/Rect;

    invoke-direct {v8, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    sput-object v8, Landroid/sec/multiwindow/impl/MultiWindowManager;->A:Landroid/graphics/Rect;

    .line 220
    sget-object v8, Landroid/sec/multiwindow/impl/MultiWindowManager;->A:Landroid/graphics/Rect;

    sget-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->D:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 222
    new-instance v8, Landroid/graphics/Rect;

    sget-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->E:Landroid/graphics/Rect;

    invoke-direct {v8, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    sput-object v8, Landroid/sec/multiwindow/impl/MultiWindowManager;->B:Landroid/graphics/Rect;

    .line 223
    sget-object v8, Landroid/sec/multiwindow/impl/MultiWindowManager;->B:Landroid/graphics/Rect;

    sget-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->F:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 224
    return-void

    .end local v1           #iDeviceHeight:I
    .end local v2           #iDeviceWidth:I
    .end local v3           #iHeightBoundary:I
    .end local v4           #iWidthBoundary:I
    .end local v5           #landscape:Z
    .end local v6           #realStatusBarHeight:I
    .end local v7           #splitHalfWidth:I
    :cond_1
    move v6, v8

    .line 174
    goto :goto_0

    .restart local v1       #iDeviceHeight:I
    .restart local v2       #iDeviceWidth:I
    .restart local v3       #iHeightBoundary:I
    .restart local v4       #iWidthBoundary:I
    .restart local v6       #realStatusBarHeight:I
    :cond_2
    move v5, v8

    .line 180
    goto :goto_1

    .line 191
    .restart local v5       #landscape:Z
    .restart local v7       #splitHalfWidth:I
    :cond_3
    :try_start_1
    sget-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    .line 192
    sget-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    div-int/lit8 v7, v9, 0x2

    goto :goto_2

    .line 194
    :cond_4
    sget v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitDirection:I

    const/4 v11, 0x2

    if-ne v9, v11, :cond_0

    .line 195
    if-eqz v5, :cond_5

    .line 196
    sget-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    .line 197
    sget-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    div-int/lit8 v7, v9, 0x2

    goto :goto_2

    .line 199
    :cond_5
    sget-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    .line 200
    sget-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    div-int/lit8 v7, v9, 0x2

    goto/16 :goto_2

    .line 204
    :catchall_0
    move-exception v8

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 213
    :cond_6
    new-instance v9, Landroid/graphics/Rect;

    sub-int v10, v3, v7

    invoke-direct {v9, v8, v8, v4, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->C:Landroid/graphics/Rect;

    .line 214
    new-instance v9, Landroid/graphics/Rect;

    add-int v10, v3, v7

    add-int v11, v1, v6

    invoke-direct {v9, v8, v10, v4, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->E:Landroid/graphics/Rect;

    .line 215
    new-instance v9, Landroid/graphics/Rect;

    sub-int v10, v3, v7

    invoke-direct {v9, v4, v8, v2, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->D:Landroid/graphics/Rect;

    .line 216
    new-instance v8, Landroid/graphics/Rect;

    add-int v9, v3, v7

    add-int v10, v1, v6

    invoke-direct {v8, v4, v9, v2, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v8, Landroid/sec/multiwindow/impl/MultiWindowManager;->F:Landroid/graphics/Rect;

    goto/16 :goto_3
.end method
