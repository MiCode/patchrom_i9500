.class public final enum Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey$Orientation;
.super Ljava/lang/Enum;
.source "SimeSkbUnionKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Orientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey$Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey$Orientation;

.field public static final enum UNITE_HORIZONTAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey$Orientation;

.field public static final enum UNITE_VERTICAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey$Orientation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey$Orientation;

    const-string v1, "UNITE_VERTICAL"

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey$Orientation;->UNITE_VERTICAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey$Orientation;

    new-instance v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey$Orientation;

    const-string v1, "UNITE_HORIZONTAL"

    invoke-direct {v0, v1, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey$Orientation;->UNITE_HORIZONTAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey$Orientation;

    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey$Orientation;

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey$Orientation;->UNITE_VERTICAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey$Orientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey$Orientation;->UNITE_HORIZONTAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey$Orientation;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey$Orientation;->$VALUES:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey$Orientation;

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
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey$Orientation;
    .locals 1
    .parameter "name"

    .prologue
    .line 45
    const-class v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey$Orientation;

    return-object v0
.end method

.method public static values()[Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey$Orientation;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey$Orientation;->$VALUES:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey$Orientation;

    invoke-virtual {v0}, [Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey$Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey$Orientation;

    return-object v0
.end method
