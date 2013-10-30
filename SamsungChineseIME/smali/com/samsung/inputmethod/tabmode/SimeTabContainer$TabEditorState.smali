.class public final enum Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;
.super Ljava/lang/Enum;
.source "SimeTabContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/tabmode/SimeTabContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TabEditorState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;

.field public static final enum STATE_DELET:Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;

.field public static final enum STATE_DELET_DISABLE:Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;

.field public static final enum STATE_IDLE:Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    new-instance v0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;

    const-string v1, "STATE_IDLE"

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;->STATE_IDLE:Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;

    new-instance v0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;

    const-string v1, "STATE_DELET"

    invoke-direct {v0, v1, v3}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;->STATE_DELET:Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;

    new-instance v0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;

    const-string v1, "STATE_DELET_DISABLE"

    invoke-direct {v0, v1, v4}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;->STATE_DELET_DISABLE:Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;

    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;

    sget-object v1, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;->STATE_IDLE:Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;->STATE_DELET:Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;->STATE_DELET_DISABLE:Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;->$VALUES:[Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;

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
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;
    .locals 1
    .parameter "name"

    .prologue
    .line 64
    const-class v0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;

    return-object v0
.end method

.method public static values()[Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;->$VALUES:[Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;

    invoke-virtual {v0}, [Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;

    return-object v0
.end method
