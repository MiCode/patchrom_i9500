.class public Lcom/android/internal/policy/impl/keyguard/sec/BubbleView$QuintEaseOut;
.super Ljava/lang/Object;
.source "BubbleView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QuintEaseOut"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;)V
    .locals 0

    .prologue
    .line 524
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView$QuintEaseOut;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2
    .parameter "input"

    .prologue
    const/high16 v1, 0x3f80

    .line 526
    div-float v0, p1, v1

    sub-float p1, v0, v1

    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    return v0
.end method
