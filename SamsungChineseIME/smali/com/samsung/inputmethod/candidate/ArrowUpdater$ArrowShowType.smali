.class public final enum Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;
.super Ljava/lang/Enum;
.source "SimeCandHorContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/candidate/ArrowUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ArrowShowType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

.field public static final enum Down:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

.field public static final enum LeftAndRight:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

.field public static final enum LeftAndRightAndDown:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

.field public static final enum UP:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    const-string v1, "LeftAndRight"

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRight:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    .line 55
    new-instance v0, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    const-string v1, "UP"

    invoke-direct {v0, v1, v3}, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->UP:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    .line 56
    new-instance v0, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    const-string v1, "Down"

    invoke-direct {v0, v1, v4}, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->Down:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    .line 57
    new-instance v0, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    const-string v1, "LeftAndRightAndDown"

    invoke-direct {v0, v1, v5}, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRightAndDown:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    .line 53
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    sget-object v1, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRight:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->UP:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->Down:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRightAndDown:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->$VALUES:[Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;
    .locals 1
    .parameter "name"

    .prologue
    .line 53
    const-class v0, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->$VALUES:[Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v0}, [Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    return-object v0
.end method
