.class public final enum Lcom/nuance/swype/connect/util/ScreenType;
.super Ljava/lang/Enum;
.source "ScreenType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/swype/connect/util/ScreenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/swype/connect/util/ScreenType;

.field public static final enum HD720:Lcom/nuance/swype/connect/util/ScreenType;

.field public static final enum HVGA:Lcom/nuance/swype/connect/util/ScreenType;

.field public static final enum QVGA:Lcom/nuance/swype/connect/util/ScreenType;

.field public static final enum SVGA:Lcom/nuance/swype/connect/util/ScreenType;

.field public static final enum UNKNOWN:Lcom/nuance/swype/connect/util/ScreenType;

.field public static final enum VGA:Lcom/nuance/swype/connect/util/ScreenType;

.field public static final enum WQVGA:Lcom/nuance/swype/connect/util/ScreenType;

.field public static final enum WSVGA:Lcom/nuance/swype/connect/util/ScreenType;

.field public static final enum WVGA:Lcom/nuance/swype/connect/util/ScreenType;

.field public static final enum WVGA854:Lcom/nuance/swype/connect/util/ScreenType;

.field public static final enum WXGA:Lcom/nuance/swype/connect/util/ScreenType;

.field public static final enum WXGA53:Lcom/nuance/swype/connect/util/ScreenType;

.field public static final enum XGA:Lcom/nuance/swype/connect/util/ScreenType;

.field public static final enum nHD:Lcom/nuance/swype/connect/util/ScreenType;

.field public static final enum qHD:Lcom/nuance/swype/connect/util/ScreenType;


# instance fields
.field private height:I

