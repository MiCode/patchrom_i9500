.class public final enum Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;
.super Ljava/lang/Enum;
.source "SimeSkbMiniPopWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MiniPopWindowType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

.field public static final enum DOMAIN:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

.field public static final enum SMILEY:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

.field public static final enum WEBSITE:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    new-instance v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    const-string v1, "SMILEY"

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->SMILEY:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    .line 65
    new-instance v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    const-string v1, "DOMAIN"

    invoke-direct {v0, v1, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->DOMAIN:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    .line 66
    new-instance v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    const-string v1, "WEBSITE"

    invoke-direct {v0, v1, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->WEBSITE:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    .line 63
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->SMILEY:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->DOMAIN:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->WEBSITE:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->$VALUES:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

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
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;
    .locals 1
    .parameter "name"

    .prologue
    .line 63
    const-class v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->$VALUES:[Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    invoke-virtual {v0}, [Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow$MiniPopWindowType;

    return-object v0
.end method
