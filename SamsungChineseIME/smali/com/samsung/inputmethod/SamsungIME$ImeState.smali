.class public final enum Lcom/samsung/inputmethod/SamsungIME$ImeState;
.super Ljava/lang/Enum;
.source "SamsungIME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/SamsungIME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImeState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/inputmethod/SamsungIME$ImeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/inputmethod/SamsungIME$ImeState;

.field public static final enum STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

.field public static final enum STATE_BYPASS:Lcom/samsung/inputmethod/SamsungIME$ImeState;

.field public static final enum STATE_COMPOSING:Lcom/samsung/inputmethod/SamsungIME$ImeState;

.field public static final enum STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

.field public static final enum STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

.field public static final enum STATE_INSERT_SELECTION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

.field public static final enum STATE_PREDICT:Lcom/samsung/inputmethod/SamsungIME$ImeState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 163
    new-instance v0, Lcom/samsung/inputmethod/SamsungIME$ImeState;

    const-string v1, "STATE_BYPASS"

    invoke-direct {v0, v1, v3}, Lcom/samsung/inputmethod/SamsungIME$ImeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_BYPASS:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    .line 164
    new-instance v0, Lcom/samsung/inputmethod/SamsungIME$ImeState;

    const-string v1, "STATE_IDLE"

    invoke-direct {v0, v1, v4}, Lcom/samsung/inputmethod/SamsungIME$ImeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    new-instance v0, Lcom/samsung/inputmethod/SamsungIME$ImeState;

    const-string v1, "STATE_INPUT"

    invoke-direct {v0, v1, v5}, Lcom/samsung/inputmethod/SamsungIME$ImeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    .line 165
    new-instance v0, Lcom/samsung/inputmethod/SamsungIME$ImeState;

    const-string v1, "STATE_COMPOSING"

    invoke-direct {v0, v1, v6}, Lcom/samsung/inputmethod/SamsungIME$ImeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_COMPOSING:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    .line 166
    new-instance v0, Lcom/samsung/inputmethod/SamsungIME$ImeState;

    const-string v1, "STATE_INSERT_SELECTION"

    invoke-direct {v0, v1, v7}, Lcom/samsung/inputmethod/SamsungIME$ImeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INSERT_SELECTION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    .line 167
    new-instance v0, Lcom/samsung/inputmethod/SamsungIME$ImeState;

    const-string v1, "STATE_PREDICT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/SamsungIME$ImeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_PREDICT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    .line 168
    new-instance v0, Lcom/samsung/inputmethod/SamsungIME$ImeState;

    const-string v1, "STATE_APP_COMPLETION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/SamsungIME$ImeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    .line 162
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/samsung/inputmethod/SamsungIME$ImeState;

    sget-object v1, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_BYPASS:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_COMPOSING:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INSERT_SELECTION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_PREDICT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/inputmethod/SamsungIME$ImeState;->$VALUES:[Lcom/samsung/inputmethod/SamsungIME$ImeState;

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
    .line 162
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/inputmethod/SamsungIME$ImeState;
    .locals 1
    .parameter "name"

    .prologue
    .line 162
    const-class v0, Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/SamsungIME$ImeState;

    return-object v0
.end method

.method public static values()[Lcom/samsung/inputmethod/SamsungIME$ImeState;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/samsung/inputmethod/SamsungIME$ImeState;->$VALUES:[Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual {v0}, [Lcom/samsung/inputmethod/SamsungIME$ImeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/inputmethod/SamsungIME$ImeState;

    return-object v0
.end method
