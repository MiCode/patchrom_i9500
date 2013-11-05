.class public final enum Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/ConnectionConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SecurityMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

.field public static final enum b:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

.field public static final enum c:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

.field private static final synthetic d:[Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    const-string v1, "required"

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;->a:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    new-instance v0, Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    const-string v1, "enabled"

    invoke-direct {v0, v1, v3}, Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;->b:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    new-instance v0, Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    const-string v1, "disabled"

    invoke-direct {v0, v1, v4}, Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;->c:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    sget-object v1, Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;->a:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;->b:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;->c:Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    aput-object v1, v0, v4

    sput-object v0, Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;->d:[Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

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

.method public static valueOf(Ljava/lang/String;)Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;
    .locals 1

    const-class v0, Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    return-object v0
.end method

.method public static values()[Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;
    .locals 1

    sget-object v0, Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;->d:[Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    invoke-virtual {v0}, [Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jivesoftware/smack/ConnectionConfiguration$SecurityMode;

    return-object v0
.end method
