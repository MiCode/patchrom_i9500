.class Lcom/android/server/am/ActivityManagerService$5;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$native_stacks:[Ljava/lang/String;

.field final synthetic val$tracePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 3991
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$5;->val$tracePath:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$5;->val$native_stacks:[Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3994
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$5;->val$tracePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$5;->val$native_stacks:[Ljava/lang/String;

    #calls: Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/internal/os/ProcessStats;Landroid/util/SparseArray;[Ljava/lang/String;)V
    invoke-static {v0, v2, v2, v2, v1}, Lcom/android/server/am/ActivityManagerService;->access$800(Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/internal/os/ProcessStats;Landroid/util/SparseArray;[Ljava/lang/String;)V

    .line 3995
    return-void
.end method
