.class Lcom/android/settings_ex/RadioInfo$6;
.super Ljava/lang/Thread;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/RadioInfo;->updatePingState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/RadioInfo;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$updatePingResults:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/RadioInfo;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 790
    iput-object p1, p0, Lcom/android/settings_ex/RadioInfo$6;->this$0:Lcom/android/settings_ex/RadioInfo;

    iput-object p2, p0, Lcom/android/settings_ex/RadioInfo$6;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/settings_ex/RadioInfo$6;->val$updatePingResults:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 793
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo$6;->this$0:Lcom/android/settings_ex/RadioInfo;

    #calls: Lcom/android/settings_ex/RadioInfo;->httpClientTest()V
    invoke-static {v0}, Lcom/android/settings_ex/RadioInfo;->access$3100(Lcom/android/settings_ex/RadioInfo;)V

    .line 794
    iget-object v0, p0, Lcom/android/settings_ex/RadioInfo$6;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings_ex/RadioInfo$6;->val$updatePingResults:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 795
    return-void
.end method
