.class final enum Lcom/baidu/mapapi/ItemizedOverlay$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/ItemizedOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/mapapi/ItemizedOverlay$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/mapapi/ItemizedOverlay$b;

.field public static final enum b:Lcom/baidu/mapapi/ItemizedOverlay$b;

.field public static final enum c:Lcom/baidu/mapapi/ItemizedOverlay$b;

.field private static final synthetic d:[Lcom/baidu/mapapi/ItemizedOverlay$b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/baidu/mapapi/ItemizedOverlay$b;

    const-string v1, "Normal"

    const-string v2, "Normal"

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/baidu/mapapi/ItemizedOverlay$b;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/ItemizedOverlay$b;->a:Lcom/baidu/mapapi/ItemizedOverlay$b;

    new-instance v0, Lcom/baidu/mapapi/ItemizedOverlay$b;

    const-string v1, "Center"

    const-string v2, "Center"

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/baidu/mapapi/ItemizedOverlay$b;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/ItemizedOverlay$b;->b:Lcom/baidu/mapapi/ItemizedOverlay$b;

    new-instance v0, Lcom/baidu/mapapi/ItemizedOverlay$b;

    const-string v1, "CenterBottom"

    const-string v2, "CenterBottom"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/baidu/mapapi/ItemizedOverlay$b;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/baidu/mapapi/ItemizedOverlay$b;->c:Lcom/baidu/mapapi/ItemizedOverlay$b;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/baidu/mapapi/ItemizedOverlay$b;

    sget-object v1, Lcom/baidu/mapapi/ItemizedOverlay$b;->a:Lcom/baidu/mapapi/ItemizedOverlay$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/mapapi/ItemizedOverlay$b;->b:Lcom/baidu/mapapi/ItemizedOverlay$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/mapapi/ItemizedOverlay$b;->c:Lcom/baidu/mapapi/ItemizedOverlay$b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/baidu/mapapi/ItemizedOverlay$b;->d:[Lcom/baidu/mapapi/ItemizedOverlay$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mapapi/ItemizedOverlay$b;
    .locals 1

    const-class v0, Lcom/baidu/mapapi/ItemizedOverlay$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/mapapi/ItemizedOverlay$b;

    return-object v0
.end method

.method public static values()[Lcom/baidu/mapapi/ItemizedOverlay$b;
    .locals 1

    sget-object v0, Lcom/baidu/mapapi/ItemizedOverlay$b;->d:[Lcom/baidu/mapapi/ItemizedOverlay$b;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mapapi/ItemizedOverlay$b;

    return-object v0
.end method
