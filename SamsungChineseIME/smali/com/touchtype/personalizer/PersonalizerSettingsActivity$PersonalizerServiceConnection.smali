.class Lcom/touchtype/personalizer/PersonalizerSettingsActivity$PersonalizerServiceConnection;
.super Ljava/lang/Object;
.source "PersonalizerSettingsActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype/personalizer/PersonalizerSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonalizerServiceConnection"
.end annotation


# instance fields
.field private volatile mConnected:Z

.field final synthetic this$0:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;


# direct methods
.method private constructor <init>(Lcom/touchtype/personalizer/PersonalizerSettingsActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity$PersonalizerServiceConnection;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity$PersonalizerServiceConnection;->mConnected:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/touchtype/personalizer/PersonalizerSettingsActivity;Lcom/touchtype/personalizer/PersonalizerSettingsActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/touchtype/personalizer/PersonalizerSettingsActivity$PersonalizerServiceConnection;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsActivity;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized isConnected()Z
    .locals 1

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity$PersonalizerServiceConnection;->mConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "service"

    .prologue
    .line 88
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity$PersonalizerServiceConnection;->mConnected:Z

    move-object v0, p2

    .line 91
    check-cast v0, Lcom/touchtype/personalizer/PersonalizerService$LocalBinder;

    .line 92
    .local v0, binder:Lcom/touchtype/personalizer/PersonalizerService$LocalBinder;
    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity$PersonalizerServiceConnection;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-virtual {v0}, Lcom/touchtype/personalizer/PersonalizerService$LocalBinder;->getService()Lcom/touchtype/personalizer/PersonalizerService;

    move-result-object v2

    #setter for: Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mService:Lcom/touchtype/personalizer/PersonalizerService;
    invoke-static {v1, v2}, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->access$102(Lcom/touchtype/personalizer/PersonalizerSettingsActivity;Lcom/touchtype/personalizer/PersonalizerService;)Lcom/touchtype/personalizer/PersonalizerService;

    .line 93
    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity$PersonalizerServiceConnection;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    #calls: Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->setPreferenceState()V
    invoke-static {v1}, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->access$200(Lcom/touchtype/personalizer/PersonalizerSettingsActivity;)V

    .line 95
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity$PersonalizerServiceConnection;->mConnected:Z

    .line 100
    return-void
.end method
