.class Lcom/android/settings_ex/applications/RunningState$ServiceProcessComparator;
.super Ljava/lang/Object;
.source "RunningState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceProcessComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings_ex/applications/RunningState$ProcessItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/RunningState;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/RunningState;)V
    .locals 0

    .prologue
    .line 675
    iput-object p1, p0, Lcom/android/settings_ex/applications/RunningState$ServiceProcessComparator;->this$0:Lcom/android/settings_ex/applications/RunningState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings_ex/applications/RunningState$ProcessItem;Lcom/android/settings_ex/applications/RunningState$ProcessItem;)I
    .locals 6
    .parameter "object1"
    .parameter "object2"

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 677
    iget v2, p1, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mUserId:I

    iget v3, p2, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mUserId:I

    if-eq v2, v3, :cond_3

    .line 678
    iget v2, p1, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mUserId:I

    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningState$ServiceProcessComparator;->this$0:Lcom/android/settings_ex/applications/RunningState;

    iget v3, v3, Lcom/android/settings_ex/applications/RunningState;->mMyUserId:I

    if-ne v2, v3, :cond_1

    .line 695
    :cond_0
    :goto_0
    return v0

    .line 679
    :cond_1
    iget v2, p2, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mUserId:I

    iget-object v3, p0, Lcom/android/settings_ex/applications/RunningState$ServiceProcessComparator;->this$0:Lcom/android/settings_ex/applications/RunningState;

    iget v3, v3, Lcom/android/settings_ex/applications/RunningState;->mMyUserId:I

    if-ne v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    .line 680
    :cond_2
    iget v2, p1, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mUserId:I

    iget v3, p2, Lcom/android/settings_ex/applications/RunningState$BaseItem;->mUserId:I

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 682
    :cond_3
    iget-boolean v2, p1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mIsStarted:Z

    iget-boolean v3, p2, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mIsStarted:Z

    if-eq v2, v3, :cond_4

    .line 684
    iget-boolean v2, p1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mIsStarted:Z

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 686
    :cond_4
    iget-boolean v2, p1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mIsSystem:Z

    iget-boolean v3, p2, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mIsSystem:Z

    if-eq v2, v3, :cond_6

    .line 688
    iget-boolean v2, p1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mIsSystem:Z

    if-eqz v2, :cond_5

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_5
    move v1, v0

    goto :goto_1

    .line 690
    :cond_6
    iget-wide v2, p1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mActiveSince:J

    iget-wide v4, p2, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mActiveSince:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    .line 693
    iget-wide v2, p1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mActiveSince:J

    iget-wide v4, p2, Lcom/android/settings_ex/applications/RunningState$ProcessItem;->mActiveSince:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 695
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 675
    check-cast p1, Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    .end local p1
    check-cast p2, Lcom/android/settings_ex/applications/RunningState$ProcessItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/applications/RunningState$ServiceProcessComparator;->compare(Lcom/android/settings_ex/applications/RunningState$ProcessItem;Lcom/android/settings_ex/applications/RunningState$ProcessItem;)I

    move-result v0

    return v0
.end method
