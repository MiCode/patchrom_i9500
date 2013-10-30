.class public final enum Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;
.super Ljava/lang/Enum;
.source "SimeCompView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/composing/SimeCompView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ComposingStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

.field public static final enum EDIT_COMPOSING:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

.field public static final enum SHOW_COMPOSING:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

.field public static final enum SHOW_STRING_LOWERCASE:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    new-instance v0, Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    const-string v1, "SHOW_COMPOSING"

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;->SHOW_COMPOSING:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    new-instance v0, Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    const-string v1, "SHOW_STRING_LOWERCASE"

    invoke-direct {v0, v1, v3}, Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;->SHOW_STRING_LOWERCASE:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    new-instance v0, Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    const-string v1, "EDIT_COMPOSING"

    invoke-direct {v0, v1, v4}, Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;->EDIT_COMPOSING:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    .line 88
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    sget-object v1, Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;->SHOW_COMPOSING:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;->SHOW_STRING_LOWERCASE:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;->EDIT_COMPOSING:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;->$VALUES:[Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

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
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 88
    const-class v0, Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    return-object v0
.end method

.method public static values()[Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;->$VALUES:[Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    invoke-virtual {v0}, [Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    return-object v0
.end method
