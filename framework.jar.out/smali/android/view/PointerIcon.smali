.class public final Landroid/view/PointerIcon;
.super Ljava/lang/Object;
.source "PointerIcon.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/PointerIcon$HoverEffect;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/PointerIcon;",
            ">;"
        }
    .end annotation
.end field

.field private static final HOVERING_CUSTOM_ICON_MAX_COUNT:I = 0x5

.field private static final HOVERING_CUSTOM_ICON_MAX_SIZE:I = 0x9c40

.field private static final HOVERING_CUSTOM_ICON_RESIZE_X:I = 0x64

.field public static final HOVERING_FLAG_ALWAYSSHOW:I = 0x1

.field public static final HOVERING_SCROLLICON_POINTER_01:I = 0xb

.field public static final HOVERING_SCROLLICON_POINTER_02:I = 0xc

.field public static final HOVERING_SCROLLICON_POINTER_03:I = 0xd

.field public static final HOVERING_SCROLLICON_POINTER_04:I = 0xe

.field public static final HOVERING_SCROLLICON_POINTER_05:I = 0xf

.field public static final HOVERING_SCROLLICON_POINTER_06:I = 0x10

.field public static final HOVERING_SCROLLICON_POINTER_07:I = 0x11

.field public static final HOVERING_SCROLLICON_POINTER_08:I = 0x12

.field public static final HOVERING_SPENICON_CURSOR:I = 0x2

.field public static final HOVERING_SPENICON_CUSTOM:I = 0x0

.field public static final HOVERING_SPENICON_DEFAULT:I = 0x1

.field public static final HOVERING_SPENICON_HIDE:I = 0x13

.field public static final HOVERING_SPENICON_MORE:I = 0xa

.field public static final HOVERING_SPENICON_MOVE:I = 0x5

.field public static final HOVERING_SPENICON_RESIZE_01:I = 0x6

.field public static final HOVERING_SPENICON_RESIZE_02:I = 0x7

.field public static final HOVERING_SPENICON_RESIZE_03:I = 0x8

.field public static final HOVERING_SPENICON_RESIZE_04:I = 0x9

.field public static final HOVERING_SPENICON_SPLIT_01:I = 0x3

.field public static final HOVERING_SPENICON_SPLIT_02:I = 0x4

.field public static final STYLE_ARROW:I = 0x3e8

.field public static final STYLE_CUSTOM:I = -0x1

.field private static final STYLE_DEFAULT:I = 0x3e8

.field public static final STYLE_NULL:I = 0x0

.field private static final STYLE_OEM_FIRST:I = 0x2710

.field public static final STYLE_SPOT_ANCHOR:I = 0x7d2

.field public static final STYLE_SPOT_FINGERHOVER:I = 0x2712

.field public static final STYLE_SPOT_HOVER:I = 0x7d0

.field public static final STYLE_SPOT_HOVERING_SPEN:I = 0x2711

.field public static final STYLE_SPOT_SPC_TOUCH_DOWN:I = 0x4e21

.field public static final STYLE_SPOT_SPC_TOUCH_MOVE:I = 0x4e22

.field public static final STYLE_SPOT_TOUCH:I = 0x7d1

.field private static final TAG:Ljava/lang/String; = "PointerIcon"

.field private static final gNullIcon:Landroid/view/PointerIcon;

.field private static mContext:Landroid/content/Context;

.field private static mCustomHotSpotPoint:Landroid/graphics/Point;

.field private static mCustomIconCurrentId:I

.field private static mCustomIconId:I

