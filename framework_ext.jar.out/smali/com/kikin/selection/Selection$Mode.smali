.class public final enum Lcom/kikin/selection/Selection$Mode;
.super Ljava/lang/Enum;
.source "Selection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kikin/selection/Selection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kikin/selection/Selection$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kikin/selection/Selection$Mode;

.field public static final enum HIGHLIGHT:Lcom/kikin/selection/Selection$Mode;

.field public static final enum SELECTION:Lcom/kikin/selection/Selection$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/kikin/selection/Selection$Mode;

    const-string v1, "HIGHLIGHT"

    invoke-direct {v0, v1, v2}, Lcom/kikin/selection/Selection$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/selection/Selection$Mode;->HIGHLIGHT:Lcom/kikin/selection/Selection$Mode;

    new-instance v0, Lcom/kikin/selection/Selection$Mode;

    const-string v1, "SELECTION"

    invoke-direct {v0, v1, v3}, Lcom/kikin/selection/Selection$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kikin/selection/Selection$Mode;->SELECTION:Lcom/kikin/selection/Selection$Mode;

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kikin/selection/Selection$Mode;

    sget-object v1, Lcom/kikin/selection/Selection$Mode;->HIGHLIGHT:Lcom/kikin/selection/Selection$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kikin/selection/Selection$Mode;->SELECTION:Lcom/kikin/selection/Selection$Mode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/kikin/selection/Selection$Mode;->$VALUES:[Lcom/kikin/selection/Selection$Mode;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getMode(Ljava/lang/String;)Lcom/kikin/selection/Selection$Mode;
    .locals 1
    .parameter "string"

    .prologue
    .line 32
    const-string v0, "SELECTION"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    sget-object v0, Lcom/kikin/selection/Selection$Mode;->SELECTION:Lcom/kikin/selection/Selection$Mode;

    .line 35
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/kikin/selection/Selection$Mode;->HIGHLIGHT:Lcom/kikin/selection/Selection$Mode;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kikin/selection/Selection$Mode;
    .locals 1
    .parameter "name"

    .prologue
    .line 28
    const-class v0, Lcom/kikin/selection/Selection$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kikin/selection/Selection$Mode;

    return-object v0
.end method

.method public static values()[Lcom/kikin/selection/Selection$Mode;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/kikin/selection/Selection$Mode;->$VALUES:[Lcom/kikin/selection/Selection$Mode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kikin/selection/Selection$Mode;

    return-object v0
.end method
