.class public final enum Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/packet/RosterPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

.field public static final enum b:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

.field public static final enum c:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

.field public static final enum d:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

.field public static final enum e:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

.field private static final synthetic f:[Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    const-string v1, "none"

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->a:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    new-instance v0, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    const-string v1, "to"

    invoke-direct {v0, v1, v3}, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->b:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    new-instance v0, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    const-string v1, "from"

    invoke-direct {v0, v1, v4}, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->c:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    new-instance v0, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    const-string v1, "both"

    invoke-direct {v0, v1, v5}, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->d:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    new-instance v0, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    const-string v1, "remove"

    invoke-direct {v0, v1, v6}, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->e:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    sget-object v1, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->a:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->b:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->c:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->d:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->e:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    aput-object v1, v0, v6

    sput-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->f:[Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

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

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;
    .locals 1

    const-class v0, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;
    .locals 1

    sget-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->f:[Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    invoke-virtual {v0}, [Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    return-object v0
.end method
