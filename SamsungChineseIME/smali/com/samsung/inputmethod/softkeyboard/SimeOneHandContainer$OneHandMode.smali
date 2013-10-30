.class public final enum Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;
.super Ljava/lang/Enum;
.source "SimeOneHandContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OneHandMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

.field public static final enum LeftHandMode:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

.field public static final enum RightHandMode:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    new-instance v0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    const-string v1, "LeftHandMode"

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;->LeftHandMode:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    .line 58
    new-instance v0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    const-string v1, "RightHandMode"

    invoke-direct {v0, v1, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;->RightHandMode:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;->LeftHandMode:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;->RightHandMode:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;->$VALUES:[Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

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
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 56
    const-class v0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    return-object v0
.end method

.method public static values()[Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;->$VALUES:[Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    invoke-virtual {v0}, [Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    return-object v0
.end method
