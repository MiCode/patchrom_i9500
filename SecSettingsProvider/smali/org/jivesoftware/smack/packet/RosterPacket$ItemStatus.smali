.class public Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/packet/RosterPacket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemStatus"
.end annotation


# static fields
.field public static final a:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

.field public static final b:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;


# instance fields
.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    const-string v1, "subscribe"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;->a:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    new-instance v0, Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    const-string v1, "unsubscribe"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;->b:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;
    .locals 2

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "unsubscribe"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;->b:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    goto :goto_0

    :cond_2
    const-string v1, "subscribe"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;->a:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;->c:Ljava/lang/String;

    return-object v0
.end method
