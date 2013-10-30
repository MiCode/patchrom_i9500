.class public final enum Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;
.super Ljava/lang/Enum;
.source "SimeEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/comm/SimeEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LANGUAGE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

.field public static final enum CHN:Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

.field public static final enum CHN_HK:Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

.field public static final enum CHN_TW:Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

.field public static final enum ENG:Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

.field public static final enum KOR:Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 108
    new-instance v0, Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

    const-string v1, "CHN"

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;->CHN:Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

    new-instance v0, Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

    const-string v1, "ENG"

    invoke-direct {v0, v1, v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;->ENG:Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

    new-instance v0, Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

    const-string v1, "KOR"

    invoke-direct {v0, v1, v4}, Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;->KOR:Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

    new-instance v0, Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

    const-string v1, "CHN_HK"

    invoke-direct {v0, v1, v5}, Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;->CHN_HK:Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

    new-instance v0, Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

    const-string v1, "CHN_TW"

    invoke-direct {v0, v1, v6}, Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;->CHN_TW:Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

    .line 107
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

    sget-object v1, Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;->CHN:Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;->ENG:Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;->KOR:Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;->CHN_HK:Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;->CHN_TW:Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;->$VALUES:[Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

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
    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;
    .locals 1
    .parameter "name"

    .prologue
    .line 107
    const-class v0, Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

    return-object v0
.end method

.method public static values()[Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;->$VALUES:[Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

    invoke-virtual {v0}, [Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/inputmethod/comm/SimeEnvironment$LANGUAGE;

    return-object v0
.end method
