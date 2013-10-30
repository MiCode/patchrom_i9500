.class public final enum Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;
.super Ljava/lang/Enum;
.source "SimeLanguageMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/SimeLanguageMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImeLang"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

.field public static final enum IMELANG_ENG:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

.field public static final enum IMELANG_HK:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

.field public static final enum IMELANG_KOR:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

.field public static final enum IMELANG_NONE:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

.field public static final enum IMELANG_SCHN:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

.field public static final enum IMELANG_TW:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    const-string v1, "IMELANG_SCHN"

    invoke-direct {v0, v1, v3}, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_SCHN:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 20
    new-instance v0, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    const-string v1, "IMELANG_TW"

    invoke-direct {v0, v1, v4}, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_TW:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 21
    new-instance v0, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    const-string v1, "IMELANG_HK"

    invoke-direct {v0, v1, v5}, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_HK:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 22
    new-instance v0, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    const-string v1, "IMELANG_KOR"

    invoke-direct {v0, v1, v6}, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_KOR:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 23
    new-instance v0, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    const-string v1, "IMELANG_ENG"

    invoke-direct {v0, v1, v7}, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_ENG:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 24
    new-instance v0, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    const-string v1, "IMELANG_NONE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_NONE:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 18
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_SCHN:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_TW:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_HK:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_KOR:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_ENG:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_NONE:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->$VALUES:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;
    .locals 1
    .parameter "name"

    .prologue
    .line 18
    const-class v0, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    return-object v0
.end method

.method public static values()[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->$VALUES:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    invoke-virtual {v0}, [Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    return-object v0
.end method
