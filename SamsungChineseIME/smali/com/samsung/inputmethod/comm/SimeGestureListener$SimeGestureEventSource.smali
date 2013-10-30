.class public final enum Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;
.super Ljava/lang/Enum;
.source "SimeGestureListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/comm/SimeGestureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SimeGestureEventSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;

.field public static final enum SimeCandHorContainer:Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;

.field public static final enum SimeSkbKeyboardContainer:Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 375
    new-instance v0, Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;

    const-string v1, "SimeSkbKeyboardContainer"

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;->SimeSkbKeyboardContainer:Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;

    new-instance v0, Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;

    const-string v1, "SimeCandHorContainer"

    invoke-direct {v0, v1, v3}, Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;->SimeCandHorContainer:Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;

    .line 374
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;

    sget-object v1, Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;->SimeSkbKeyboardContainer:Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;->SimeCandHorContainer:Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;->$VALUES:[Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;

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
    .line 374
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;
    .locals 1
    .parameter "name"

    .prologue
    .line 374
    const-class v0, Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;

    return-object v0
.end method

.method public static values()[Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;
    .locals 1

    .prologue
    .line 374
    sget-object v0, Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;->$VALUES:[Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;

    invoke-virtual {v0}, [Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;

    return-object v0
.end method
