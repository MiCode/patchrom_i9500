.class public Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;
.super Ljava/lang/Object;
.source "SimeEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/comm/SimeEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SoftKeyBalloon"
.end annotation


# instance fields
.field public heightPlus:I

.field public textSize:I

.field final synthetic this$0:Lcom/samsung/inputmethod/comm/SimeEnvironment;

.field public widthPlus:I


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/comm/SimeEnvironment;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->this$0:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
