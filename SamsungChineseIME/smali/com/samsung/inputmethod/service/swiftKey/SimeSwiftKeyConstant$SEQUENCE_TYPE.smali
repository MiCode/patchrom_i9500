.class public final enum Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant$SEQUENCE_TYPE;
.super Ljava/lang/Enum;
.source "SimeSwiftKeyConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SEQUENCE_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant$SEQUENCE_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant$SEQUENCE_TYPE;

.field public static final enum MESSAGE_START:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant$SEQUENCE_TYPE;

.field public static final enum NEWLINE_START:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant$SEQUENCE_TYPE;

.field public static final enum NORMAL:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant$SEQUENCE_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant$SEQUENCE_TYPE;

    const-string v1, "MESSAGE_START"

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant$SEQUENCE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant$SEQUENCE_TYPE;->MESSAGE_START:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant$SEQUENCE_TYPE;

    .line 32
    new-instance v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant$SEQUENCE_TYPE;

    const-string v1, "NEWLINE_START"

    invoke-direct {v0, v1, v3}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant$SEQUENCE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant$SEQUENCE_TYPE;->NEWLINE_START:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant$SEQUENCE_TYPE;

    .line 33
    new-instance v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant$SEQUENCE_TYPE;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v4}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant$SEQUENCE_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant$SEQUENCE_TYPE;->NORMAL:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant$SEQUENCE_TYPE;

    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant$SEQUENCE_TYPE;

    sget-object v1, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant$SEQUENCE_TYPE;->MESSAGE_START:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant$SEQUENCE_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant$SEQUENCE_TYPE;->NEWLINE_START:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant$SEQUENCE_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant$SEQUENCE_TYPE;->NORMAL:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant$SEQUENCE_TYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant$SEQUENCE_TYPE;->$VALUES:[Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant$SEQUENCE_TYPE;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant$SEQUENCE_TYPE;
    .locals 1
    .parameter "name"

    .prologue
    .line 30
    const-class v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant$SEQUENCE_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant$SEQUENCE_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant$SEQUENCE_TYPE;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant$SEQUENCE_TYPE;->$VALUES:[Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant$SEQUENCE_TYPE;

    invoke-virtual {v0}, [Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant$SEQUENCE_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyConstant$SEQUENCE_TYPE;

    return-object v0
.end method
