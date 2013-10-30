.class public final enum Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;
.super Ljava/lang/Enum;
.source "SimeKeyboardType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Language"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

.field public static final enum EN:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

.field public static final enum KOR:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

.field public static final enum UNKNOWN:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

.field public static final enum ZH_CN:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

.field public static final enum ZH_HK:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

.field public static final enum ZH_TW:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    new-instance v0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    const-string v1, "ZH_CN"

    invoke-direct {v0, v1, v3}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;->ZH_CN:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    new-instance v0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    const-string v1, "ZH_HK"

    invoke-direct {v0, v1, v4}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;->ZH_HK:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    new-instance v0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    const-string v1, "ZH_TW"

    invoke-direct {v0, v1, v5}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;->ZH_TW:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    new-instance v0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    const-string v1, "EN"

    invoke-direct {v0, v1, v6}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;->EN:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    new-instance v0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    const-string v1, "KOR"

    invoke-direct {v0, v1, v7}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;->KOR:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    new-instance v0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;->UNKNOWN:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    .line 42
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;->ZH_CN:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;->ZH_HK:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;->ZH_TW:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;->EN:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;->KOR:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;->UNKNOWN:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;->$VALUES:[Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;
    .locals 1
    .parameter "name"

    .prologue
    .line 42
    const-class v0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    return-object v0
.end method

.method public static values()[Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;->$VALUES:[Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    invoke-virtual {v0}, [Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardType$Language;

    return-object v0
.end method
