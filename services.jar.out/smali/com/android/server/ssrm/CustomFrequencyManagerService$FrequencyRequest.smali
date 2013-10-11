.class Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;
.super Ljava/lang/Object;
.source "CustomFrequencyManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/CustomFrequencyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrequencyRequest"
.end annotation


# instance fields
.field final binder:Landroid/os/IBinder;

.field final frequency:I

.field final pid:I

.field final pkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

.field final type:I

.field final uid:I


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;IILandroid/os/IBinder;Ljava/lang/String;II)V
    .locals 2
    .parameter
    .parameter "ty"
    .parameter "fq"
    .parameter "b"
    .parameter "pkg"
    .parameter "u"
    .parameter "p"

    .prologue
    .line 1178
    iput-object p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    .line 1179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1180
    iput p2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    .line 1181
    iput p3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    .line 1182
    iput-object p4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    .line 1183
    iput-object p5, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    .line 1184
    iput p6, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->uid:I

    .line 1185
    iput p7, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pid:I

    .line 1188
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p4, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1192
    :goto_0
    return-void

    .line 1189
    :catch_0
    move-exception v0

    .line 1190
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binderDied()V

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 5

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    #getter for: Lcom/android/server/ssrm/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;
    invoke-static {v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->access$200(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequestList;

    move-result-object v1

    monitor-enter v1

    .line 1196
    :try_start_0
    invoke-static {}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1197
    const-string v0, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CustomFrequencyManager:: binderDied. package = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    :cond_0
    iget v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/16 v2, 0x9

    if-ne v0, v2, :cond_3

    .line 1202
    :cond_1
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iget v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseGPU(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 1213
    :cond_2
    :goto_0
    monitor-exit v1

    .line 1214
    return-void

    .line 1203
    :cond_3
    iget v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/16 v2, 0xa

    if-eq v0, v2, :cond_4

    iget v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/16 v2, 0xb

    if-ne v0, v2, :cond_5

    .line 1205
    :cond_4
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iget v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseSysBus(ILandroid/os/IBinder;Ljava/lang/String;)V

    goto :goto_0

    .line 1213
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1206
    :cond_5
    :try_start_1
    iget v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_6

    iget v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_7

    .line 1208
    :cond_6
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iget v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseCPUCore(ILandroid/os/IBinder;Ljava/lang/String;)V

    goto :goto_0

    .line 1209
    :cond_7
    iget v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v2, 0x7

    if-eq v0, v2, :cond_8

    iget v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    .line 1211
    :cond_8
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->releaseDVFSLock(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
