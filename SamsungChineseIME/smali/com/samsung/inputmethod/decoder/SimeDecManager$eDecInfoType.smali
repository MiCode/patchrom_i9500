.class public final enum Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;
.super Ljava/lang/Enum;
.source "SimeDecManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/decoder/SimeDecManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "eDecInfoType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

.field public static final enum DEFDECINFO:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

.field public static final enum HWDECINFO:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

.field public static final enum T9AWINFO:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

.field public static final enum T9DECINFO:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

.field public static final enum T9KORDECINFO:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    new-instance v0, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    const-string v1, "DEFDECINFO"

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;->DEFDECINFO:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    .line 60
    new-instance v0, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    const-string v1, "T9DECINFO"

    invoke-direct {v0, v1, v3}, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;->T9DECINFO:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    .line 61
    new-instance v0, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    const-string v1, "HWDECINFO"

    invoke-direct {v0, v1, v4}, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;->HWDECINFO:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    .line 62
    new-instance v0, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    const-string v1, "T9AWINFO"

    invoke-direct {v0, v1, v5}, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;->T9AWINFO:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    .line 63
    new-instance v0, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    const-string v1, "T9KORDECINFO"

    invoke-direct {v0, v1, v6}, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;->T9KORDECINFO:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    .line 57
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    sget-object v1, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;->DEFDECINFO:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;->T9DECINFO:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;->HWDECINFO:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;->T9AWINFO:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;->T9KORDECINFO:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;->$VALUES:[Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

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
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;
    .locals 1
    .parameter "name"

    .prologue
    .line 57
    const-class v0, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;->$VALUES:[Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    invoke-virtual {v0}, [Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    return-object v0
.end method
