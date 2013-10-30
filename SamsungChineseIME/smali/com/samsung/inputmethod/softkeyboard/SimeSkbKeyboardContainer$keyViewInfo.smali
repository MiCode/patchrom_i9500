.class public Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;
.super Ljava/lang/Object;
.source "SimeSkbKeyboardContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "keyViewInfo"
.end annotation


# instance fields
.field public mBalloonHeight:F

.field public mBalloonWidth:F

.field public mKeyViewBottom:I

.field public mKeyViewHeight:I

.field public mKeyViewLeft:I

.field public mKeyViewRight:I

.field public mKeyViewRowHeight:I

.field public mKeyViewRowMargin:I

.field public mKeyViewTextMargin:I

.field public mKeyViewTextSize:I

.field public mKeyViewTextWidth:I

.field public mKeyViewTop:I

.field public mKeyViewWidth:I

.field final synthetic this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;


# direct methods
.method protected constructor <init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2528
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2529
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;->mKeyViewLeft:I

    .line 2530
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;->mKeyViewTop:I

    .line 2531
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;->mKeyViewRight:I

    .line 2532
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;->mKeyViewBottom:I

    .line 2533
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;->mKeyViewWidth:I

    .line 2534
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;->mKeyViewHeight:I

    .line 2535
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;->mKeyViewRowHeight:I

    .line 2536
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;->mKeyViewRowMargin:I

    .line 2537
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;->mKeyViewTextWidth:I

    .line 2538
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;->mKeyViewTextMargin:I

    .line 2539
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;->mBalloonWidth:F

    .line 2540
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;->mBalloonHeight:F

    .line 2541
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;->mKeyViewTextSize:I

    return-void
.end method
