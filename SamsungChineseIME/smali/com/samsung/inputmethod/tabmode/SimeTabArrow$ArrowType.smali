.class public final enum Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;
.super Ljava/lang/Enum;
.source "SimeTabArrow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/tabmode/SimeTabArrow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ArrowType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;

.field public static final enum Left:Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;

.field public static final enum Right:Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;

    const-string v1, "Left"

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;->Left:Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;

    .line 25
    new-instance v0, Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;

    const-string v1, "Right"

    invoke-direct {v0, v1, v3}, Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;->Right:Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;

    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;

    sget-object v1, Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;->Left:Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;->Right:Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;->$VALUES:[Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;
    .locals 1
    .parameter "name"

    .prologue
    .line 23
    const-class v0, Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;->$VALUES:[Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;

    invoke-virtual {v0}, [Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;

    return-object v0
.end method
