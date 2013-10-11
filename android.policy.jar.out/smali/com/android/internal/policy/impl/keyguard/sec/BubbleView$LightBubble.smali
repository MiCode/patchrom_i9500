.class public Lcom/android/internal/policy/impl/keyguard/sec/BubbleView$LightBubble;
.super Landroid/widget/FrameLayout;
.source "BubbleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LightBubble"
.end annotation


# instance fields
.field private bubble:Landroid/widget/ImageView;

.field private bubbleEnvir:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

.field private mContext:Landroid/content/Context;

.field private marbling:Lcom/android/internal/policy/impl/keyguard/sec/ImageViewBlended;

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    const/4 v2, -0x2

    .line 500
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView$LightBubble;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;

    .line 501
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 502
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView$LightBubble;->mContext:Landroid/content/Context;

    .line 505
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView$LightBubble;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView$LightBubble;->bubble:Landroid/widget/ImageView;

    .line 506
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView$LightBubble;->bubble:Landroid/widget/ImageView;

    const v1, 0x108044a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 507
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView$LightBubble;->bubble:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 521
    return-void
.end method
