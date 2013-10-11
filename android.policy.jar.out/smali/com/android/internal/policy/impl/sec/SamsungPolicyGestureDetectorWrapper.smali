.class public Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;
.super Ljava/lang/Object;
.source "SamsungPolicyGestureDetectorWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper$SamsungPolicyOnGestureListener;,
        Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper$OnFinishedListener;
    }
.end annotation


# instance fields
.field private mDetector:Landroid/view/GestureDetector;

.field private mListener:Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper$SamsungPolicyOnGestureListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper$SamsungPolicyOnGestureListener;)V
    .locals 2
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;->mListener:Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper$SamsungPolicyOnGestureListener;

    .line 43
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;->mListener:Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper$SamsungPolicyOnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;->mDetector:Landroid/view/GestureDetector;

    .line 44
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 47
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 48
    .local v0, onTouchEvent:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 49
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;->mListener:Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper$SamsungPolicyOnGestureListener;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper$SamsungPolicyOnGestureListener;->onFinished(Landroid/view/MotionEvent;)V

    .line 51
    :cond_0
    return v0
.end method

.method public setIsLongpressEnabled(Z)V
    .locals 1
    .parameter "isLongpressEnabled"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 56
    return-void
.end method
