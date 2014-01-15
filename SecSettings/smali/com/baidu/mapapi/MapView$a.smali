.class final enum Lcom/baidu/mapapi/MapView$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/MapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/mapapi/MapView$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/mapapi/MapView$a;

.field public static final enum b:Lcom/baidu/mapapi/MapView$a;

.field public static final enum c:Lcom/baidu/mapapi/MapView$a;

.field private static final synthetic d:[Lcom/baidu/mapapi/MapView$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/baidu/mapapi/MapView$a;

    const-string v1, "DRAW_RETICLE_NEVER"

    invoke-direct {v0, v1, v2}, Lcom/baidu/mapapi/MapView$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/MapView$a;->a:Lcom/baidu/mapapi/MapView$a;

    new-instance v0, Lcom/baidu/mapapi/MapView$a;

    const-string v1, "DRAW_RETICLE_OVER"

    invoke-direct {v0, v1, v3}, Lcom/baidu/mapapi/MapView$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/MapView$a;->b:Lcom/baidu/mapapi/MapView$a;

    new-instance v0, Lcom/baidu/mapapi/MapView$a;

    const-string v1, "DRAW_RETICLE_UNDER"

    invoke-direct {v0, v1, v4}, Lcom/baidu/mapapi/MapView$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/MapView$a;->c:Lcom/baidu/mapapi/MapView$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/baidu/mapapi/MapView$a;

    sget-object v1, Lcom/baidu/mapapi/MapView$a;->a:Lcom/baidu/mapapi/MapView$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/mapapi/MapView$a;->b:Lcom/baidu/mapapi/MapView$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/mapapi/MapView$a;->c:Lcom/baidu/mapapi/MapView$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/baidu/mapapi/MapView$a;->d:[Lcom/baidu/mapapi/MapView$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mapapi/MapView$a;
    .locals 1

    const-class v0, Lcom/baidu/mapapi/MapView$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/MapView$a;

    return-object v0
.end method

.method public static values()[Lcom/baidu/mapapi/MapView$a;
    .locals 1

    sget-object v0, Lcom/baidu/mapapi/MapView$a;->d:[Lcom/baidu/mapapi/MapView$a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mapapi/MapView$a;

    return-object v0
.end method
