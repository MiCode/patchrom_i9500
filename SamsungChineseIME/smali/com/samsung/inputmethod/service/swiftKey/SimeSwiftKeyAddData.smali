.class public Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyAddData;
.super Ljava/lang/Object;
.source "SimeSwiftKeyAddData.java"


# instance fields
.field public mInputChar:C

.field public mKeyStatus:I

.field public mPoint:Lcom/touchtype_fluency/Point;


# direct methods
.method public constructor <init>(C)V
    .locals 2
    .parameter "inputChar"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyAddData;->mPoint:Lcom/touchtype_fluency/Point;

    .line 10
    iput v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyAddData;->mKeyStatus:I

    .line 13
    iput-char p1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyAddData;->mInputChar:C

    .line 14
    iput-object v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyAddData;->mPoint:Lcom/touchtype_fluency/Point;

    .line 15
    iput v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyAddData;->mKeyStatus:I

    .line 16
    return-void
.end method

.method public constructor <init>(CLcom/touchtype_fluency/Point;)V
    .locals 2
    .parameter "inputChar"
    .parameter "point"

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyAddData;->mPoint:Lcom/touchtype_fluency/Point;

    .line 10
    iput v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyAddData;->mKeyStatus:I

    .line 19
    iput-char p1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyAddData;->mInputChar:C

    .line 20
    iput-object p2, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyAddData;->mPoint:Lcom/touchtype_fluency/Point;

    .line 21
    iput v1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyAddData;->mKeyStatus:I

    .line 22
    return-void
.end method


# virtual methods
.method public isShiftPressed()Z
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyAddData;->mKeyStatus:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
