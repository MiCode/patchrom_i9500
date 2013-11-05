.class public final enum Lorg/jivesoftware/smack/packet/Presence$Mode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/packet/Presence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jivesoftware/smack/packet/Presence$Mode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/jivesoftware/smack/packet/Presence$Mode;

.field public static final enum b:Lorg/jivesoftware/smack/packet/Presence$Mode;

.field public static final enum c:Lorg/jivesoftware/smack/packet/Presence$Mode;

.field public static final enum d:Lorg/jivesoftware/smack/packet/Presence$Mode;

.field public static final enum e:Lorg/jivesoftware/smack/packet/Presence$Mode;

.field private static final synthetic f:[Lorg/jivesoftware/smack/packet/Presence$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/jivesoftware/smack/packet/Presence$Mode;

    const-string v1, "chat"

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/packet/Presence$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/packet/Presence$Mode;->a:Lorg/jivesoftware/smack/packet/Presence$Mode;

    new-instance v0, Lorg/jivesoftware/smack/packet/Presence$Mode;

    const-string v1, "available"

    invoke-direct {v0, v1, v3}, Lorg/jivesoftware/smack/packet/Presence$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/packet/Presence$Mode;->b:Lorg/jivesoftware/smack/packet/Presence$Mode;

    new-instance v0, Lorg/jivesoftware/smack/packet/Presence$Mode;

    const-string v1, "away"

    invoke-direct {v0, v1, v4}, Lorg/jivesoftware/smack/packet/Presence$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/packet/Presence$Mode;->c:Lorg/jivesoftware/smack/packet/Presence$Mode;

    new-instance v0, Lorg/jivesoftware/smack/packet/Presence$Mode;

    const-string v1, "xa"

    invoke-direct {v0, v1, v5}, Lorg/jivesoftware/smack/packet/Presence$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/packet/Presence$Mode;->d:Lorg/jivesoftware/smack/packet/Presence$Mode;

    new-instance v0, Lorg/jivesoftware/smack/packet/Presence$Mode;

    const-string v1, "dnd"

    invoke-direct {v0, v1, v6}, Lorg/jivesoftware/smack/packet/Presence$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/packet/Presence$Mode;->e:Lorg/jivesoftware/smack/packet/Presence$Mode;

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/jivesoftware/smack/packet/Presence$Mode;

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Mode;->a:Lorg/jivesoftware/smack/packet/Presence$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Mode;->b:Lorg/jivesoftware/smack/packet/Presence$Mode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Mode;->c:Lorg/jivesoftware/smack/packet/Presence$Mode;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Mode;->d:Lorg/jivesoftware/smack/packet/Presence$Mode;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Mode;->e:Lorg/jivesoftware/smack/packet/Presence$Mode;

    aput-object v1, v0, v6

    sput-object v0, Lorg/jivesoftware/smack/packet/Presence$Mode;->f:[Lorg/jivesoftware/smack/packet/Presence$Mode;

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

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/Presence$Mode;
    .locals 1

    const-class v0, Lorg/jivesoftware/smack/packet/Presence$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/Presence$Mode;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smack/packet/Presence$Mode;
    .locals 1

    sget-object v0, Lorg/jivesoftware/smack/packet/Presence$Mode;->f:[Lorg/jivesoftware/smack/packet/Presence$Mode;

    invoke-virtual {v0}, [Lorg/jivesoftware/smack/packet/Presence$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smack/packet/Presence$Mode;

    return-object v0
.end method
