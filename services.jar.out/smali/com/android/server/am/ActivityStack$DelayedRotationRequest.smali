.class Lcom/android/server/am/ActivityStack$DelayedRotationRequest;
.super Ljava/lang/Object;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DelayedRotationRequest"
.end annotation


# instance fields
.field delayMillis:I

.field next:Lcom/android/server/am/ActivityRecord;

.field requested:Z

.field requestor:Lcom/android/server/am/ActivityRecord;

.field final synthetic this$0:Lcom/android/server/am/ActivityStack;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;I)V
    .locals 1
    .parameter
    .parameter "_requestor"
    .parameter "_next"
    .parameter "_delayMillis"

    .prologue
    .line 7494
    iput-object p1, p0, Lcom/android/server/am/ActivityStack$DelayedRotationRequest;->this$0:Lcom/android/server/am/ActivityStack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7495
    iput-object p2, p0, Lcom/android/server/am/ActivityStack$DelayedRotationRequest;->requestor:Lcom/android/server/am/ActivityRecord;

    .line 7496
    iput-object p3, p0, Lcom/android/server/am/ActivityStack$DelayedRotationRequest;->next:Lcom/android/server/am/ActivityRecord;

    .line 7497
    iput p4, p0, Lcom/android/server/am/ActivityStack$DelayedRotationRequest;->delayMillis:I

    .line 7498
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStack$DelayedRotationRequest;->requested:Z

    .line 7499
    return-void
.end method
