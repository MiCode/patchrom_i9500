.class Lcom/android/settings_ex/homesync/FileOperation$2$1;
.super Ljava/lang/Object;
.source "FileOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/homesync/FileOperation$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/homesync/FileOperation$2;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/homesync/FileOperation$2;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/settings_ex/homesync/FileOperation$2$1;->this$1:Lcom/android/settings_ex/homesync/FileOperation$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/settings_ex/homesync/FileOperation$2$1;->this$1:Lcom/android/settings_ex/homesync/FileOperation$2;

    iget-object v0, v0, Lcom/android/settings_ex/homesync/FileOperation$2;->this$0:Lcom/android/settings_ex/homesync/FileOperation;

    iget-object v1, p0, Lcom/android/settings_ex/homesync/FileOperation$2$1;->this$1:Lcom/android/settings_ex/homesync/FileOperation$2;

    iget-object v1, v1, Lcom/android/settings_ex/homesync/FileOperation$2;->this$0:Lcom/android/settings_ex/homesync/FileOperation;

    iget-object v1, v1, Lcom/android/settings_ex/homesync/FileOperation;->operationException:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/homesync/FileOperation;->done(Ljava/lang/Exception;)V

    .line 157
    iget-object v0, p0, Lcom/android/settings_ex/homesync/FileOperation$2$1;->this$1:Lcom/android/settings_ex/homesync/FileOperation$2;

    iget-object v0, v0, Lcom/android/settings_ex/homesync/FileOperation$2;->this$0:Lcom/android/settings_ex/homesync/FileOperation;

    invoke-virtual {v0}, Lcom/android/settings_ex/homesync/FileOperation;->destroyNotification()V

    .line 158
    return-void
.end method
