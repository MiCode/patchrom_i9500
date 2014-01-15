.class Lcom/android/settings_ex/homesync/FileOperation$2;
.super Ljava/lang/Object;
.source "FileOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/homesync/FileOperation;-><init>(Landroid/app/Activity;Lcom/android/settings_ex/homesync/FileOperationProgress;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/homesync/FileOperation;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/homesync/FileOperation;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/settings_ex/homesync/FileOperation$2;->this$0:Lcom/android/settings_ex/homesync/FileOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/settings_ex/homesync/FileOperation$2;->this$0:Lcom/android/settings_ex/homesync/FileOperation;

    #getter for: Lcom/android/settings_ex/homesync/FileOperation;->futureTaskHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings_ex/homesync/FileOperation;->access$300(Lcom/android/settings_ex/homesync/FileOperation;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings_ex/homesync/FileOperation$2$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/homesync/FileOperation$2$1;-><init>(Lcom/android/settings_ex/homesync/FileOperation$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 161
    return-void
.end method
