.class public Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$BackInterpolator;
.super Ljava/lang/Object;
.source "LensFlareView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BackInterpolator"
.end annotation


# instance fields
.field private overshot:F

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;

.field private type:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;F)V
    .locals 0
    .parameter
    .parameter "type"
    .parameter "overshot"

    .prologue
    .line 1057
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$BackInterpolator;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1058
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$BackInterpolator;->type:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;

    .line 1059
    iput p3, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$BackInterpolator;->overshot:F

    .line 1060
    return-void
.end method

.method private in(FF)F
    .locals 2
    .parameter "t"
    .parameter "o"

    .prologue
    .line 1076
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 1077
    const p2, 0x3fd9cd60

    .line 1079
    :cond_0
    mul-float v0, p1, p1

    const/high16 v1, 0x3f80

    add-float/2addr v1, p2

    mul-float/2addr v1, p1

    sub-float/2addr v1, p2

    mul-float/2addr v0, v1

    return v0
.end method

.method private inout(FF)F
    .locals 8
    .parameter "t"
    .parameter "o"

    .prologue
    const/high16 v7, 0x3f00

    const-wide v5, 0x3ff8666666666666L

    const/high16 v4, 0x4000

    const/high16 v3, 0x3f80

    .line 1090
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 1091
    const p2, 0x3fd9cd60

    .line 1093
    :cond_0
    mul-float/2addr p1, v4

    .line 1094
    cmpg-float v0, p1, v3

    if-gez v0, :cond_1

    .line 1095
    mul-float v0, p1, p1

    float-to-double v1, p2

    mul-double/2addr v1, v5

    double-to-float p2, v1

    add-float v1, p2, v3

    mul-float/2addr v1, p1

    sub-float/2addr v1, p2

    mul-float/2addr v0, v1

    mul-float/2addr v0, v7

    .line 1097
    :goto_0
    return v0

    :cond_1
    sub-float/2addr p1, v4

    mul-float v0, p1, p1

    float-to-double v1, p2

    mul-double/2addr v1, v5

    double-to-float p2, v1

    add-float v1, p2, v3

    mul-float/2addr v1, p1

    add-float/2addr v1, p2

    mul-float/2addr v0, v1

    add-float/2addr v0, v4

    mul-float/2addr v0, v7

    goto :goto_0
.end method

.method private out(FF)F
    .locals 3
    .parameter "t"
    .parameter "o"

    .prologue
    const/high16 v2, 0x3f80

    .line 1083
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 1084
    const p2, 0x3fd9cd60

    .line 1086
    :cond_0
    sub-float/2addr p1, v2

    mul-float v0, p1, p1

    add-float v1, p2, v2

    mul-float/2addr v1, p1

    add-float/2addr v1, p2

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    return v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2
    .parameter "t"

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$BackInterpolator;->type:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;->IN:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;

    if-ne v0, v1, :cond_0

    .line 1064
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$BackInterpolator;->overshot:F

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$BackInterpolator;->in(FF)F

    move-result v0

    .line 1072
    :goto_0
    return v0

    .line 1066
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$BackInterpolator;->type:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;->OUT:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;

    if-ne v0, v1, :cond_1

    .line 1067
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$BackInterpolator;->overshot:F

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$BackInterpolator;->out(FF)F

    move-result v0

    goto :goto_0

    .line 1069
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$BackInterpolator;->type:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;->INOUT:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$EasingType;

    if-ne v0, v1, :cond_2

    .line 1070
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$BackInterpolator;->overshot:F

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$BackInterpolator;->inout(FF)F

    move-result v0

    goto :goto_0

    .line 1072
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
