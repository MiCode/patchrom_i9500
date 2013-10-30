.class Lcom/touchtype/personalizer/PersonalizerSettingsActivity$PersonalizerStatusWatcher;
.super Ljava/lang/Object;
.source "PersonalizerSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype/personalizer/PersonalizerSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonalizerStatusWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;


# direct methods
.method private constructor <init>(Lcom/touchtype/personalizer/PersonalizerSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity$PersonalizerStatusWatcher;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/touchtype/personalizer/PersonalizerSettingsActivity;Lcom/touchtype/personalizer/PersonalizerSettingsActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/touchtype/personalizer/PersonalizerSettingsActivity$PersonalizerStatusWatcher;-><init>(Lcom/touchtype/personalizer/PersonalizerSettingsActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 116
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity$PersonalizerStatusWatcher;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    #getter for: Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mConnection:Lcom/touchtype/personalizer/PersonalizerSettingsActivity$PersonalizerServiceConnection;
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->access$300(Lcom/touchtype/personalizer/PersonalizerSettingsActivity;)Lcom/touchtype/personalizer/PersonalizerSettingsActivity$PersonalizerServiceConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/touchtype/personalizer/PersonalizerSettingsActivity$PersonalizerServiceConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity$PersonalizerStatusWatcher;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    #calls: Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->setPreferenceState()V
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->access$200(Lcom/touchtype/personalizer/PersonalizerSettingsActivity;)V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity$PersonalizerStatusWatcher;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    #getter for: Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mWatcherHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->access$500(Lcom/touchtype/personalizer/PersonalizerSettingsActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerSettingsActivity$PersonalizerStatusWatcher;->this$0:Lcom/touchtype/personalizer/PersonalizerSettingsActivity;

    #getter for: Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->mTimedTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/touchtype/personalizer/PersonalizerSettingsActivity;->access$400(Lcom/touchtype/personalizer/PersonalizerSettingsActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 120
    return-void
.end method
