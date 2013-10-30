.class Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$3;
.super Ljava/lang/Object;
.source "SimeSkbKeyboardContainer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getinRightAnimation()Landroid/view/animation/TranslateAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 1412
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$3;->this$0:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1413
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1415
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1419
    return-void
.end method
