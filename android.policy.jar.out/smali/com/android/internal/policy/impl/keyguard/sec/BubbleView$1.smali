.class Lcom/android/internal/policy/impl/keyguard/sec/BubbleView$1;
.super Ljava/lang/Object;
.source "BubbleView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->setAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;

    #calls: Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->animatedFloat()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;)V

    .line 294
    return-void
.end method
