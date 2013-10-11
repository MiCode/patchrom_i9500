.class public final enum Lcom/kikin/selection/SelectionType;
.super Ljava/lang/Enum;
.source "SelectionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kikin/selection/SelectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kikin/selection/SelectionType;

.field public static final enum ADDRESS:Lcom/kikin/selection/SelectionType;

.field public static final enum CURRENCY:Lcom/kikin/selection/SelectionType;

.field public static final enum DATE:Lcom/kikin/selection/SelectionType;

.field public static final enum DATEANDTIME:Lcom/kikin/selection/SelectionType;

.field public static final enum EMAIL:Lcom/kikin/selection/SelectionType;

.field public static final enum NAME:Lcom/kikin/selection/SelectionType;

.field public static final enum NOUNS:Lcom/kikin/selection/SelectionType;

.field public static final enum PHONE:Lcom/kikin/selection/SelectionType;

.field public static final enum STATE:Lcom/kikin/selection/SelectionType;

.field public static final enum TEXT:Lcom/kikin/selection/SelectionType;

.field public static final enum TIME:Lcom/kikin/selection/SelectionType;

.field public static final enum TWITTER:Lcom/kikin/selection/SelectionType;

.field public static final enum UNIT:Lcom/kikin/selection/SelectionType;

.field public static final enum UNKNOWN:Lcom/kikin/selection/SelectionType;

