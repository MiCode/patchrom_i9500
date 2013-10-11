.class Lcom/android/server/PVPlayReadyService$2;
.super Ljava/lang/Object;
.source "PVPlayReadyService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/PVPlayReadyService;->handleNitzTimeUpdation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PVPlayReadyService;


# direct methods
.method constructor <init>(Lcom/android/server/PVPlayReadyService;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/android/server/PVPlayReadyService$2;->this$0:Lcom/android/server/PVPlayReadyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 388
    #calls: Lcom/android/server/PVPlayReadyService;->nitzReceived()V
    invoke-static {}, Lcom/android/server/PVPlayReadyService;->access$000()V

    .line 389
    return-void
.end method
