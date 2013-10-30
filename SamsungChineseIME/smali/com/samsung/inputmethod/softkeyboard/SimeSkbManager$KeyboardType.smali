.class public final enum Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;
.super Ljava/lang/Enum;
.source "SimeSkbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyboardType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

.field public static final enum TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

.field public static final enum TYPE_NORMAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

.field public static final enum TYPE_ONE_HAND:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    new-instance v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    const-string v1, "TYPE_ONE_HAND"

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_ONE_HAND:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    .line 63
    new-instance v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    const-string v1, "TYPE_FLOATING"

    invoke-direct {v0, v1, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    .line 64
    new-instance v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    const-string v1, "TYPE_NORMAL"

    invoke-direct {v0, v1, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_NORMAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    .line 61
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_ONE_HAND:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_NORMAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->$VALUES:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

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
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;
    .locals 1
    .parameter "name"

    .prologue
    .line 61
    const-class v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->$VALUES:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    invoke-virtual {v0}, [Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    return-object v0
.end method