.field private name:Ljava/lang/String;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 12
    new-instance v0, Lcom/nuance/swype/connect/util/ScreenType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "UNKNOWN"

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/connect/util/ScreenType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/connect/util/ScreenType;->UNKNOWN:Lcom/nuance/swype/connect/util/ScreenType;

    .line 13
    new-instance v0, Lcom/nuance/swype/connect/util/ScreenType;

    const-string v1, "HVGA"

    const/4 v2, 0x1

    const/16 v3, 0x140

    const/16 v4, 0x1e0

    const-string v5, "HVGA"

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/connect/util/ScreenType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/connect/util/ScreenType;->HVGA:Lcom/nuance/swype/connect/util/ScreenType;

    .line 14
    new-instance v0, Lcom/nuance/swype/connect/util/ScreenType;

    const-string v1, "QVGA"

    const/4 v2, 0x2

    const/16 v3, 0xf0

    const/16 v4, 0x140

    const-string v5, "QVGA"

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/connect/util/ScreenType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/connect/util/ScreenType;->QVGA:Lcom/nuance/swype/connect/util/ScreenType;

    .line 15
    new-instance v0, Lcom/nuance/swype/connect/util/ScreenType;

    const-string v1, "WQVGA"

    const/4 v2, 0x3

    const/16 v3, 0xf0

    const/16 v4, 0x190

    const-string v5, "WQVGA"

    const-string v6, "QVGA"

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/connect/util/ScreenType;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/connect/util/ScreenType;->WQVGA:Lcom/nuance/swype/connect/util/ScreenType;

    .line 16
    new-instance v0, Lcom/nuance/swype/connect/util/ScreenType;

    const-string v1, "VGA"

    const/4 v2, 0x4

    const/16 v3, 0x1e0

    const/16 v4, 0x280

    const-string v5, "VGA"

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/connect/util/ScreenType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/connect/util/ScreenType;->VGA:Lcom/nuance/swype/connect/util/ScreenType;

    .line 17
    new-instance v0, Lcom/nuance/swype/connect/util/ScreenType;

    const-string v1, "WVGA"

    const/4 v2, 0x5

    const/16 v3, 0x1e0

    const/16 v4, 0x320

    const-string v5, "WVGA"

    const-string v6, "VGA"

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/connect/util/ScreenType;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/connect/util/ScreenType;->WVGA:Lcom/nuance/swype/connect/util/ScreenType;

    .line 18
    new-instance v0, Lcom/nuance/swype/connect/util/ScreenType;

    const-string v1, "WVGA854"

    const/4 v2, 0x6

    const/16 v3, 0x1e0

    const/16 v4, 0x356

    const-string v5, "WVGA854"

    const-string v6, "VGA"

    invoke-direct/range {v0 .. v6}, Lcom/nuance/swype/connect/util/ScreenType;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/connect/util/ScreenType;->WVGA854:Lcom/nuance/swype/connect/util/ScreenType;

    .line 19
    new-instance v0, Lcom/nuance/swype/connect/util/ScreenType;

    const-string v1, "WSVGA"

    const/4 v2, 0x7

    const/16 v3, 0x258

    const/16 v4, 0x400

    const-string v5, "WSVGA"

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/connect/util/ScreenType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/connect/util/ScreenType;->WSVGA:Lcom/nuance/swype/connect/util/ScreenType;

    .line 20
    new-instance v0, Lcom/nuance/swype/connect/util/ScreenType;

    const-string v1, "SVGA"

    const/16 v2, 0x8

    const/16 v3, 0x258

    const/16 v4, 0x320

    const-string v5, "SVGA"

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/connect/util/ScreenType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/connect/util/ScreenType;->SVGA:Lcom/nuance/swype/connect/util/ScreenType;

    .line 21
    new-instance v0, Lcom/nuance/swype/connect/util/ScreenType;

    const-string v1, "nHD"

    const/16 v2, 0x9

    const/16 v3, 0x168

    const/16 v4, 0x280

    const-string v5, "nHD"

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/connect/util/ScreenType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/connect/util/ScreenType;->nHD:Lcom/nuance/swype/connect/util/ScreenType;

    .line 22
    new-instance v0, Lcom/nuance/swype/connect/util/ScreenType;

    const-string v1, "qHD"

    const/16 v2, 0xa

    const/16 v3, 0x21c

    const/16 v4, 0x3c0

    const-string v5, "qHD"

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/connect/util/ScreenType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/connect/util/ScreenType;->qHD:Lcom/nuance/swype/connect/util/ScreenType;

    .line 23
    new-instance v0, Lcom/nuance/swype/connect/util/ScreenType;

    const-string v1, "WXGA"

    const/16 v2, 0xb

    const/16 v3, 0x320

    const/16 v4, 0x500

    const-string v5, "WXGA"

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/connect/util/ScreenType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/connect/util/ScreenType;->WXGA:Lcom/nuance/swype/connect/util/ScreenType;

    .line 24
    new-instance v0, Lcom/nuance/swype/connect/util/ScreenType;

    const-string v1, "WXGA53"

    const/16 v2, 0xc

    const/16 v3, 0x300

    const/16 v4, 0x500

    const-string v5, "WXGA53"

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/connect/util/ScreenType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/connect/util/ScreenType;->WXGA53:Lcom/nuance/swype/connect/util/ScreenType;

    .line 25
    new-instance v0, Lcom/nuance/swype/connect/util/ScreenType;

    const-string v1, "XGA"

    const/16 v2, 0xd

    const/16 v3, 0x300

    const/16 v4, 0x400

    const-string v5, "XGA"

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/connect/util/ScreenType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/connect/util/ScreenType;->XGA:Lcom/nuance/swype/connect/util/ScreenType;

    .line 26
    new-instance v0, Lcom/nuance/swype/connect/util/ScreenType;

    const-string v1, "HD720"

    const/16 v2, 0xe

    const/16 v3, 0x2d0

    const/16 v4, 0x500

    const-string v5, "HD720"

    invoke-direct/range {v0 .. v5}, Lcom/nuance/swype/connect/util/ScreenType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/nuance/swype/connect/util/ScreenType;->HD720:Lcom/nuance/swype/connect/util/ScreenType;

    .line 10
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/nuance/swype/connect/util/ScreenType;

    const/4 v1, 0x0

    sget-object v2, Lcom/nuance/swype/connect/util/ScreenType;->UNKNOWN:Lcom/nuance/swype/connect/util/ScreenType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/nuance/swype/connect/util/ScreenType;->HVGA:Lcom/nuance/swype/connect/util/ScreenType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/nuance/swype/connect/util/ScreenType;->QVGA:Lcom/nuance/swype/connect/util/ScreenType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/nuance/swype/connect/util/ScreenType;->WQVGA:Lcom/nuance/swype/connect/util/ScreenType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/nuance/swype/connect/util/ScreenType;->VGA:Lcom/nuance/swype/connect/util/ScreenType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/nuance/swype/connect/util/ScreenType;->WVGA:Lcom/nuance/swype/connect/util/ScreenType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nuance/swype/connect/util/ScreenType;->WVGA854:Lcom/nuance/swype/connect/util/ScreenType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nuance/swype/connect/util/ScreenType;->WSVGA:Lcom/nuance/swype/connect/util/ScreenType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/nuance/swype/connect/util/ScreenType;->SVGA:Lcom/nuance/swype/connect/util/ScreenType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/nuance/swype/connect/util/ScreenType;->nHD:Lcom/nuance/swype/connect/util/ScreenType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/nuance/swype/connect/util/ScreenType;->qHD:Lcom/nuance/swype/connect/util/ScreenType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/nuance/swype/connect/util/ScreenType;->WXGA:Lcom/nuance/swype/connect/util/ScreenType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/nuance/swype/connect/util/ScreenType;->WXGA53:Lcom/nuance/swype/connect/util/ScreenType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/nuance/swype/connect/util/ScreenType;->XGA:Lcom/nuance/swype/connect/util/ScreenType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/nuance/swype/connect/util/ScreenType;->HD720:Lcom/nuance/swype/connect/util/ScreenType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nuance/swype/connect/util/ScreenType;->$VALUES:[Lcom/nuance/swype/connect/util/ScreenType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "width"
    .parameter "height"
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput p3, p0, Lcom/nuance/swype/connect/util/ScreenType;->width:I

    .line 39
    iput p4, p0, Lcom/nuance/swype/connect/util/ScreenType;->height:I

    .line 40
    iput-object p5, p0, Lcom/nuance/swype/connect/util/ScreenType;->name:Ljava/lang/String;

    .line 41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "width"
    .parameter "height"
    .parameter "name"
    .parameter "portraitBitmapSuffix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct/range {p0 .. p5}, Lcom/nuance/swype/connect/util/ScreenType;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    .line 45
    return-void
.end method

.method public static fromDimension(II)Lcom/nuance/swype/connect/util/ScreenType;
    .locals 7
    .parameter "width"
    .parameter "height"

    .prologue
    .line 60
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 61
    .local v5, w:I
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 63
    .local v1, h:I
    invoke-static {}, Lcom/nuance/swype/connect/util/ScreenType;->values()[Lcom/nuance/swype/connect/util/ScreenType;

    move-result-object v0

    .local v0, arr$:[Lcom/nuance/swype/connect/util/ScreenType;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 64
    .local v4, s:Lcom/nuance/swype/connect/util/ScreenType;
    iget v6, v4, Lcom/nuance/swype/connect/util/ScreenType;->width:I

    if-ne v6, v5, :cond_0

    iget v6, v4, Lcom/nuance/swype/connect/util/ScreenType;->height:I

    if-ne v6, v1, :cond_0

    .line 68
    .end local v4           #s:Lcom/nuance/swype/connect/util/ScreenType;
    :goto_1
    return-object v4

    .line 63
    .restart local v4       #s:Lcom/nuance/swype/connect/util/ScreenType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    .end local v4           #s:Lcom/nuance/swype/connect/util/ScreenType;
    :cond_1
    sget-object v4, Lcom/nuance/swype/connect/util/ScreenType;->UNKNOWN:Lcom/nuance/swype/connect/util/ScreenType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/swype/connect/util/ScreenType;
    .locals 1
    .parameter "name"

    .prologue
    .line 10
    const-class v0, Lcom/nuance/swype/connect/util/ScreenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/util/ScreenType;

    return-object v0
.end method

.method public static values()[Lcom/nuance/swype/connect/util/ScreenType;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/nuance/swype/connect/util/ScreenType;->$VALUES:[Lcom/nuance/swype/connect/util/ScreenType;

    invoke-virtual {v0}, [Lcom/nuance/swype/connect/util/ScreenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/swype/connect/util/ScreenType;

    return-object v0
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/nuance/swype/connect/util/ScreenType;->height:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/nuance/swype/connect/util/ScreenType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/nuance/swype/connect/util/ScreenType;->width:I

    return v0
.end method