.field public static final enum URL:Lcom/kikin/selection/SelectionType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 13
    new-instance v0, Lcom/kikin/selection/SelectionType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/kikin/selection/SelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/selection/SelectionType;->UNKNOWN:Lcom/kikin/selection/SelectionType;

    new-instance v0, Lcom/kikin/selection/SelectionType;

    const-string v1, "ADDRESS"

    invoke-direct {v0, v1, v4}, Lcom/kikin/selection/SelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/selection/SelectionType;->ADDRESS:Lcom/kikin/selection/SelectionType;

    new-instance v0, Lcom/kikin/selection/SelectionType;

    const-string v1, "PHONE"

    invoke-direct {v0, v1, v5}, Lcom/kikin/selection/SelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/selection/SelectionType;->PHONE:Lcom/kikin/selection/SelectionType;

    new-instance v0, Lcom/kikin/selection/SelectionType;

    const-string v1, "EMAIL"

    invoke-direct {v0, v1, v6}, Lcom/kikin/selection/SelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/selection/SelectionType;->EMAIL:Lcom/kikin/selection/SelectionType;

    new-instance v0, Lcom/kikin/selection/SelectionType;

    const-string v1, "UNIT"

    invoke-direct {v0, v1, v7}, Lcom/kikin/selection/SelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/selection/SelectionType;->UNIT:Lcom/kikin/selection/SelectionType;

    new-instance v0, Lcom/kikin/selection/SelectionType;

    const-string v1, "CURRENCY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/kikin/selection/SelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/selection/SelectionType;->CURRENCY:Lcom/kikin/selection/SelectionType;

    new-instance v0, Lcom/kikin/selection/SelectionType;

    const-string v1, "DATE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/kikin/selection/SelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/selection/SelectionType;->DATE:Lcom/kikin/selection/SelectionType;

    new-instance v0, Lcom/kikin/selection/SelectionType;

    const-string v1, "TIME"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/kikin/selection/SelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/selection/SelectionType;->TIME:Lcom/kikin/selection/SelectionType;

    new-instance v0, Lcom/kikin/selection/SelectionType;

    const-string v1, "DATEANDTIME"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/kikin/selection/SelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/selection/SelectionType;->DATEANDTIME:Lcom/kikin/selection/SelectionType;

    new-instance v0, Lcom/kikin/selection/SelectionType;

    const-string v1, "STATE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/kikin/selection/SelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/selection/SelectionType;->STATE:Lcom/kikin/selection/SelectionType;

    new-instance v0, Lcom/kikin/selection/SelectionType;

    const-string v1, "TWITTER"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/kikin/selection/SelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/selection/SelectionType;->TWITTER:Lcom/kikin/selection/SelectionType;

    new-instance v0, Lcom/kikin/selection/SelectionType;

    const-string v1, "URL"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/kikin/selection/SelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/selection/SelectionType;->URL:Lcom/kikin/selection/SelectionType;

    .line 14
    new-instance v0, Lcom/kikin/selection/SelectionType;

    const-string v1, "NOUNS"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/kikin/selection/SelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/selection/SelectionType;->NOUNS:Lcom/kikin/selection/SelectionType;

    new-instance v0, Lcom/kikin/selection/SelectionType;

    const-string v1, "TEXT"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/kikin/selection/SelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/selection/SelectionType;->TEXT:Lcom/kikin/selection/SelectionType;

    new-instance v0, Lcom/kikin/selection/SelectionType;

    const-string v1, "NAME"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/kikin/selection/SelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/selection/SelectionType;->NAME:Lcom/kikin/selection/SelectionType;

    .line 12
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/kikin/selection/SelectionType;

    sget-object v1, Lcom/kikin/selection/SelectionType;->UNKNOWN:Lcom/kikin/selection/SelectionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kikin/selection/SelectionType;->ADDRESS:Lcom/kikin/selection/SelectionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kikin/selection/SelectionType;->PHONE:Lcom/kikin/selection/SelectionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kikin/selection/SelectionType;->EMAIL:Lcom/kikin/selection/SelectionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kikin/selection/SelectionType;->UNIT:Lcom/kikin/selection/SelectionType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/kikin/selection/SelectionType;->CURRENCY:Lcom/kikin/selection/SelectionType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/kikin/selection/SelectionType;->DATE:Lcom/kikin/selection/SelectionType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/kikin/selection/SelectionType;->TIME:Lcom/kikin/selection/SelectionType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/kikin/selection/SelectionType;->DATEANDTIME:Lcom/kikin/selection/SelectionType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/kikin/selection/SelectionType;->STATE:Lcom/kikin/selection/SelectionType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/kikin/selection/SelectionType;->TWITTER:Lcom/kikin/selection/SelectionType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/kikin/selection/SelectionType;->URL:Lcom/kikin/selection/SelectionType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/kikin/selection/SelectionType;->NOUNS:Lcom/kikin/selection/SelectionType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/kikin/selection/SelectionType;->TEXT:Lcom/kikin/selection/SelectionType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/kikin/selection/SelectionType;->NAME:Lcom/kikin/selection/SelectionType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kikin/selection/SelectionType;->$VALUES:[Lcom/kikin/selection/SelectionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getSelectionType(Ljava/lang/String;)Lcom/kikin/selection/SelectionType;
    .locals 1
    .parameter "string"

    .prologue
    .line 17
    if-nez p0, :cond_0

    .line 18
    sget-object v0, Lcom/kikin/selection/SelectionType;->UNKNOWN:Lcom/kikin/selection/SelectionType;

    .line 48
    :goto_0
    return-object v0

    .line 19
    :cond_0
    const-string v0, "text"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "a_beginning"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "a_bridge"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    :cond_1
    sget-object v0, Lcom/kikin/selection/SelectionType;->TEXT:Lcom/kikin/selection/SelectionType;

    goto :goto_0

    .line 22
    :cond_2
    const-string v0, "nouns"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23
    sget-object v0, Lcom/kikin/selection/SelectionType;->NOUNS:Lcom/kikin/selection/SelectionType;

    goto :goto_0

    .line 24
    :cond_3
    const-string v0, "url"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 25
    sget-object v0, Lcom/kikin/selection/SelectionType;->URL:Lcom/kikin/selection/SelectionType;

    goto :goto_0

    .line 26
    :cond_4
    const-string v0, "address"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 27
    sget-object v0, Lcom/kikin/selection/SelectionType;->ADDRESS:Lcom/kikin/selection/SelectionType;

    goto :goto_0

    .line 28
    :cond_5
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 29
    sget-object v0, Lcom/kikin/selection/SelectionType;->PHONE:Lcom/kikin/selection/SelectionType;

    goto :goto_0

    .line 30
    :cond_6
    const-string v0, "date"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 31
    sget-object v0, Lcom/kikin/selection/SelectionType;->DATE:Lcom/kikin/selection/SelectionType;

    goto :goto_0

    .line 32
    :cond_7
    const-string v0, "time"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 33
    sget-object v0, Lcom/kikin/selection/SelectionType;->TIME:Lcom/kikin/selection/SelectionType;

    goto :goto_0

    .line 34
    :cond_8
    const-string v0, "state"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 35
    sget-object v0, Lcom/kikin/selection/SelectionType;->STATE:Lcom/kikin/selection/SelectionType;

    goto :goto_0

    .line 36
    :cond_9
    const-string v0, "email"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 37
    sget-object v0, Lcom/kikin/selection/SelectionType;->EMAIL:Lcom/kikin/selection/SelectionType;

    goto :goto_0

    .line 38
    :cond_a
    const-string v0, "currency"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 39
    sget-object v0, Lcom/kikin/selection/SelectionType;->CURRENCY:Lcom/kikin/selection/SelectionType;

    goto :goto_0

    .line 40
    :cond_b
    const-string v0, "twitter"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 41
    sget-object v0, Lcom/kikin/selection/SelectionType;->TWITTER:Lcom/kikin/selection/SelectionType;

    goto/16 :goto_0

    .line 42
    :cond_c
    const-string v0, "a_unit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 43
    sget-object v0, Lcom/kikin/selection/SelectionType;->UNIT:Lcom/kikin/selection/SelectionType;

    goto/16 :goto_0

    .line 44
    :cond_d
    const-string v0, "name"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 45
    sget-object v0, Lcom/kikin/selection/SelectionType;->NAME:Lcom/kikin/selection/SelectionType;

    goto/16 :goto_0

    .line 48
    :cond_e
    sget-object v0, Lcom/kikin/selection/SelectionType;->UNKNOWN:Lcom/kikin/selection/SelectionType;

    goto/16 :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kikin/selection/SelectionType;
    .locals 1
    .parameter "name"

    .prologue
    .line 12
    const-class v0, Lcom/kikin/selection/SelectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kikin/selection/SelectionType;

    return-object v0
.end method

.method public static values()[Lcom/kikin/selection/SelectionType;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/kikin/selection/SelectionType;->$VALUES:[Lcom/kikin/selection/SelectionType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kikin/selection/SelectionType;

    return-object v0
.end method
