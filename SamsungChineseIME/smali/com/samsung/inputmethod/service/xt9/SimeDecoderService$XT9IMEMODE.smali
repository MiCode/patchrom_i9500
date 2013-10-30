.class public final enum Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;
.super Ljava/lang/Enum;
.source "SimeDecoderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "XT9IMEMODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;

.field public static final enum XT9CPIME_MODE_BPMF:Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;

.field public static final enum XT9CPIME_MODE_CANGJIE:Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;

.field public static final enum XT9CPIME_MODE_NUM:Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;

.field public static final enum XT9CPIME_MODE_PINYIN:Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;

.field public static final enum XT9CPIME_MODE_QUICK_CANGJIE:Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;

.field public static final enum XT9CPIME_MODE_STROKE:Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 75
    new-instance v0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;

    const-string v1, "XT9CPIME_MODE_BPMF"

    invoke-direct {v0, v1, v3}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;->XT9CPIME_MODE_BPMF:Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;

    .line 76
    new-instance v0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;

    const-string v1, "XT9CPIME_MODE_PINYIN"

    invoke-direct {v0, v1, v4}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;->XT9CPIME_MODE_PINYIN:Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;

    .line 77
    new-instance v0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;

    const-string v1, "XT9CPIME_MODE_STROKE"

    invoke-direct {v0, v1, v5}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;->XT9CPIME_MODE_STROKE:Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;

    .line 78
    new-instance v0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;

    const-string v1, "XT9CPIME_MODE_CANGJIE"

    invoke-direct {v0, v1, v6}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;->XT9CPIME_MODE_CANGJIE:Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;

    .line 79
    new-instance v0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;

    const-string v1, "XT9CPIME_MODE_QUICK_CANGJIE"

    invoke-direct {v0, v1, v7}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;->XT9CPIME_MODE_QUICK_CANGJIE:Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;

    .line 80
    new-instance v0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;

    const-string v1, "XT9CPIME_MODE_NUM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;->XT9CPIME_MODE_NUM:Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;

    .line 74
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;

    sget-object v1, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;->XT9CPIME_MODE_BPMF:Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;->XT9CPIME_MODE_PINYIN:Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;->XT9CPIME_MODE_STROKE:Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;->XT9CPIME_MODE_CANGJIE:Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;->XT9CPIME_MODE_QUICK_CANGJIE:Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;->XT9CPIME_MODE_NUM:Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;->$VALUES:[Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;

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
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;
    .locals 1
    .parameter "name"

    .prologue
    .line 74
    const-class v0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;

    return-object v0
.end method

.method public static values()[Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;->$VALUES:[Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;

    invoke-virtual {v0}, [Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$XT9IMEMODE;

    return-object v0
.end method