.field private static mHoverBitmap:[Landroid/graphics/Bitmap;

.field private static mHoverEffect:Landroid/view/PointerIcon$HoverEffect;

.field private static mIconType:I

.field private static sInputManager:Landroid/hardware/input/IInputManager;

.field private static final sStaticInitInput:Ljava/lang/Object;

.field private static final sStaticInitWindow:Ljava/lang/Object;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHotSpotX:F

.field private mHotSpotY:F

.field private final mStyle:I

.field private mSystemIconResourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 99
    new-instance v0, Landroid/view/PointerIcon;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    sput-object v0, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    .line 391
    new-instance v0, Landroid/view/PointerIcon$1;

    invoke-direct {v0}, Landroid/view/PointerIcon$1;-><init>()V

    sput-object v0, Landroid/view/PointerIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 575
    sput v2, Landroid/view/PointerIcon;->mIconType:I

    .line 577
    const/4 v0, 0x0

    sput-object v0, Landroid/view/PointerIcon;->mCustomHotSpotPoint:Landroid/graphics/Point;

    .line 578
    sput v2, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    .line 580
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/PointerIcon;->sStaticInitWindow:Ljava/lang/Object;

    .line 581
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/PointerIcon;->sStaticInitInput:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .parameter "style"

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput p1, p0, Landroid/view/PointerIcon;->mStyle:I

    .line 133
    return-void
.end method

.method synthetic constructor <init>(ILandroid/view/PointerIcon$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/view/PointerIcon;-><init>(I)V

    return-void
.end method

.method static synthetic access$102(Landroid/view/PointerIcon;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput p1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    return p1
.end method

.method static synthetic access$300()Landroid/content/Context;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static createCustomIcon(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;
    .locals 3
    .parameter "bitmap"
    .parameter "hotSpotX"
    .parameter "hotSpotY"

    .prologue
    .line 245
    if-nez p0, :cond_0

    .line 246
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bitmap must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 248
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/view/PointerIcon;->validateHotSpot(Landroid/graphics/Bitmap;FF)V

    .line 250
    new-instance v0, Landroid/view/PointerIcon;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    .line 251
    .local v0, icon:Landroid/view/PointerIcon;
    iput-object p0, v0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    .line 252
    iput p1, v0, Landroid/view/PointerIcon;->mHotSpotX:F

    .line 253
    iput p2, v0, Landroid/view/PointerIcon;->mHotSpotY:F

    .line 254
    return-object v0
.end method

.method public static getDefaultIcon(Landroid/content/Context;)Landroid/view/PointerIcon;
    .locals 1
    .parameter "context"

    .prologue
    .line 155
    const/16 v0, 0x3e8

    invoke-static {p0, v0}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method static getInputManager()Landroid/hardware/input/IInputManager;
    .locals 2

    .prologue
    .line 833
    sget-object v1, Landroid/view/PointerIcon;->sStaticInitInput:Ljava/lang/Object;

    monitor-enter v1

    .line 834
    :try_start_0
    sget-object v0, Landroid/view/PointerIcon;->sInputManager:Landroid/hardware/input/IInputManager;

    if-nez v0, :cond_0

    .line 835
    const-string v0, "input"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object v0

    sput-object v0, Landroid/view/PointerIcon;->sInputManager:Landroid/hardware/input/IInputManager;

    .line 837
    :cond_0
    sget-object v0, Landroid/view/PointerIcon;->sInputManager:Landroid/hardware/input/IInputManager;

    monitor-exit v1

    return-object v0

    .line 838
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getNullIcon()Landroid/view/PointerIcon;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    return-object v0
.end method

.method public static getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;
    .locals 10
    .parameter "context"
    .parameter "style"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/16 v5, 0x2711

    const/4 v6, -0x1

    const/16 v7, 0x3e8

    .line 169
    if-nez p0, :cond_0

    .line 170
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "context must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 173
    :cond_0
    if-nez p1, :cond_1

    .line 174
    sget-object v4, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    .line 228
    :goto_0
    return-object v4

    .line 178
    :cond_1
    sget-object v4, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    if-nez v4, :cond_2

    .line 179
    sput-object p0, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    .line 182
    :cond_2
    if-ne p1, v5, :cond_5

    .line 183
    sget v4, Landroid/view/PointerIcon;->mIconType:I

    if-nez v4, :cond_5

    .line 184
    sget-object v4, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v5, Landroid/view/PointerIcon;->mCustomIconId:I

    aget-object v4, v4, v5

    if-nez v4, :cond_3

    .line 185
    const-string v4, "PointerIcon"

    const-string v5, "getSystemIcon mHoverBitmap is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-static {p0, v7}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v4

    goto :goto_0

    .line 189
    :cond_3
    sget-object v4, Landroid/view/PointerIcon;->mCustomHotSpotPoint:Landroid/graphics/Point;

    if-nez v4, :cond_4

    .line 190
    sget-object v4, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v5, Landroid/view/PointerIcon;->mCustomIconId:I

    aget-object v4, v4, v5

    sget-object v5, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v6, Landroid/view/PointerIcon;->mCustomIconId:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sget-object v6, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v7, Landroid/view/PointerIcon;->mCustomIconId:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-static {v4, v5, v6}, Landroid/view/PointerIcon;->createCustomIcon(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v4

    goto :goto_0

    .line 192
    :cond_4
    sget-object v4, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v5, Landroid/view/PointerIcon;->mCustomIconId:I

    aget-object v4, v4, v5

    sget-object v5, Landroid/view/PointerIcon;->mCustomHotSpotPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    sget-object v6, Landroid/view/PointerIcon;->mCustomHotSpotPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-static {v4, v5, v6}, Landroid/view/PointerIcon;->createCustomIcon(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v4

    goto :goto_0

    .line 197
    :cond_5
    invoke-static {p1}, Landroid/view/PointerIcon;->getSystemIconStyleIndex(I)I

    move-result v3

    .line 199
    .local v3, styleIndex:I
    if-nez v3, :cond_6

    if-eq p1, v5, :cond_6

    .line 200
    invoke-static {v7}, Landroid/view/PointerIcon;->getSystemIconStyleIndex(I)I

    move-result v3

    .line 205
    :cond_6
    if-ne p1, v5, :cond_7

    .line 206
    sget-object v4, Lcom/android/internal/R$styleable;->DeviceDefault_Pointer:[I

    const v5, 0x10104a1

    invoke-virtual {p0, v9, v4, v5, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 207
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 208
    .local v2, resourceId:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 217
    :goto_1
    if-ne v2, v6, :cond_9

    .line 218
    const-string v4, "PointerIcon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing theme resources for pointer icon style "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    if-ne p1, v7, :cond_8

    sget-object v4, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    goto/16 :goto_0

    .line 210
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v2           #resourceId:I
    :cond_7
    sget-object v4, Lcom/android/internal/R$styleable;->Pointer:[I

    const v5, 0x1010422

    invoke-virtual {p0, v9, v4, v5, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 213
    .restart local v0       #a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 214
    .restart local v2       #resourceId:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    .line 219
    :cond_8
    invoke-static {p0, v7}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v4

    goto/16 :goto_0

    .line 222
    :cond_9
    new-instance v1, Landroid/view/PointerIcon;

    invoke-direct {v1, p1}, Landroid/view/PointerIcon;-><init>(I)V

    .line 223
    .local v1, icon:Landroid/view/PointerIcon;
    const/high16 v4, -0x100

    and-int/2addr v4, v2

    const/high16 v5, 0x100

    if-ne v4, v5, :cond_a

    .line 224
    iput v2, v1, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    :goto_2
    move-object v4, v1

    .line 228
    goto/16 :goto_0

    .line 226
    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v1, v4, v2}, Landroid/view/PointerIcon;->loadResource(Landroid/content/res/Resources;I)V

    goto :goto_2
.end method

.method private static getSystemIconStyleIndex(I)I
    .locals 8
    .parameter "style"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 505
    sparse-switch p0, :sswitch_data_0

    .line 565
    :goto_0
    :pswitch_0
    :sswitch_0
    return v0

    :sswitch_1
    move v0, v1

    .line 509
    goto :goto_0

    :sswitch_2
    move v0, v2

    .line 511
    goto :goto_0

    :sswitch_3
    move v0, v3

    .line 513
    goto :goto_0

    .line 516
    :sswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 518
    :sswitch_5
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_6
    move v0, v4

    .line 520
    goto :goto_0

    .line 522
    :sswitch_7
    const-string v5, "PointerIcon"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSystemIconStyleIndex style: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    sget v5, Landroid/view/PointerIcon;->mIconType:I

    packed-switch v5, :pswitch_data_0

    .line 562
    const/16 v0, 0x9

    goto :goto_0

    .line 525
    :pswitch_1
    const/16 v0, 0xb

    goto :goto_0

    .line 527
    :pswitch_2
    const/16 v0, 0xc

    goto :goto_0

    .line 529
    :pswitch_3
    const/16 v0, 0xd

    goto :goto_0

    .line 531
    :pswitch_4
    const/16 v0, 0xe

    goto :goto_0

    .line 533
    :pswitch_5
    const/16 v0, 0xf

    goto :goto_0

    .line 535
    :pswitch_6
    const/16 v0, 0x10

    goto :goto_0

    .line 537
    :pswitch_7
    const/16 v0, 0x11

    goto :goto_0

    .line 539
    :pswitch_8
    const/16 v0, 0x12

    goto :goto_0

    .line 541
    :pswitch_9
    const/16 v0, 0xa

    goto :goto_0

    :pswitch_a
    move v0, v1

    .line 545
    goto :goto_0

    :pswitch_b
    move v0, v2

    .line 547
    goto :goto_0

    :pswitch_c
    move v0, v3

    .line 549
    goto :goto_0

    :pswitch_d
    move v0, v4

    .line 551
    goto :goto_0

    .line 553
    :pswitch_e
    const/4 v0, 0x5

    goto :goto_0

    .line 555
    :pswitch_f
    const/4 v0, 0x6

    goto :goto_0

    .line 557
    :pswitch_10
    const/4 v0, 0x7

    goto :goto_0

    .line 559
    :pswitch_11
    const/16 v0, 0x8

    goto :goto_0

    .line 505
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x7d0 -> :sswitch_1
        0x7d1 -> :sswitch_2
        0x7d2 -> :sswitch_3
        0x2711 -> :sswitch_7
        0x2712 -> :sswitch_6
        0x4e21 -> :sswitch_4
        0x4e22 -> :sswitch_5
    .end sparse-switch

    .line 523
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public static loadCustomIcon(Landroid/content/res/Resources;I)Landroid/view/PointerIcon;
    .locals 3
    .parameter "resources"
    .parameter "resourceId"

    .prologue
    .line 279
    if-nez p0, :cond_0

    .line 280
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "resources must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 283
    :cond_0
    new-instance v0, Landroid/view/PointerIcon;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    .line 284
    .local v0, icon:Landroid/view/PointerIcon;
    invoke-direct {v0, p0, p1}, Landroid/view/PointerIcon;->loadResource(Landroid/content/res/Resources;I)V

    .line 285
    return-object v0
.end method

.method private loadResource(Landroid/content/res/Resources;I)V
    .locals 9
    .parameter "resources"
    .parameter "resourceId"

    .prologue
    .line 460
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 465
    .local v6, parser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string v7, "pointer-icon"

    invoke-static {v6, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 467
    sget-object v7, Lcom/android/internal/R$styleable;->PointerIcon:[I

    invoke-virtual {p1, v6, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 469
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 470
    .local v1, bitmapRes:I
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 471
    .local v4, hotSpotX:F
    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 472
    .local v5, hotSpotY:F
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    .line 479
    if-nez v1, :cond_0

    .line 480
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "<pointer-icon> is missing bitmap attribute."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 473
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #bitmapRes:I
    .end local v4           #hotSpotX:F
    .end local v5           #hotSpotY:F
    :catch_0
    move-exception v3

    .line 474
    .local v3, ex:Ljava/lang/Exception;
    :try_start_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Exception parsing pointer icon resource."

    invoke-direct {v7, v8, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    .end local v3           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    throw v7

    .line 483
    .restart local v0       #a:Landroid/content/res/TypedArray;
    .restart local v1       #bitmapRes:I
    .restart local v4       #hotSpotX:F
    .restart local v5       #hotSpotY:F
    :cond_0
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 484
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    instance-of v7, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v7, :cond_1

    .line 485
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "<pointer-icon> bitmap attribute must refer to a bitmap drawable."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 490
    :cond_1
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2           #drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    .line 491
    iput v4, p0, Landroid/view/PointerIcon;->mHotSpotX:F

    .line 492
    iput v5, p0, Landroid/view/PointerIcon;->mHotSpotY:F

    .line 493
    return-void
.end method

.method public static registerHoveringSpenCustomIcon(Landroid/graphics/drawable/Drawable;)I
    .locals 8
    .parameter "d"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 595
    const-string v4, "PointerIcon"

    const-string v5, "registerHoveringSpenCustomIcon"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    if-nez p0, :cond_0

    .line 600
    const-string v4, "PointerIcon"

    const-string v5, "registerHoveringSpenCustomIcon Drawable is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const/4 v4, -0x1

    .line 620
    :goto_0
    return v4

    .line 604
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 605
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 607
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {p0, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 608
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 610
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x4

    const v5, 0x9c40

    if-le v4, v5, :cond_1

    .line 614
    const-string v4, "PointerIcon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerHoveringSpenCustomIcon size too big width: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "height:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const/16 v4, 0x64

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/2addr v4, v5

    int-to-float v3, v4

    .line 616
    .local v3, scale:F
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    invoke-static {v0, v4, v5, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 617
    .local v2, resizeBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 618
    move-object v0, v2

    .line 620
    .end local v2           #resizeBitmap:Landroid/graphics/Bitmap;
    .end local v3           #scale:F
    :cond_1
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/hardware/input/IInputManager;->registerHoveringSpenCustomIcon(Landroid/graphics/Bitmap;)I

    move-result v4

    goto/16 :goto_0
.end method

.method public static removeHoveringSpenCustomIcon(I)V
    .locals 3
    .parameter "customIconId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 630
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeHoveringSpenCustomIcon"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/hardware/input/IInputManager;->removeHoveringSpenCustomIcon(I)V

    .line 632
    return-void
.end method

.method public static setHoveringSpenCustomIcon(ILandroid/graphics/Bitmap;)I
    .locals 2
    .parameter "IconId"
    .parameter "bitmap"

    .prologue
    .line 811
    move v0, p0

    .line 814
    .local v0, iReaIconId:I
    if-gez v0, :cond_0

    .line 815
    sget v0, Landroid/view/PointerIcon;->mCustomIconId:I

    .line 817
    :cond_0
    if-gez v0, :cond_1

    .line 818
    const/4 v0, 0x0

    .line 821
    :cond_1
    sget-object v1, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 822
    const/4 v1, 0x5

    new-array v1, v1, [Landroid/graphics/Bitmap;

    sput-object v1, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    .line 825
    :cond_2
    sget-object v1, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    .line 826
    sget-object v1, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 828
    :cond_3
    sget-object v1, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    aput-object p1, v1, v0

    .line 829
    return v0
.end method

.method public static setHoveringSpenCustomIcon(Landroid/graphics/Bitmap;)I
    .locals 2
    .parameter "bitmap"

    .prologue
    const/4 v1, 0x5

    .line 792
    sget v0, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    if-lt v0, v1, :cond_2

    .line 793
    const/4 v0, 0x0

    sput v0, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    .line 797
    :goto_0
    sget-object v0, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 798
    new-array v0, v1, [Landroid/graphics/Bitmap;

    sput-object v0, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    .line 800
    :cond_0
    sget-object v0, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v1, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 801
    sget-object v0, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v1, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 803
    :cond_1
    sget-object v0, Landroid/view/PointerIcon;->mHoverBitmap:[Landroid/graphics/Bitmap;

    sget v1, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    aput-object p0, v0, v1

    .line 804
    sget v0, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    return v0

    .line 795
    :cond_2
    sget v0, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/view/PointerIcon;->mCustomIconCurrentId:I

    goto :goto_0
.end method

.method public static setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;)I
    .locals 1
    .parameter "iconType"
    .parameter "customIcon"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 689
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/PointerIcon;->setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;I)I

    move-result v0

    return v0
.end method

.method public static setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;I)I
    .locals 8
    .parameter "iconType"
    .parameter "customIcon"
    .parameter "flag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x0

    .line 698
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHoveringSpenIcon2 iconType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 705
    .local v3, bitmap:Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 707
    .local v6, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 708
    invoke-virtual {p1, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 710
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    const v1, 0x9c40

    if-le v0, v1, :cond_0

    .line 714
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerHoveringSpenCustomIcon size too big width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    invoke-static {v3, v5, v5, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 717
    .local v7, resizeBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 718
    move-object v3, v7

    .line 721
    .end local v7           #resizeBitmap:Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v0

    const/16 v1, 0x2711

    const/4 v4, 0x0

    move v2, p0

    move v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/hardware/input/IInputManager;->reloadPointerIconForBitmap(IILandroid/graphics/Bitmap;Landroid/graphics/Point;I)I

    move-result v0

    return v0
.end method

.method public static setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;)I
    .locals 1
    .parameter "iconType"
    .parameter "customIcon"
    .parameter "hotSpotPoint"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 733
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/view/PointerIcon;->setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;I)I

    move-result v0

    return v0
.end method

.method public static setHoveringSpenIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;I)I
    .locals 8
    .parameter "iconType"
    .parameter "customIcon"
    .parameter "hotSpotPoint"
    .parameter "flag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x0

    .line 742
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHoveringSpenIcon with hotSpotPoint iconType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 748
    .local v3, bitmap:Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 750
    .local v6, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 751
    invoke-virtual {p1, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 753
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    const v1, 0x9c40

    if-le v0, v1, :cond_0

    .line 757
    const-string v0, "PointerIcon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerHoveringSpenCustomIcon size too big width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    invoke-static {v3, v5, v5, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 760
    .local v7, resizeBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 761
    move-object v3, v7

    .line 764
    .end local v7           #resizeBitmap:Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v0

    const/16 v1, 0x2711

    move v2, p0

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/hardware/input/IInputManager;->reloadPointerIconForBitmap(IILandroid/graphics/Bitmap;Landroid/graphics/Point;I)I

    move-result v0

    return v0
.end method

.method public static setHoveringSpenIcon(II)V
    .locals 1
    .parameter "iconType"
    .parameter "customIconId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 641
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/PointerIcon;->setHoveringSpenIcon(III)V

    .line 642
    return-void
.end method

.method public static setHoveringSpenIcon(III)V
    .locals 6
    .parameter "iconType"
    .parameter "customIconId"
    .parameter "flag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 654
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v0

    const/16 v1, 0x2711

    const/4 v4, 0x0

    move v2, p0

    move v3, p1

    move v5, p2

    invoke-interface/range {v0 .. v5}, Landroid/hardware/input/IInputManager;->reloadPointerIcon(IIILandroid/graphics/Point;I)V

    .line 655
    return-void
.end method

.method public static setHoveringSpenIcon(IILandroid/graphics/Point;)V
    .locals 1
    .parameter "iconType"
    .parameter "customIconId"
    .parameter "hotSpotPoint"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 665
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/view/PointerIcon;->setHoveringSpenIcon(IILandroid/graphics/Point;I)V

    .line 666
    return-void
.end method

.method public static setHoveringSpenIcon(IILandroid/graphics/Point;I)V
    .locals 6
    .parameter "iconType"
    .parameter "customIconId"
    .parameter "hotSpotPoint"
    .parameter "flag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 678
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v0

    const/16 v1, 0x2711

    move v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/hardware/input/IInputManager;->reloadPointerIcon(IIILandroid/graphics/Point;I)V

    .line 679
    return-void
.end method

.method public static setPointerIcon(IILandroid/graphics/Point;)Z
    .locals 4
    .parameter "iconType"
    .parameter "customIconId"
    .parameter "hotSpotPoint"

    .prologue
    const/4 v0, 0x0

    .line 770
    sget v1, Landroid/view/PointerIcon;->mIconType:I

    if-eqz v1, :cond_0

    sget v1, Landroid/view/PointerIcon;->mIconType:I

    if-ne v1, p0, :cond_0

    .line 771
    const-string v1, "PointerIcon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setHoveringSpenCustomIcon IconType is same."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/view/PointerIcon;->mIconType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :goto_0
    return v0

    .line 774
    :cond_0
    sput p0, Landroid/view/PointerIcon;->mIconType:I

    .line 775
    sput p1, Landroid/view/PointerIcon;->mCustomIconId:I

    .line 776
    sput-object p2, Landroid/view/PointerIcon;->mCustomHotSpotPoint:Landroid/graphics/Point;

    .line 777
    const/16 v1, 0xa

    if-ne p0, v1, :cond_2

    .line 778
    sget-object v1, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    sget-object v1, Landroid/view/PointerIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering_sound"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 779
    sget-object v0, Landroid/view/PointerIcon;->mHoverEffect:Landroid/view/PointerIcon$HoverEffect;

    if-nez v0, :cond_1

    .line 780
    new-instance v0, Landroid/view/PointerIcon$HoverEffect;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/PointerIcon$HoverEffect;-><init>(Landroid/view/PointerIcon$1;)V

    sput-object v0, Landroid/view/PointerIcon;->mHoverEffect:Landroid/view/PointerIcon$HoverEffect;

    .line 782
    :cond_1
    sget-object v0, Landroid/view/PointerIcon;->mHoverEffect:Landroid/view/PointerIcon$HoverEffect;

    invoke-virtual {v0, p0}, Landroid/view/PointerIcon$HoverEffect;->playSound(I)V

    .line 783
    sget-object v0, Landroid/view/PointerIcon;->mHoverEffect:Landroid/view/PointerIcon$HoverEffect;

    invoke-virtual {v0, p0}, Landroid/view/PointerIcon$HoverEffect;->playVibrator(I)V

    .line 786
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private throwIfIconIsNotLoaded()V
    .locals 2

    .prologue
    .line 386
    invoke-virtual {p0}, Landroid/view/PointerIcon;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The icon is not loaded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 389
    :cond_0
    return-void
.end method

.method private static validateHotSpot(Landroid/graphics/Bitmap;FF)V
    .locals 2
    .parameter "bitmap"
    .parameter "hotSpotX"
    .parameter "hotSpotY"

    .prologue
    const/4 v1, 0x0

    .line 496
    cmpg-float v0, p1, v1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 497
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x hotspot lies outside of the bitmap area"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :cond_1
    cmpg-float v0, p2, v1

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_3

    .line 500
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "y hotspot lies outside of the bitmap area"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 502
    :cond_3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 418
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 436
    if-ne p0, p1, :cond_1

    .line 456
    :cond_0
    :goto_0
    return v1

    .line 440
    :cond_1
    if-eqz p1, :cond_2

    instance-of v3, p1, Landroid/view/PointerIcon;

    if-nez v3, :cond_3

    :cond_2
    move v1, v2

    .line 441
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 444
    check-cast v0, Landroid/view/PointerIcon;

    .line 445
    .local v0, otherIcon:Landroid/view/PointerIcon;
    iget v3, p0, Landroid/view/PointerIcon;->mStyle:I

    iget v4, v0, Landroid/view/PointerIcon;->mStyle:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    iget v4, v0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    if-eq v3, v4, :cond_5

    :cond_4
    move v1, v2

    .line 447
    goto :goto_0

    .line 450
    :cond_5
    iget v3, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v4, v0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    if-ne v3, v4, :cond_6

    iget v3, p0, Landroid/view/PointerIcon;->mHotSpotX:F

    iget v4, v0, Landroid/view/PointerIcon;->mHotSpotX:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_6

    iget v3, p0, Landroid/view/PointerIcon;->mHotSpotY:F

    iget v4, v0, Landroid/view/PointerIcon;->mHotSpotY:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    :cond_6
    move v1, v2

    .line 453
    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 353
    invoke-direct {p0}, Landroid/view/PointerIcon;->throwIfIconIsNotLoaded()V

    .line 354
    iget-object v0, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHotSpotX()F
    .locals 1

    .prologue
    .line 367
    invoke-direct {p0}, Landroid/view/PointerIcon;->throwIfIconIsNotLoaded()V

    .line 368
    iget v0, p0, Landroid/view/PointerIcon;->mHotSpotX:F

    return v0
.end method

.method public getHotSpotY()F
    .locals 1

    .prologue
    .line 381
    invoke-direct {p0}, Landroid/view/PointerIcon;->throwIfIconIsNotLoaded()V

    .line 382
    iget v0, p0, Landroid/view/PointerIcon;->mHotSpotY:F

    return v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 340
    iget v0, p0, Landroid/view/PointerIcon;->mStyle:I

    return v0
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/PointerIcon;->mStyle:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNullIcon()Z
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Landroid/view/PointerIcon;->mStyle:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load(Landroid/content/Context;)Landroid/view/PointerIcon;
    .locals 3
    .parameter "context"

    .prologue
    .line 300
    if-nez p1, :cond_0

    .line 301
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "context must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 304
    :cond_0
    iget v1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    :cond_1
    move-object v0, p0

    .line 311
    :goto_0
    return-object v0

    .line 308
    :cond_2
    new-instance v0, Landroid/view/PointerIcon;

    iget v1, p0, Landroid/view/PointerIcon;->mStyle:I

    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    .line 309
    .local v0, result:Landroid/view/PointerIcon;
    iget v1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    iput v1, v0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    .line 310
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    invoke-direct {v0, v1, v2}, Landroid/view/PointerIcon;->loadResource(Landroid/content/res/Resources;I)V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 422
    iget v0, p0, Landroid/view/PointerIcon;->mStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    iget v0, p0, Landroid/view/PointerIcon;->mStyle:I

    if-eqz v0, :cond_0

    .line 425
    iget v0, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    iget v0, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    if-nez v0, :cond_0

    .line 427
    iget-object v0, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 428
    iget v0, p0, Landroid/view/PointerIcon;->mHotSpotX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 429
    iget v0, p0, Landroid/view/PointerIcon;->mHotSpotY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 432
    :cond_0
    return-void
.end method
