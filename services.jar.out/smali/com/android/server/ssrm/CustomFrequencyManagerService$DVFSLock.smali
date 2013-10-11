.class Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;
.super Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
.source "CustomFrequencyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/CustomFrequencyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DVFSLock"
.end annotation


# instance fields
.field acqTime:J

.field final tag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;IILandroid/os/IBinder;Ljava/lang/String;II)V
    .locals 2
    .parameter
    .parameter "ty"
    .parameter "fq"
    .parameter "b"
    .parameter "pkgName"
    .parameter "u"
    .parameter "p"

    .prologue
    .line 1562
    iput-object p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    .line 1563
    invoke-direct/range {p0 .. p7}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;-><init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;IILandroid/os/IBinder;Ljava/lang/String;II)V

    .line 1564
    iput-object p5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->tag:Ljava/lang/String;

    .line 1565
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$DVFSLock;->acqTime:J

    .line 1566
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 0

    .prologue
    .line 1568
    invoke-super {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binderDied()V

    .line 1569
    return-void
.end method
