.class Lcom/sec/knox/container/EnterpriseContainerService$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "EnterpriseContainerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/EnterpriseContainerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field containerId:I

.field finished:Z

.field result:I

.field final synthetic this$0:Lcom/sec/knox/container/EnterpriseContainerService;


# direct methods
.method public constructor <init>(Lcom/sec/knox/container/EnterpriseContainerService;I)V
    .locals 1
    .parameter
    .parameter "cid"

    .prologue
    const/4 v0, 0x0

    .line 2470
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageDeleteObserver;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    .line 2471
    iput-boolean v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageDeleteObserver;->finished:Z

    .line 2472
    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageDeleteObserver;->result:I

    .line 2473
    iput p2, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageDeleteObserver;->containerId:I

    .line 2474
    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 1
    .parameter "packageName"
    .parameter "returnCode"

    .prologue
    .line 2477
    monitor-enter p0

    .line 2478
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageDeleteObserver;->finished:Z

    .line 2479
    iput p2, p0, Lcom/sec/knox/container/EnterpriseContainerService$PackageDeleteObserver;->result:I

    .line 2480
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2481
    monitor-exit p0

    .line 2482
    return-void

    .line 2481
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
