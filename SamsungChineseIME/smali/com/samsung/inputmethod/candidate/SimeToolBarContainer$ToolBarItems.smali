.class public final enum Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;
.super Ljava/lang/Enum;
.source "SimeToolBarContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ToolBarItems"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

.field public static final enum TOOLBAR_CLIPBOARD:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

.field public static final enum TOOLBAR_FLOATING_WINDOW:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

.field public static final enum TOOLBAR_IME_SETTING:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

.field public static final enum TOOLBAR_KEYBOARD_SETTING:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

.field public static final enum TOOLBAR_OCR:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

.field public static final enum TOOLBAR_SYMBOLS_ANGLE:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

.field public static final enum TOOLBAR_SYMBOLS_COMMON:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

.field public static final enum TOOLBAR_SYMBOLS_EMOTION:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

.field public static final enum TOOLBAR_SYMBOLS_HALF_ANGLE:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

.field public static final enum TOOLBAR_VOICE:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    const-string v1, "TOOLBAR_VOICE"

    invoke-direct {v0, v1, v3}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_VOICE:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    const-string v1, "TOOLBAR_CLIPBOARD"

    invoke-direct {v0, v1, v4}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_CLIPBOARD:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    const-string v1, "TOOLBAR_OCR"

    invoke-direct {v0, v1, v5}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_OCR:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    const-string v1, "TOOLBAR_KEYBOARD_SETTING"

    invoke-direct {v0, v1, v6}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_KEYBOARD_SETTING:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    const-string v1, "TOOLBAR_IME_SETTING"

    invoke-direct {v0, v1, v7}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_IME_SETTING:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    const-string v1, "TOOLBAR_FLOATING_WINDOW"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_FLOATING_WINDOW:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    .line 46
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    const-string v1, "TOOLBAR_SYMBOLS_COMMON"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_COMMON:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    const-string v1, "TOOLBAR_SYMBOLS_ANGLE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_ANGLE:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    const-string v1, "TOOLBAR_SYMBOLS_HALF_ANGLE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_HALF_ANGLE:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    const-string v1, "TOOLBAR_SYMBOLS_EMOTION"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_EMOTION:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    .line 43
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_VOICE:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_CLIPBOARD:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_OCR:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_KEYBOARD_SETTING:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_IME_SETTING:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_FLOATING_WINDOW:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_COMMON:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_ANGLE:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_HALF_ANGLE:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_EMOTION:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->$VALUES:[Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;
    .locals 1
    .parameter "name"

    .prologue
    .line 43
    const-class v0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    return-object v0
.end method

.method public static values()[Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->$VALUES:[Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v0}, [Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    return-object v0
.end method
